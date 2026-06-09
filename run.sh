#!/bin/bash

build_generator() {
    docker build -t generator .
}

run_generator() {
    docker docker run -v "$(pwd)/data:/data" generator
}

create_local_data() {
    python3 ./generate.py local_data
}

case "$1" in
    build_generator)
        build_generator
        ;;
    run_generator)
        run_generator
        ;;
    create_local_data)
        create_local_data
        ;;
    *)
        exit 1
        ;;
esac