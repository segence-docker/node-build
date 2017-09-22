Segence Node & AWS CLI Docker container
=======================================

A Docker container to build NPM-based projects and publish them to AWS.

Example usage:

docker run \
--env AWS_ACCESS_KEY_ID=<<YOUR_ACCESS_KEY>> \
--env AWS_SECRET_ACCESS_KEY=<<YOUR_SECRET_ACCESS>> \
--env AWS_DEFAULT_REGION=us-east-1 \
segence/node-awscli
