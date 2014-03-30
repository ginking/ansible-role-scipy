#!/usr/bin/expect
spawn "./Anaconda-1.9.1-Linux-x86_64.sh"
expect ">>>"
send "\r"
send " "
send " "
expect ">>>"
send "yes\r"
expect ">>>"
send "\r"
interact
