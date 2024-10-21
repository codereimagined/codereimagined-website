rm -rf build/.DS_Store
aws s3 sync build s3://codereimaginedwebsite-s3bucketroot-sgyq320thi9u --delete
