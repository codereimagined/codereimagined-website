find ./build -type f -name '*.html' -exec sed -i '' 's|href="/blog"|href="/blog/index.html"|g' {} +
find ./build -type f -name '*.html' -exec sed -i '' 's|href="/contact"|href="/contact/index.html"|g' {} +

aws s3 sync build s3://codereimagined-s3bucketroot-lskmyyn2jwla --delete
