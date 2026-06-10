#!/bin/bash

build_generator() {
    docker build -t generator .
}

run_generator() {
    docker run -v "$(pwd)/data:/data" generator
}

create_local_data() {
    python3 ./generate.py local_data
}

build_reporter() {
    docker build -t reporter -f Dockerfile_reporter .
}

run_reporter() {
    docker run -v "$(pwd)/data:/data" reporter
}

structure() {
    find . -not -path '*/.git/*'
}

clear_data() {

}

inside_generator() {
}

inside_reporter() {

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
    build_reporter)
        build_reporter
        ;;
    run_reporter)
        run_reporter
        ;;
    structure)
        structure
        ;;
    clear_data)
        clear_data
        ;;
    inside_generator)
        inside_generator
        ;;
    inside_reporter)
        inside_reporter
        ;;
    *)
        exit 1
        ;;
esac