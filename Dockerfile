FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on 
RUN go get github.com/Franciscogonz64/dummywebapi/main
RUN cd /build && git clone https://github.com/Franciscogonz64/dummywebapi.git && cd /build/dummywebapi/main && go build


EXPOSE 8080

ENTRYPOINT ["/build/dummywebapi/main/main"]