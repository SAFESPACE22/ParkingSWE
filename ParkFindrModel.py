# load dataset

# shuffle dataset

# normalize dataset

# train test split

# create model and train

# evaluate model

# hyperparameter tuning

# make predictions

# save model

import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LinearRegression, Ridge, Lasso, ElasticNet
from sklearn.tree import DecisionTreeRegressor
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor
from xgboost import XGBRegressor
from lightgbm import LGBMRegressor
# from catboost import CatBoostRegressor
import pickle
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score
from datetime import datetime, timedelta



""" 
The purpose of this script is to create a model that can predict the number of vacant parking spots on a floor of a parking garage. 
The model will be trained on a dataset of parking garage floor data and will be evaluated using a test set. 
The model will then be used to make predictions on new data.
This model will only be trained on data from parking garages at the University of Oklahoma.

Features:
- lot_id: unique identifier for the parking lot (integer 1-[number of lots])
- floor: floor number of the parking garage

- timestamp: date and time of the observation
- day_of_week: day of the week of the observation (can be done with datetime module in Python)
- year: year of the observation
- month: month of the observation
- day: day of the observation
- hour: hour of the observation
- minute: minute of the observation
- second: second of the observation

- reported_vacant_spots: number of parking spots reported as vacant on the floor
- floor_total_spots: total number of parking spots on the floor
- lot_total_spots: total number of parking spots on the floor (likely correlated with lot_id, so may not be necessary)
- floor_type: main type of floor in the parking garage (e.g. commuter, faculty/staff, visitor) (1 - commuter, 2 - faculty/staff, 3 - visitor, 4 - housing, 5 - multi-use, 6 - reserved, 7 - service)

- temperature: temperature at the time of the observation 
- precipitation: amount of precipitation at the time of the observation
- wind_speed: wind speed at the time of the observation

- is_game_day: whether there is a game at the nearby stadium on the day of the observation
- holiday: whether it is a holiday on the day of the observation

Targets:
- vacant_spots: number of vacant parking spots on the floor
"""

def create_dataset():
    # Define the number of observations for the dataset
    num_observations = 1000

    # Define the number of parking lots
    num_lots = 10

    # Generate random data for features
    np.random.seed(0)  # for reproducibility

    # Generate lot_id
    lot_ids = np.random.randint(1, num_lots + 1, size=num_observations)

    # Generate floor
    floors = np.random.randint(1, 6, size=num_observations)

    # Generate timestamp
    start_date = datetime(2022, 1, 1)
    end_date = datetime(2022, 12, 31)
    timestamps = [start_date + timedelta(days=np.random.randint((end_date - start_date).days)) for _ in range(num_observations)]

    # Extract date and time components
    day_of_week = [timestamp.weekday() for timestamp in timestamps]
    year = [timestamp.year for timestamp in timestamps]
    month = [timestamp.month for timestamp in timestamps]
    day = [timestamp.day for timestamp in timestamps]
    hour = [timestamp.hour for timestamp in timestamps]
    minute = [timestamp.minute for timestamp in timestamps]
    second = [timestamp.second for timestamp in timestamps]

    # Generate reported_vacant_spots
    reported_vacant_spots = np.random.randint(0, 200, size=num_observations)

    # Generate floor_total_spots
    floor_total_spots = np.random.randint(200, 500, size=num_observations)

    # Generate floor_type
    floor_type = np.random.randint(1, 8, size=num_observations)

    # Generate random data for weather conditions
    temperature = np.random.uniform(20, 90, size=num_observations)
    precipitation = np.random.uniform(0, 10, size=num_observations)
    wind_speed = np.random.uniform(0, 30, size=num_observations)

    # Generate random data for is_game_day and holiday
    is_game_day = np.random.choice([0, 1], size=num_observations, p=[0.8, 0.2])
    holiday = np.random.choice([0, 1], size=num_observations, p=[0.9, 0.1])

    # Generate targets
    vacant_spots = np.random.randint(0, 200, size=num_observations)

    # Create DataFrame
    data = {
        'lot_id': lot_ids,
        'floor': floors,
        'timestamp': timestamps,
        'day_of_week': day_of_week,
        'year': year,
        'month': month,
        'day': day,
        'hour': hour,
        'minute': minute,
        'second': second,
        'reported_vacant_spots': reported_vacant_spots,
        'floor_total_spots': floor_total_spots,
        'floor_type': floor_type,
        'temperature': temperature,
        'precipitation': precipitation,
        'wind_speed': wind_speed,
        'is_game_day': is_game_day,
        'holiday': holiday,
        'vacant_spots': vacant_spots
    }

    df = pd.DataFrame(data)

    # Save DataFrame to CSV
    df.to_csv('parking_garage_dataset_sample.csv', index=False)

create_dataset()
# exit()

# Ticket: 22; Task: 1
def load_data():
    data = pd.read_csv('parking_garage_dataset_sample.csv')
    data = data.dropna()
    data = data.drop(['timestamp'], axis=1)
    return data

# Ticket: 22; Task: 2
def shuffle_data(data):
    data = data.sample(frac=1, random_state=0).reset_index(drop=True)
    return data

def separate_features_targets(data):
    features = data.drop(['vacant_spots'], axis=1)
    targets = data['vacant_spots']
    return features, targets

# Ticket: 22; Task: 3
def normalize_data(features):
    scaler = StandardScaler()
    normalized_features = scaler.fit_transform(features)
    return normalized_features

# Ticket: 22; Task: 4
def split_data(features, targets):
    x_train, x_test, y_train, y_test = train_test_split(features, targets, test_size=0.2, random_state=0)
    return x_train, x_test, y_train, y_test

# Ticket: 22; Task: 8
def save_model(model, model_name):
    model_path = os.path.join('models', model_name)
    if not os.path.exists('models'):
        os.makedirs('models')
    with open(model_path, 'wb') as file:
        pickle.dump(model, file)

# Ticket: 22; Task: 9
def plot_scatter(f1,f2,title,bound=20):

    '''
    plot scatter figure reference vs prediction
    @parm f1: true label
    @parm f2: prediction label
    @parm title: title for plot 
    @parm bound: the bound for plot

    '''
    rmse = mean_squared_error(f1,f2)**0.5 #get root mean square error
    mae = mean_absolute_error(f1,f2) #get mean absolute error
    r2 = r2_score(f1,f2) #get r square value
    error = np.array(f1 - f2)

    # fig,ax = plt.subplots(1,2)
    ax = plt.gca()
    
    sc = ax.scatter(f1,f2,marker='o',c=error,cmap='Spectral',
                    edgecolors='k',linewidths=1)

    ax.set_aspect('equal', adjustable='box')
    ax.set_aspect('equal', adjustable='box')

    ax.plot([0, bound], [0, bound], color="firebrick", linewidth=1.2)
    ax.set_xlim(0, bound)
    ax.set_ylim(0, bound)
    ax.set_title(title,size =18) 

    ax.text(0.2,11.5,"RMSE: {}".format("{:.3f}".format(rmse)),size = 13)
    ax.text(0.2,11,"MAE: {}".format("{:.3f}".format(mae)),size = 13)
    ax.text(0.2,10.5,r"$r^2$: {}".format("{:.3f}".format(r2)),size = 13)
    ax.set_xlabel("Reference spots vacant ",size =15)
    ax.set_yticks(np.arange(0, 13, 2))
    ax.xaxis.set_tick_params(labelsize=13)
    ax.yaxis.set_tick_params(labelsize=13)
    
    ax.set_ylabel("Predicted spots vacant ",size =15)
    plt.colorbar(sc,fraction=0.046, pad=0.04)

# Ticket: 22; Task: 9
def plot_group(y_train,y_test,y_pred_train,y_pred_test,save_name) -> None:
    '''
    A figure panel with training and testing data prediction
    The example is avaible in overleaf project figure folder file named nn.png
    @parm y_train: true label for training set
    @parm y_test: true label for test set
    @parm y_pred_train: training set prediciton
    @parm y_pred_test: test set prediction
    @parm save_name: the figure name you want to save like "nn.png"
    '''
    fig,ax = plt.subplots(1,2,figsize=(13,6))
    plt.subplot(121)
    plot_scatter(f1=y_train,f2=y_pred_train,title="Training set",bound=12)
    plt.subplot(122)
    plot_scatter(f1=y_test,f2=y_pred_test,title="Test set",bound=12)
    plt.tight_layout()
    if not os.path.exists('figures'):
        os.makedirs('figures')
    save_name = os.path.join('figures', save_name)
    plt.savefig(save_name,dpi=300)  

# Ticket: 22; Task: 5
def train_model(name, estimator, x_train, y_train, x_test, y_test) -> any:
    print("Creating", name, "model...")
    model = estimator.fit(x_train, np.ravel(y_train))
    
    y_pred_train = model.predict(x_train)
    y_pred_test = model.predict(x_test)

    plot_group(y_train, y_test, y_pred_train, y_pred_test, f"{name}.png")

    rmse = mean_squared_error(y_pred_test, y_test)**0.5  # get root mean square error
    mae = mean_absolute_error(y_pred_test, y_test)  # get mean absolute error
    r2 = r2_score(y_pred_test, y_test)  # get r square value
    print(name)
    print("RMSE :", rmse)
    print("MAE: ", mae)
    print("r2: ", r2)
    print("")
    return model

estimators = {
    'linear_regression': LinearRegression(),
    'ridge': Ridge(),
    'lasso': Lasso(),
    'elastic_net': ElasticNet(),
    'decision_tree': DecisionTreeRegressor(),
    'random_forest': RandomForestRegressor(),
    'gradient_boosting': GradientBoostingRegressor(),
    'xgboost': XGBRegressor(),
    'lightgbm': LGBMRegressor()
    # 'catboost': CatBoostRegressor()
}

data = load_data()
data = shuffle_data(data)
features, targets = separate_features_targets(data)
# features = normalize_data(features)
x_train, x_test, y_train, y_test = split_data(features, targets)

for name, estimator in estimators.items():
    model = train_model(name, estimator, x_train, y_train, x_test, y_test)
    save_model(model, name)


params = {
}

# Ticket: 22; Task: 6
# fine tune using bayesian optimization
# return the best hyperparameters
def fine_tune_model_hyperparameters(model, parameter_grid, x_train, y_train):
    
    best_hyperparameters = {}
    return best_hyperparameters

def fine_hyperparameters():
    models = load_models()
    for model_name, model in models.items():
        best_hyperparameters = fine_tune_model_hyperparameters(model, params[model_name], x_train, y_train)
        model.set_params(**best_hyperparameters)
        save_model(model, model_name)


# Ticket: 22; Task: 8
def make_predictions(model, features):
    predictions = model.predict(features)
    return predictions

# load the models
def load_models():
    models = {}
    for model_name in os.listdir('models'):
        model_path = os.path.join('models', model_name)
        with open(model_path, 'rb') as file:
            model = pickle.load(file)
            models[model_name] = model
    return models

