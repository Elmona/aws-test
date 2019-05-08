#!/bin/bash

HANDLER=io.symphonia.Hello::handler
LAMBDA_FUNCTION_NAME=test-java
LAMBDA_FUNCTION_REGION=eu-north-1
LAMBDA_FUNCTION_ROLE_ARN=arn:aws:iam::364107138694:role/test
LAMBDA_FUNCTION_RUNTIME=java8

echo "Check if lamba function exists..."
aws lambda get-function --function-name ${LAMBDA_FUNCTION_NAME} --region ${LAMBDA_FUNCTION_REGION}

if [ "$?" -eq "0" ]; then
# Lambda exists
    echo "Updating existing lambda function..."
    aws lambda update-function-code \
        --function-name ${LAMBDA_FUNCTION_NAME} \
        --zip-file fileb://target/original-hello-1.0-SNAPSHOT.jar \
        --region ${LAMBDA_FUNCTION_REGION}
else
# Lambda does not exist yet
    echo "Creating lambda function..."
    aws lambda create-function \
        --function-name ${LAMBDA_FUNCTION_NAME} \
        --region ${LAMBDA_FUNCTION_REGION} \
        --runtime=${LAMBDA_FUNCTION_RUNTIME} \
        --role=${LAMBDA_FUNCTION_ROLE_ARN} \
        --handler=${HANDLER} \
        --zip-file fileb://target/original-hello-1.0-SNAPSHOT.jar
fi
