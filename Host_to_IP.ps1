$hostlist = Get-Content .\Desktop\cuba.txt
$IPs = @()
foreach ($h in $hostlist)
{
$Ip = ((test-connection $h | Select-Object ipv4address -First 1 | select ipv4address).ipv4address).ipaddresstostring
$IPs += "$Ip  of  $h"
}

$IPs