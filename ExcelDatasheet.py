import pandas as pd
import datetime
import random

# Sample data
data = {
    'lot_id': [1, 1, 2],
    'floor': [1, 2, 1],
    'timestamp': [datetime.datetime.now(), datetime.datetime.now(), datetime.datetime.now()],
    'day_of_week': [datetime.datetime.now().weekday(), datetime.datetime.now().weekday(), datetime.datetime.now().weekday()],
    'year': [datetime.datetime.now().year, datetime.datetime.now().year, datetime.datetime.now().year],
    'month': [datetime.datetime.now().month, datetime.datetime.now().month, datetime.datetime.now().month],
    'day': [datetime.datetime.now().day, datetime.datetime.now().day, datetime.datetime.now().day],
    'hour': [datetime.datetime.now().hour, datetime.datetime.now().hour, datetime.datetime.now().hour],
    'minute': [datetime.datetime.now().minute, datetime.datetime.now().minute, datetime.datetime.now().minute],
    'second': [datetime.datetime.now().second, datetime.datetime.now().second, datetime.datetime.now().second],
    'reported_vacant_spots': [20, 15, 25],
    'floor_total_spots': [30, 30, 30],
    'lot_total_spots': [60, 60, 30],
    'floor_type': [1, 2, 3],
    'temperature': [25, 26, 24],
    'precipitation': [0, 0.2, 0],
    'wind_speed': [10, 12, 8],
    'is_game_day': [True, False, True],
    'holiday': [False, True, False],
    'vacant_spots': [10, 15, 5]
}

# Create a DataFrame
df = pd.DataFrame(data)

# Generate more sample data with 1000 rows
num_rows_large = 1000  # Number of rows to generate
lot_ids = [1, 2, 3, 4, 5]  # Example lot IDs
floors = [1, 2, 3]  # Example floor numbers
floor_types = [1, 2, 3, 4, 5, 6, 7]  # Example floor types

# Randomly generate data for each row
random_data_large = []
for _ in range(num_rows_large):
    timestamp = datetime.datetime.now() - datetime.timedelta(minutes=random.randint(0, 60 * 24 * 7))  # Random timestamp within the last week
    random_data_large.append({
        'lot_id': random.choice(lot_ids),
        'floor': random.choice(floors),
        'timestamp': timestamp,
        'day_of_week': timestamp.weekday(),
        'year': timestamp.year,
        'month': timestamp.month,
        'day': timestamp.day,
        'hour': timestamp.hour,
        'minute': timestamp.minute,
        'second': timestamp.second,
        'reported_vacant_spots': random.randint(0, 30),
        'floor_total_spots': 30,
        'lot_total_spots': 90,
        'floor_type': random.choice(floor_types),
        'temperature': random.randint(20, 30),
        'precipitation': random.random(),
        'wind_speed': random.randint(5, 15),
        'is_game_day': random.choice([True, False]),
        'holiday': random.choice([True, False]),
        'vacant_spots': random.randint(0, 30)
    })

# Create a DataFrame with the generated data
df_random_large = pd.DataFrame(random_data_large)

# Append the new data to the original DataFrame
df_combined_large = pd.concat([df, df_random_large])

# Save to Excel file
excel_path_1000_rows = 'FindPark_1000_Rows_Sample_Data.xlsx'
df_combined_large.to_excel(excel_path_1000_rows, index=False)

print(f'Sample Excel file with 1000 rows has been created: {excel_path_1000_rows}')
