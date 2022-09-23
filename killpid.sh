#!/bin/bash

sleep 1000 &
echo "sleep 1000 a été lancé en tâche de fond"

pidtokill=$(pidof sleep) && echo "Le PID de sleep est $pidtokill"

kill $pidtokill && echo "Le processus sleep dont le PID est $pidtokill a été arrété"
