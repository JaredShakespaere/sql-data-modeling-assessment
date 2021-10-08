log_file = open("um-server-01.txt")


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)


sales_reports(log_file)

# Q.1
# My guess is that this is a log on data for an produce business. It is logging
# the date, quantity, and user id. It is also adding in a small explanation of what
# was delivered to each user

# EXTRA CREDIT

# um_server_list = [log_file]




# def big_order(log_file):
#     for line in log_file:
#         line = line.rstrip()
#         day = line[0:3]
#         if [2]> 10:
#             print(line)
        

