#!/bin/bash
clear
for vm in ./VM*
do
    cd ./$vm
    vagrant halt &
    vagrant destroy &
    cd ..
done
