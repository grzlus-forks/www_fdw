FROM postgres:9.5

WORKDIR /build
ENV USE_PGXS=1

RUN apt-get update && apt-get install -y make gcc postgresql-server-dev-9.5 libcurl4-openssl-dev libxml2-dev

COPY . .

RUN make && make install
