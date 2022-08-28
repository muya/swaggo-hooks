#!/usr/bin/env bash

if ! which swag &> /dev/null
then
    echo "swag could not be found. Please ensure it is installed and available on your PATH."
    exit 1
fi

swag init "$@"
