from geopy.distance import geodesic
import time
from geopy.geocoders import Nominatim

def time_to_location(current_location, destination_location, speed_kmph=25):
    """
    Calculates the time to travel from current location to destination location.
    
    Parameters:
        current_location (tuple): Tuple containing latitude and longitude of current location.
        destination_location (tuple): Tuple containing latitude and longitude of destination location.
        speed_kmph (float): Average speed in kilometers per hour. Default is 60 km/h.
    
    Returns:
        float: Time in hours to travel to destination.
    """
    distance_km = geodesic(current_location, destination_location).kilometers
    time_hours = distance_km / speed_kmph
    return time_hours


def main():
    while True:
        try:
            geolocator = Nominatim(user_agent="geoapiExercises")
            location = geolocator.geocode("me")
            if location:
                coordinates = (location.latitude, location.longitude)
                time_to_location(coordinates)
            else:
                print("Location not found.")
        except Exception as e:
            print("Error:", e)
        time.sleep(3)

if __name__ == "__main__":
    main()
    
