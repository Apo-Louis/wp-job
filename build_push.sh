repo=apoolouis8/wp-job
version=1.0.0


docker build . -t ${repo}:${version}

docker push ${repo}:${version}
