#!/bin/bash 

set -e 
source envvar.sh

echo "Set Cloud Foundry target..."
ibmcloud target --cf

echo "Creating Functions package..."
ibmcloud fn package create ${FUNCTIONS_PKG_NAME}

echo "Creating function..."
ibmcloud fn action create ${FUNCTIONS_ACTION_NAME} demo.js   --web true
__function_url=$(ibmcloud fn action get ${FUNCTIONS_ACTION_NAME} --url | grep ^https)

echo ""
echo ""

echo "Function has been created."
echo ""
echo "Function URL:"
echo "  ${__function_url}"
echo ""
echo "Test function using curl:"
echo "  curl ${__function_url}"
echo ""
