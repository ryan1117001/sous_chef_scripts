#!/usr/bin/expect

set timeout -1

spawn ./scanip.sh

expect "$ " 
set f [open "outputfile.txt"]
set ips [split [read $f] "\n"]
close $f

foreach ip $ips {
    spawn ssh pi@$ip
    expect "~" {
        interact
    }
}
