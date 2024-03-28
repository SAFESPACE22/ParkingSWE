""" 
Test the different functionalities
"""
import os
import sys
import unittest
from unittest.mock import patch
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


class TestParkFindrModel(unittest.TestCase):
    def test_pull_data(self):
        self.assertEqual(pull_data().shape, (100, 14))
        self.assertEqual(pull_data().columns.tolist(), ['lot_id', 'floor', 'timestamp', 'reported_occupied_spots', 'reported_vacant_spots', 'total_spots', 'temperature', 'precipitation', 'wind_speed', 'day_of_week', 'year', 'month', 'day', 'hour', 'minute', 'second'])

    # test case for valid condition
    @patch('pull_data')
    def test_pull_data_valid(self, mock_pull_data):
        mock_pull_data.return_value = pd.DataFrame(np.random.randint(0,100,size=(100, 14)), columns = ['lot_id', 'floor', 'timestamp', 'reported_occupied_spots', 'reported_vacant_spots', 'total_spots', 'temperature', 'precipitation', 'wind_speed', 'day_of_week', 'year', 'month', 'day', 'hour', 'minute', 'second'])
        self.assertEqual(pull_data().shape, (100, 14))

    # test case for invalid condition
    @patch('pull_data')
    def test_pull_data_invalid(self, mock_pull_data):
        mock_pull_data.return_value = pd.DataFrame(np.random.randint(0,100,size=(50, 7)), columns = ['lot_id', 'floor', 'timestamp', 'reported_occupied_spots', 'reported_vacant_spots', 'total_spots', 'temperature'])
        with self.assertRaises(AssertionError):
            self.assertEqual(pull_data().shape, (100, 14))

    # test case for boundary condition
    @patch('pull_data')
    def test_pull_data_boundary(self, mock_pull_data):
        mock_pull_data.return_value = pd.DataFrame(np.random.randint(0,100,size=(0, 14)), columns = ['lot_id', 'floor', 'timestamp', 'reported_occupied_spots', 'reported_vacant_spots', 'total_spots', 'temperature', 'precipitation', 'wind_speed', 'day_of_week', 'year', 'month', 'day', 'hour', 'minute', 'second'])
        self.assertEqual(pull_data().shape, (0, 14))