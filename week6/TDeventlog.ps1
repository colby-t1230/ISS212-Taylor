#Colby Taylor - ISS 212 - Assignment 5 Week 6 TD Event log
#Resource: ISS 212 - Assignment 5 Week 6 TD video + walkthrough document

#load log file and find failed login attemps
$logFile = "security.log"
$failedAttempts = Select-String -Path $logFIle -Pattern "Login attempt failed from IP (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" -AllMatches

#Extract IP addresses and count occurrences
$ipCounts = @{}
foreach($match in $failedAttempts){
    $ip = $match.Matches.Groups[1].Value
    if($ipCounts.ContainsKey($ip)){
        $ipCounts[$ip] += 1
    }else{
        $ipCounts[$ip] = 1
    }
}

#Display Ips with more than 3 failed attempts
Write-Host "Potentially Malicious IPs:"
foreach ($ip in $ipCounts.Keys){
    if($ipCounts[$ip]-gt 3){
        Write-Host "$ip has $($ipCounts[$ip]) failed login attempts"
    }
}