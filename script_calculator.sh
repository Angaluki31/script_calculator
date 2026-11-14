#!/bin/bash

# Addition function
add_number() {
    sum=$((num1 + num2))
    echo "The answer is: $sum"
}

# Subtraction function
subtract_number() {
    subtraction=$((num1 - num2))
    echo "The answer is: $subtraction"
}

# Multiplication function
multiply_number() {
    multiplication=$((num1 * num2))
    echo "The answer is: $multiplication"
}

# Division function
divide_number() {
    if [ "$num2" -eq 0 ]; then 
        echo "Error: You cannot divide by zero!"
    else 
        division=$((num1 / num2))
        echo "The answer is: $division"
    fi 
}

# Main menu
while true 
do 
    echo ""
    echo "==================== MAIN MENU ===================="
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    echo "==================================================="

    read -r -p "Enter your operation: " operation

    # Exit the calculator 
    if [ "$operation" = "5" ]; then 
        echo "Thank you for using my calculator!"
        break 
    fi 

    # Check whether the operation is valid

    case "$operation" in 
        1|2|3|4)
            ;;
        *)

            echo "Invalid choice! Please select 1 to 5"
            continue
            ;;
    esac 

    # Ask for two numbers
    read -r -p "Enter the first number: " num1
    read -r -p "Enter the second number: " num2

    # Validate the numbers
    if [[ ! "$num1" =~ ^-?[0-9]+$ ]] || [[ ! "$num2" =~ ^-?[0-9]+$ ]]; then 
        echo "Error: Please enter valid whole numbers."
        continue 
    fi 

    # Perform the selected operation
    case "$operation" in 
        1)
            add_number
            ;;
        2)
            subtract_number
            ;;
        3)
            multiply_number
            ;;
        4)
            divide_number
            ;;
    esac
done 