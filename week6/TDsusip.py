# Colby Taylor - ISS 212 Week 6 TD suspicious IP
#Resources: ISS 212 Week 6 TD walkthrough + video

import re

#open log file
with open('auth.log', 'r') as file:
    log_data = file.read()

#Regular expression (regex) pattern for failed login ips
pattern = r"Failed password .* from (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"

#Find all matching IPs
sus_ips = re.findall(pattern, log_data)

#get unique ips and print
unique_ips = set(sus_ips)
print('Suspicious IPs: ')
for ip in unique_ips:
    print(ip)

