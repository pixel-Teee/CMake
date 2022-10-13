#!/bin/bash

export myenv=first
echo myenv is now $myenv

cmake -B build ../../build
cd ../../build
export myenv=second
echo myenv is now $myenv
cmake --build .

sleep 180

