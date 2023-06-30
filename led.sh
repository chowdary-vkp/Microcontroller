#!/bin/sh

echo 77 > /sys/class/gpio/export
echo out > /sys/class/gpio/PC13/direction
while true; do
echo 0 > /sys/class/gpio/PC13/value
sleep 1s
echo 77 > /sys/class/gpio/export
echo out > /sys/class/gpio/PC13/direction
echo 1 > /sys/class/gpio/PC13/value
sleep 1s
echo 81 > /sys/class/gpio/export
echo out > /sys/class/gpio/PC17/direction
echo 0 > /sys/class/gpio/PC17/value
sleep 1s
echo 81 > /sys/class/gpio/export
echo out > /sys/class/gpio/PC17/direction
echo 1 > /sys/class/gpio/PC17/value
sleep 1s
echo 83 > /sys/class/gpio/export
echo out > /sys/class/gpio/PC19/direction
echo 0 > /sys/class/gpio/PC19/value
sleep 1s
