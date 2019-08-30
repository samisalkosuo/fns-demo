#!/bin/bash 

#set -e 
source envvar.sh

echo "Undeploy demo..."

echo "Deleting Function ${FUNCTIONS_FUNCTION_NAME}..."
ibmcloud fn action delete ${FUNCTIONS_PKG_NAME}/${FUNCTIONS_FUNCTION_NAME}

echo "Deleting Functions package..."
ibmcloud fn package delete ${FUNCTIONS_PKG_NAME}
