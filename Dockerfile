FROM alpine:latest

WORKDIR /app

RUN apk add curl g++ git libpcap-dev python3-dev py-pip && \
    pip install dpkt pcapy-ng requests --break-system-packages && \
    git clone https://github.com/NikolaiT/zardaxt .

COPY zardaxt.json .

ENTRYPOINT ["python", "zardaxt.py", "./zardaxt.json"]

