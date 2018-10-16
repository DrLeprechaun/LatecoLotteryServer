FROM ubuntu:16.04
MAINTAINER artem.silenkov@gmail.com

# install python
RUN apt-get update -y
RUN apt-get install -y  python-pip python build-essential libglib2.0-bin pango1.0-tests libcairo2
RUN pip install --upgrade pip setuptools

# Install required libraries via pip
WORKDIR /usr/src/latecolottery
COPY requirements.txt .
RUN pip install --upgrade -r requirements.txt
COPY . .

# Install nginx and copy config file
RUN apt-get install -y nginx
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-enabled/default

# Copy static files

RUN mkdir -p /var/www/latecolottery
COPY ./lottery-web-static /var/www/latecolottery
RUN chown -R www-data: /var/www

# Clean apt
RUN apt-get clean

EXPOSE 80 5000

COPY ./execution.sh /usr/bin/execution.sh
RUN chmod +x /usr/bin/execution.sh
ENTRYPOINT ["execution.sh"]
