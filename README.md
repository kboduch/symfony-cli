`build.sh` creates docker image with the latest PHP, symfony CLI and composer.

Windows

`docker run -it --rm -v ${PWD}:/var/www/html symfony-cli bash`

Linux

`docker run -it --rm -v $(pwd):/var/www/html symfony-cli bash`
