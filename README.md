# shell-fundamentals
Creating Todo Using Bash Script

![image](https://github.com/user-attachments/assets/f69bb3e1-3432-495f-93b4-016b069acc68)

#!/bin/bash
This is a shebang line. It tells the system to use the Bash shell to interpret the script.
This script defines the menu interface for a to-do list manager. When the display_menu function is called,shows options to: View all to-do tasks, Add a new task, Delete a task,Exit the program.

![image](https://github.com/user-attachments/assets/0a96fb71-eb6f-4114-80d1-a61d32c1563b)

_________________________________________________________________________________________________________________________________________________________________________________________________

![image](https://github.com/user-attachments/assets/b86c0184-03c6-4cfd-92a3-dba3951d1d2b)

This function: Displays all tasks if any exist (with line numbers).
Tells the user if the task list is empty.
Pauses so the user can read the output.

![image](https://github.com/user-attachments/assets/c7776e0b-b314-4c00-b501-250ee24bae96)

_________________________________________________________________________________________________________________________________________________________________________________________________

![image](https://github.com/user-attachments/assets/83908074-99b8-4d7a-bdf4-f57921dd1d2c)

This bash function named add_task() allows a user to:
Type a new task.
Save it to todo.txt.
Get a success message.
Pause before returning to the menu or next step.

![image](https://github.com/user-attachments/assets/153294f4-77c3-4e19-86ab-5e443eeaf464)

_________________________________________________________________________________________________________________________________________________________________________________________________

![image](https://github.com/user-attachments/assets/737ca562-f994-4ee4-b6b0-633483315043)

This delete_task() function:
Shows a numbered list of tasks.
Asks the user for the number of the task to remove.
Validates that input.
Deletes the selected task from the file.
Confirms or shows an error message.

![image](https://github.com/user-attachments/assets/b17340cd-eb92-4cec-83e8-5a50efa8dd36)  


![image](https://github.com/user-attachments/assets/b53e290e-5969-4055-896c-726a5466c61c)
_________________________________________________________________________________________________________________________________________________________________________________________________

![image](https://github.com/user-attachments/assets/2fc06d9a-083f-4e20-9757-9aa6ee840972)

This is the interactive control flow of the script. It:
Shows the menu. 
Accepts user input. 
Calls the appropriate function (view, add, delete). 
Keeps running until the user chooses to exit. 
It ties all the previously defined functions together into a complete command-line to-do list app. 

![image](https://github.com/user-attachments/assets/a91b7eff-942d-4f27-8102-637b7434974b)

_________________________________________________________________________________________________________________________________________________________________________________________________

N/B: touch todo.sh is used to create a script named todo.sh
To run this script in the terminal, cd into the Folder that contains the todo.sh script, enter "chmod +x todo.sh" to avoid getting Permission denied error and "./todo.sh" to run it


