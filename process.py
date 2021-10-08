log_file = open("um-server-01.txt")


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)


sales_reports(log_file)

# Q.1
# line 1- opening the um-server-01.txt file and putting it into a variable called log_file
# line 4- creating a function called sales_reports and runs the txt file through it
# line 5- loops through the txt file line by line 
# line 6- makes a new variable called 'line' and sets it equal to itself minus all the whitespace
# line 7- creates a new variable called day that contains the data from index 0 and index 3
# line 8 and 9- creates a conditional statement that says if the day of the week is monday, then print that lines data.

# EXTRA CREDIT

# um_server_list = [log_file]




# def big_order(log_file):
#     for line in log_file:
#         line = line.rstrip()
#         day = line[0:3]
#         if [2]> 10:
#             print(line)
        

