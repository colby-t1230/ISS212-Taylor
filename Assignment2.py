# Colby Taylor - ISS 212 - Assingment 2
# Resources Referenced: Jenn Moody - Week 3 - Assignment 2 ISS 212 (Video 3)


def read_log(file_path): #open the log file
    with open(file_path, 'r') as file: #using the path given, find the file
        return file.readlines() #returns the file at the path

def threat_finder(log_lines): #create function for filtering through log files
    possible_threats = [] #create list for possible threats
    for line in log_lines: #loop
        if "Failed root login" in line or "Failed login attempt" in line or "Suspicious activity detected" in line: #using the string in the log if they have this then continue
                possible_threats.append(line) #if line has ^ then add to list
    return possible_threats #returning the new list

def log_analysis(threats): #results of filtering
    for threat in threats: #create loop
        print(threat) #print the threats found above

if __name__ == "__main__":
    log_file = 'ISSaccess.log' #gives log_file a file to open
    log_data = read_log(log_file) #creates new variable for the file data
    threats = threat_finder(log_data) #finds out threats from filter and log data
    log_analysis(threats) #prints the threats found inside of file
