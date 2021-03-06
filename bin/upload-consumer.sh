#!/bin/bash
zip -r ../lambda-test.zip *
aws lambda upload-function  --region $AWS_REGION --function-name $LAMBDA_KINESIS_RENDERING_NAME --function-zip ../lambda-test.zip --role arn:aws:iam::$AWS_ACCOUNT_NUMBER:role/$LAMBDA_IAM_ROLE --mode event --handler consumer.handler --runtime nodejs --debug --timeout 30 --memory-size 128
