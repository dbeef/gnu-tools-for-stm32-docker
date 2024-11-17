FROM ubuntu:24.04

# Install build dependencies:
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install --yes \
    yacc \
    flex \
    gcc-arm-none-eabi \
    gdb-multiarch \
    cmake \
    git \
    openocd \
    python3 \
    python3-pip \
    python3-venv \
    texi2html \
    texinfo \
    automake

# Since the toolchain build scripts insist on a fixed version,
# here is a dirty workaround:
RUN ln -s /usr/bin/aclocal-1.16 /usr/bin/aclocal-1.15 && \ 
    ln -s /usr/bin/aclocal-1.16 /usr/bin/aclocal-1.14  && \
    ln -s /usr/bin/automake-1.16 /usr/bin/automake-1.15 && \
    ln -s /usr/bin/automake-1.16 /usr/bin/automake-1.14

# Setup virtual environment:
ENV STM32_VENV_PATH=/opt/stm32-venv
RUN python3 -m venv ${STM32_VENV_PATH}
ENV PATH="${STM32_VENV_PATH}/bin:$PATH"

# Install required python3 packages:
RUN python3 -m pip install \
    python-magic 

WORKDIR /home/
