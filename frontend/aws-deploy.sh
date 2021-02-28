#!/bin/bash

# make file executable
set -e

instructions ()
{
  echo "*********************************************"
  echo "Run this script With Bucket Name            *"
  echo "$ sh aws-deploy.sh movr.com                 *"
  echo "*********************************************"
}

if [ $# -eq 0 ]; then
  instructions
  exit 1
else
  BUCKET=$1
fi

echo "Deploying to $BUCKET"

## npm build
echo "Step 1: npm run build"
npm run build

## This will build in dist folder

## Clear the bucket from older deployment
echo "Step 2: Clear the bucket from older deployment"
aws s3 rm s3://$BUCKET --recursive

## Upload everything from dist
echo "Step 3: Upload everything from dist"
aws s3 sync dist/ s3://$BUCKET --acl public-read
