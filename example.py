# This is an example Python script to demonstrate syntax highlighting.

# Importing necessary libraries
import math
import random

# Function to calculate the area of a circle
def calculate_circle_area(radius):
    if radius < 0:
        raise ValueError("Radius cannot be negative")
    area = math.pi * radius ** 2
    return area

# Function to generate a random list of integers
def generate_random_list(size, start=0, end=100):
    if size <= 0:
        raise ValueError("Size must be a positive integer")
    return [random.randint(start, end) for _ in range(size)]

# A simple class to represent a Rectangle
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

    def perimeter(self):
        return 2 * (self.width + self.height)

# Main block to test the functions and class
if __name__ == "__main__":
    # Testing the circle area calculation
    radius = 5
    print(f"The area of a circle with radius {radius} is {calculate_circle_area(radius)}")

    # Generating a random list of 10 integers
    random_list = generate_random_list(10)
    print(f"Random list of 10 integers: {random_list}")

    # Creating a Rectangle object and testing its methods
    rect = Rectangle(4, 7)
    print(f"Rectangle width: {rect.width}, height: {rect.height}")
    print(f"Rectangle area: {rect.area()}")
    print(f"Rectangle perimeter: {rect.perimeter()}")

    # Conditional and loop example
    for number in random_list:
        if number % 2 == 0:
            print(f"{number} is even")
        else:
            print(f"{number} is odd")
