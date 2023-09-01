cloud-nuke aws --region us-east-1 \
    --region us-east-2 \
    --region us-west-1 \
    --region us-west-2 \
    --resource-type apigateway,apigatewayv2,lambda,vpc,s3,iam,eip,nat-gateway,ec2,ec2-keypairs \
    --config ./cloud-nuke-s3.yml \
    --log-level trace --force
