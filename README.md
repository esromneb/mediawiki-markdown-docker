# Build with
```bash
docker build -t localhost/php-markdown:base .
```

# Instructions
* See instructions here: https://github.com/outofcontrol/mediawiki-to-gfm
* NOTE: you need to pass format as `--format=markdown_github`


# Example
```bash
./convert.php --filename=/src/file.xml --output=/src/foo.md --format=markdown_github 
```



