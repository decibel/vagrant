#!/bin/sh
#pkg install bash

add() {
    grep -q "$2" $1 2> /dev/null || echo "$2" >> $1
}

add /etc/csh.cshrc 'setenv HTTP_PROXY http://10.0.2.2'
add /etc/csh.cshrc 'setenv FTP_PROXY ftp://10.0.2.2'
add /etc/profile 'export HTTP_PROXY=http://10.0.2.2'
add /etc/profile 'export FTP_PROXY=ftp://10.0.2.2'

add /etc/make.conf 'FETCH_ENV=  HTTP_PROXY=http://10.0.2.2'

