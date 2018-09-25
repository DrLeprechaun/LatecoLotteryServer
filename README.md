# LatecoLotteryServer

## Table of Contents

## Abstract
This document describes the LatecoLotteryServer. 
The server have been developed to work with python 3.3+

## Quick Start Guide
# Install virtualenv
pip install virtualenv
# Create virtual environment in the project folder
virtualenv venv
# Activate virtual environment
source venv/bin/activate

### Installing Required Python Packages
pip install --upgrade -r requirements.txt

### Installing npm for static content
in the folder lotter-web run:
npm install

### Run server
python manage.py runserver —host 0.0.0.0
npm start

## Resources

* [Flask Manager](https://flask-script.readthedocs.io/en/latest/)