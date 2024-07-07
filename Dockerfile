FROM golang:1.22.4
COPY . .
RUN apt-get update && apt-get install -y iputils-ping
RUN GO111MODULE=off go build -o ./server .
CMD [ "./server" ]