import csv

# Define the headers for the CSV file
fields = ['Parking Garage', 'Parking Slot', 'Availability', 'Day', 'Time']

filename = "ParkingDataset.csv"

# Create the data structure for the parking Parking Garage information
mydict = [
    {'Parking Garage': 'Elm', 'Parking Slot': 'A1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'A2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'A3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'A4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'A5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'A6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'B1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'B2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'B3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'B4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'B5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'B6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'C1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'C2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'C3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'C4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'C5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'C6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'D1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'D2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'D3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'D4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'D5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'D6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'E1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'E2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'E3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'E4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'E5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Elm', 'Parking Slot': 'E6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'A1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'A2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'A3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'A4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'A5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'A6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'B1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'B2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'B3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'B4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'B5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'B6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'C1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'C2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'C3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'C4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'C5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'C6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'D1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'D2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'D3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'D4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'D5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'D6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'E1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'E2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'E3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'E4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'E5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'E6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'F1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'F2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'F3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'F4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'F5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'ASP', 'Parking Slot': 'F6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'A1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'A2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'A3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'A4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'A5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'A6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'B1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'B2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'B3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'B4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'B5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'B6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'C1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'C2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'C3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'C4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'C5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'C6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'D1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'D2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'D3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'D4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'D5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'D6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'E1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'E2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'E3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'E4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'E5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'E6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'F1', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'F2', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'F3', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'F4', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'F5', 'Availability': 1, 'Day': 'Monday', 'Time': '8:00'},
    {'Parking Garage': 'Jenkins', 'Parking Slot': 'F6', 'Availability': 0, 'Day': 'Monday', 'Time': '8:00'}
]


# Write the data to a CSV file
with open(filename, 'w') as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=fields)
    writer.writeheader()
    writer.writerows(mydict)

