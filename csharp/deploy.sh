#!/bin/bash
( cd test-csharp/test-aws/src/test-aws && dotnet lambda deploy-function test-csharp --function-role arn:aws:iam::364107138694:role/test --region eu-north-1)
