import csv
import time
import random
from datetime import datetime, timedelta

# Define the path to your CSV file
filename = "ParkingDataset.csv"
fields = ['Parking Garage', 'Parking Slot', 'Availability', 'Day', 'Time']

def update_parking_availability(day, current_time, slot_id):
    # Convert string time to datetime object
    time_obj = datetime.strptime(current_time, '%H:%M')

    # Use the parking slot ID to seed the random number generator for unique results per slot
    random.seed(hash(slot_id))

    # On weekends, increase the chance of finding open spots
    if day in ['Saturday', 'Sunday']:
        # More likely to be open
        return random.choices([0, 1], weights=[0.7, 0.3], k=1)[0]

    # On weekdays from 8:00 to 15:00, greatly reduce the number of open spots
    if time_obj.hour >= 8 and time_obj.hour < 15:
        # Spot is likely taken, with a higher chance of being taken
        return random.choices([0, 1], weights=[0.2, 0.8], k=1)[0]
    else:
        # Outside of peak hours, randomly decide to open up some spots
        return random.choices([0, 1], weights=[0.5, 0.5], k=1)[0]

def read_and_update_csv():
    # Read the existing data
    with open(filename, 'r') as csvfile:
        reader = csv.DictReader(csvfile)
        rows = list(reader)

    # Update time and availability
    new_rows = []
    for row in rows:
        current_day = row['Day']
        current_time = row['Time']
        parking_slot = row['Parking Slot']
        # Increment the time by one hour
        time_obj = datetime.strptime(current_time, '%H:%M') + timedelta(hours=1)
        new_time = time_obj.strftime('%H:%M')
        # If it reaches midnight, increment the day
        if new_time == '00:00':
            weekday_index = (datetime.strptime(current_day, '%A') + timedelta(days=1)).weekday()
            current_day = datetime.strptime(str(weekday_index), '%w').strftime('%A')
        # Update availability based on the new time and day
        new_availability = update_parking_availability(current_day, new_time, parking_slot)
        row['Time'] = new_time
        row['Day'] = current_day
        row['Availability'] = new_availability
        new_rows.append(row)

    # Write the updated data back to the CSV
    with open(filename, 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fields)
        writer.writeheader()
        writer.writerows(new_rows)

def main():
    while True:
        read_and_update_csv()
        print("Updated at:", datetime.now())
        time.sleep(10)  # Update every 10 seconds

if __name__ == "__main__":
    main()
