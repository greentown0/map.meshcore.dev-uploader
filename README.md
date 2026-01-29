# MeshCore map auto uploader

## Description
This bot will upload every repeater or room server to the map when companion hears new advert

## Requirements
You will need Meshcore device with Companion USB connected to your machine or Companion WiFi on the same network.

## Installation
1. [Install Node.js 22 or higher](https://nodejs.org/en/download/)(most recent LTS recommended)
2. Clone this repo & install dependencies via npm
```sh
git clone https://github.com/recrof/map.meshcore.dev-uploader
cd map.meshcore.dev-uploader
npm install .
```
### Usage
1. Connect working MeshCore companion usb into the computer
2. run `node index.mjs (usb_port)` or `node index.mjs (host:port)`

## Running with Docker
After cloning the repo, build and run the docker image with 
```sh
docker-compose build
docker-compose up
```
You will be able to inspect the logs. Once everything is working correctly, run the container with ``docker-compose up -d`` to run it in the background.

### Configuration in Docker
You can override default values with a .env file, such as:
```sh
# Set device to a wifi companion
DEVICE=192.168.10.74:5000
# Override timeout to 30 mins (if no adverts have been received within this time, the container will report unhealthy and restart automatically)
ADVERT_TIMEOUT_MS=1800000
```