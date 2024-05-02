import pandas as pd
import numpy as np
import time
from datetime import datetime, timedelta

filename = "/Users/AnNguyen/Desktop/ParkFindr/ParkingSWE/CSVData/ParkingDataset.csv"

# Load the CSV file into a DataFrame
df = pd.read_csv(filename)

# Function to update availability based on the time of day and day of the week
def update_availability(row, current_time):
    hour = current_time.hour
    day = current_time.strftime("%A")
    # 0 = Empty Parking Slot
    # 1 = Taken Parking Slot
    if day in ['Saturday', 'Sunday']:
        return np.random.choice([0, 1], p=[0.8, 0.2])
    elif 8 <= hour < 15:
        return np.random.choice([0, 1], p=[0.3, 0.7])
    else:
        return np.random.choice([0, 1], p=[0.8, 0.2])

def simulate():
    current_time = datetime.strptime(df['Time'].iloc[0] + " " + df['Day'].iloc[0], "%H:%M %A")
    while True:
        # Update time for all entries
        current_time += timedelta(hours=1)
        df['Time'] = current_time.strftime("%H:%M")
        df['Day'] = current_time.strftime("%A")

        # Update availability for each entry
        df['Availability'] = df.apply(update_availability, args=(current_time,), axis=1)

        # Save updated DataFrame back to CSV
        df.to_csv(filename, index=False)

        # Print updated DataFrame (optional)
        print(df)

        # Sleep for 10 seconds
        time.sleep(10)

simulate()
