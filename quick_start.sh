#!/usr/bin/env bash

# # make sure everything is clean and well setup
./first_time_setup.sh

# # start blockchain and put in background
./start_eosio_docker.sh

# start mongodb and put in background
./start_mongodb_docker.sh

echo "=== Running the Node.js Server ==="
cd backend
npm start

cd ..

echo "=== Running the React Frontend ==="

cd frontend
npm start

cd ..
