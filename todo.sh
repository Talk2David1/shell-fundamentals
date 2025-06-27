#!/bin/bash

TODO_FILE="$HOME/todo.txt"

# Function to display the menu
display_menu() {
    clear
    echo "--- To-Do List Manager ---"
    echo "1. View all tasks"
    echo "2. Add a new task"
    echo "3. Delete a task"
    echo "4. Exit the program"
    echo "--------------------------"
}

# Function to view all tasks
view_tasks() {
    if [ -s "$TODO_FILE" ]; then
        echo "--- Your Tasks ---"
        nl "$TODO_FILE"
        echo "------------------"
    else
        echo "No tasks yet! Add some."
    fi
    read -p "Press Enter to continue..."
}

# Function to add a new task
add_task() {
    read -p "Enter your new task: " task
    echo "$task" >> "$TODO_FILE"
    echo "Task added successfully!"
    read -p "Press Enter to continue..."
}

# Function to delete a task
delete_task() {
    if [ -s "$TODO_FILE" ]; then
        echo "--- Your Tasks ---"
        nl "$TODO_FILE"
        echo "------------------"
        read -p "Enter the number of the task to delete: " task_number
        if [[ "$task_number" =~ ^[0-9]+$ ]] && [ "$task_number" -ge 1 ] && [ "$task_number" -le $(wc -l < "$TODO_FILE") ]; then
            sed -i "${task_number}d" "$TODO_FILE"
            echo "Task deleted successfully!"
        else
            echo "Invalid task number."
        fi
    else
        echo "No tasks to delete."
    fi
    read -p "Press Enter to continue..."
}

# Main loop
while true; do
    display_menu
    read -p "Enter your choice: " choice

    case $choice in
        1) view_tasks ;;
        2) add_task ;;
        3) delete_task ;;
        4) echo "Exiting program. Goodbye!"; exit 0 ;;
        *) echo "Invalid choice. Please try again." ; read -p "Press Enter to continue..." ;;
    esac
done
