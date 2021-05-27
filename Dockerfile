FROM php:fpm

RUN apt-get update && apt-get install -y \
		vim \
		wget \
		unzip \
		git \
		curl \
		&& apt-get clean && rm -rf /var/lib/apt/lists/

RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv ~/.symfony/bin/symfony /usr/local/bin/symfony

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
