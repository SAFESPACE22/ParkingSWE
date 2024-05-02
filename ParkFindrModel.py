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
from catboost import CatBoostRegressor
import pickle
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score



""" 
The purpose of this script is to create a model that can predict the number of vacant parking spots on a floor of a parking garage. 
The model will be trained on a dataset of parking garage floor data and will be evaluated using a test set. 
The model will then be used to make predictions on new data.
This model will only be trained on data from parking garages at the University of Oklahoma.

Features:
- lot_id: unique identifier for the parking lot
- floor: floor number of the parking garage
- timestamp: date and time of the observation

- day_of_week: day of the week of the observation (can be done with datetime module in Python)
- year: year of the observation
- month: month of the observation
- day: day of the observation
- hour: hour of the observation
- minute: minute of the observation
- second: second of the observation

- reported_occupied_spots: number of parking spots reported as occupied on the floor
- reported_vacant_spots: number of parking spots reported as vacant on the floor
- total_spots: total number of parking spots on the floor (likely correlated with lot_id, so may not be necessary)
- temperature: temperature at the time of the observation
- precipitation: amount of precipitation at the time of the observation
- wind_speed: wind speed at the time of the observation
- is_game_day: whether there is a game at the nearby stadium on the day of the observation
- holiday: whether it is a holiday on the day of the observation
- is_weekend: whether it is a weekend on the day of the observation

Targets:
- number of vacant parking spots on the floor
- number of vacant commuter parking spots on the floor
"""

def load_data():
    data = pd.read_csv('parking_garage_data.csv')
    return data

def shuffle_data(data):
    data = data.sample(frac=1, random_state=0).reset_index(drop=True)
    return data

def separate_features_targets(data):
    features = data.drop(['vacant_spots', 'commuter_vacant_spots'], axis=1)
    targets = data[['vacant_spots', 'commuter_vacant_spots']]
    return features, targets

def normalize_data(features):
    scaler = StandardScaler()
    normalized_features = scaler.fit_transform(features)
    return normalized_features

def split_data(features, targets):
    x_train, x_test, y_train, y_test = train_test_split(features, targets, test_size=0.2, random_state=0)
    return x_train, x_test, y_train, y_test


def save_model(model, model_name):
    model_path = os.path.join('models', model_name)
    with open(model_path, 'wb') as file:
        pickle.dump(model, file)

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
    ax.set_xlabel("Reference next year % change ",size =15)
    ax.set_yticks(np.arange(0, 13, 2))
    ax.xaxis.set_tick_params(labelsize=13)
    ax.yaxis.set_tick_params(labelsize=13)
    
    ax.set_ylabel("Predicted next year % change ",size =15)
    plt.colorbar(sc,fraction=0.046, pad=0.04)

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
    save_name = os.path.join('figures', save_name)
    plt.savefig(save_name,dpi=300)  


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
    'lightgbm': LGBMRegressor(),
    'catboost': CatBoostRegressor()
}

data = load_data()
data = shuffle_data(data)
features, targets = separate_features_targets(data)
features = normalize_data(features)
x_train, x_test, y_train, y_test = split_data(features, targets)

for name, estimator in estimators.items():
    model = train_model(name, estimator, x_train, y_train, x_test, y_test)
    save_model(model, name)


params = {
}

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



# load the models
def load_models():
    models = {}
    for model_name in os.listdir('models'):
        model_path = os.path.join('models', model_name)
        with open(model_path, 'rb') as file:
            model = pickle.load(file)
            models[model_name] = model
    return models

