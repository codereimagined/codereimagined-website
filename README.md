# AWS CloudFormation stack

To create your stack execute `./aws-create-stack.sh`, to modify existing `./aws-modify-stack.sh`.

Currently, there is a bug where we need to manually enable "Use Static Website" in CloudFront Origin S3 configuration

# Backup commands

```
mkdir backup
cd backup

docker run --rm --volumes-from my-wordpress-db-1 -v $(pwd):/backup ubuntu tar cvf /backup/db_files.tar /var/lib/mysql

docker run --rm --volumes-from my-wordpress-wordpress-1 -v $(pwd):/backup ubuntu tar cvf /backup/wp_files.tar /var/www/html
```

# Restore backup

```
cd backup

docker run --rm --volumes-from my-wordpress-db-1 -v $(pwd):/backup ubuntu bash -c "rm -rf /var/lib/mysql/* && cd /var && tar xvf /backup/db_files.tar --strip 1"

docker run --rm --volumes-from my-wordpress-wordpress-1 -v $(pwd):/backup ubuntu bash -c "rm -rf /var/www/html/* && cd /var && tar xvf /backup/wp_files.tar --strip 1"
```

# Wordpress Settings
## Plugins
* Simply Static

## Credentials
http://localhost/wp-admin
See creds.txt (not included in repo)
