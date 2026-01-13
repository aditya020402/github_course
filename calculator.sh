#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "---------------------------"

# Take inputs from user
read -p "Enter Principal amount: " principal
read -p "Enter Rate of Interest (in %): " rate
read -p "Enter Time (in years): " time

# Validate input
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "Error: All inputs are required."
    exit 1
fi

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate %"
echo "Time Period     : $time years"
echo "---------------------------"
echo "Simple Interest : $simple_interest"
