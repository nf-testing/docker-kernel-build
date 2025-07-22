FROM ubuntu:latest

RUN apt update && apt install -y wget gcc make bison bc flex libssl-dev libelf-dev

RUN wget https://www.kernel.org/pub/linux/kernel/v6.x/linux-6.12.23.tar.gz

RUN tar -xzf ./linux-6.12.23.tar.gz

RUN cd linux-6.12.23 && make allyesconfig && make -j $(nproc)
