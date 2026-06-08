#!/bin/bash

build_generator() {
    docker build -t generator .
}

run_generator() {
    mkdir -p ./data
    docker run --rm \
        -v $(pwd)/data:/app/data \
        generator \
        python generate.py "/app/data"
}

create_local_data() {
    mkdir -p ./local_data
    python generate.py "./local_data"
}