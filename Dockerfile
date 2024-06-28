FROM golang:1.22.4
COPY . .
RUN GO111MODULE=off go build -o ./server .
CMD [ "./server" ]