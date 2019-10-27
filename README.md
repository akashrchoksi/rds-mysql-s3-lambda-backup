
I take this opportunity to thank the author of this website https://www.jake-webber.com/2019-06-09-backup-mysql-with-aws-lambda.html for providing me useful infromation


# rds-mysql-s3-lambda-backup
serverless backup 
By using this script at aws lambda you can able to take native backup from Amazon RDS with mysql engine to Amazon S3 bucket.
#  Prerequisite
Two Packages are requried to run my script behind the Lambda function. These packages are awscli and mysqlcli. These two packages we have to    upload as layer in our Lambda function.
The placement of mysqlcli and awscli is very important. Both should be placed in the bin folder before preapring the zip file for them.





 
