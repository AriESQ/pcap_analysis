#!/usr/bin/env bash                                  
#spin up tcpdump long enough to capture one wget transaction.
#change user and iterface for your purposes.

sudo tcpdump -Z ubuntu -s 0 -w mycap.cap -i eno1 &   
sleep 10                                             
wget https://pki.goog/roots.pem                      
sleep 5                                              
sudo pkill tcpdump                                   
