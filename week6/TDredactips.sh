#!C:\Program Files\Git\bin\sh.exe
#Colby Taylor - ISS 212 - Assignment 5 week 6 TD
#Resources: ISS 212 - FA24-Week6-Regex+TD4 walkthrough video + walkthrough document

#Redact IP's in access.log and save to access_redacted.log
sed -E 's/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/[REDACTED]/g' access.log > access_redacted.log

echo "Redacted IP addresses in access.log and saved as access_redacted.log"
