#!/usr/bin/env bash

set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$SCRIPT_DIR/.."
SERVERLESS="$PROJECT_DIR/node_modules/.bin/serverless"

ENV=$1

if [ "$ENV" != "dev" ] && [ "$ENV" != "stage" ] && [ "$ENV" != "prod" ]
then
    echo "$ENV is not a valid environment, must be either dev, stage, or prod"
    exit 1
else 
    echo "Deploying to $ENV..."
fi

${SERVERLESS} deploy --verbose -s $ENV