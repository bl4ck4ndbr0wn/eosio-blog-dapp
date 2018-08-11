#!/usr/bin/env bash

# # make sure everything is clean and well setup
./first_time_setup.sh

# # start blockchain and put in background
./start_eosio_docker.sh --nolog

# start mongodb and put in background
./start_mongodb_docker.sh --nolog

echo "=== Running the Node.js Server ==="
cd backend
npm start --nolog

cd ..

echo "=== Running the React Frontend ==="

cd frontend
npm start --nolog

cd ..
