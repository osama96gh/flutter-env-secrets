#!/bin/bash

# Default environment
ENVIRONMENT="dev"
ENV_FILE="env.dev.json"

# Check for environment argument
if [ "$1" == "prod" ]; then
  ENVIRONMENT="prod"
  ENV_FILE="env.prod.json"
fi

echo "Building for $ENVIRONMENT environment using $ENV_FILE"

# Run the Flutter app with environment variables
dart_define_from_file --file=$ENV_FILE -- flutter run
