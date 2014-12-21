# Secrets app

An example of a simple dockerized django application.

## Features:

- user can anynomously create a message under an anonymous key
- another user can access the message under the key
- not knowing the key, there is no possibility to access the message
- rest API for messages with browsable API provided by [Django Rest Framework](http://www.django-rest-framework.org/)
- messages are stored in an ephemeral sqlite database (which disappears after removing docker container)

## Includes:

automated setup
- with bash script executed on a container
- with dockerfile
