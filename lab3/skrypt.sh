#!/bin/bash


ps -eo pid,cmd,%mem,%cpu --sort=-%cpu | head

echo  

ps -eo user=|sort|uniq -c
