# To build: docker build -t rethinkdb-fixtures .

# Assuming you have a container that runs rethinkdb named 'rethinkdb-instance'
# To run: docker run -it --rm --link rethinkdb-instance rethinkdb-fixtures

FROM node:4

RUN mkdir /src

WORKDIR /src

COPY . /src

RUN npm install

CMD ["npm", "test"]
