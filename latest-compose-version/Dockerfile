FROM rust:latest as builder

RUN USER=root cargo new --bin /latest-compose-version
WORKDIR /latest-compose-version

COPY ./Cargo.toml ./Cargo.toml
COPY ./Cargo.lock ./Cargo.lock

RUN cargo build --release
RUN rm src/*.rs

COPY ./src ./src


RUN rm ./target/release/deps/latest_compose_version*
RUN cargo build --release


FROM debian:buster-slim as runner

RUN apt-get update && apt-get install -y openssl ca-certificates

WORKDIR /app

COPY --from=builder /latest-compose-version/target/release/latest-compose-version /usr/local/bin/latest-compose-version

CMD ["latest-compose-version"]
