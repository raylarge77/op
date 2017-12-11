# use a node base image
FROM nginx

# run a command inside the container
# this will create a directory for our application
RUN mkdir -p /app


ADD . /code

WORKDIR /code

RUN pip install -r requirements.txt

EXPOSE 8000:8000

#CMD [“npm”, “start”]