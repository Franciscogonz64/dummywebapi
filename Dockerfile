From golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111Module=on
RUN go get github.com/Franciscogonz64/dummywebapi
RUN cd /build && git clone https://github.com/Franciscogonz64/dummywebapi.git

RUN cd /build/DummyWebAPI/main && go build

EXPOSE 8080

ENTRYPOINT [ "/build/DummyWebAPI/main/main" ]