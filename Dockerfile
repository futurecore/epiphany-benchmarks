FROM snim2/parallella-devenv

MAINTAINER Sarah Mount <s.mount@wlv.ac.uk>

WORKDIR /home/dev

RUN mkdir working \
    && cd working \
    && wget https://github.com/futurecore/epiphany-benchmarks/archive/master.zip \
    && unzip master.zip \
    && mv epiphany-benchmarks-master epiphany-benchmarks \
    && rm master.zip

WORKDIR /home/dev/working/epiphany-benchmarks

# Start from a BASH shell.
CMD ["bash"]
