FROM snim2/parallella-devenv

MAINTAINER Sarah Mount <s.mount@wlv.ac.uk>

WORKDIR /home/dev

RUN mkdir working \
    & cd working \
    & git clone https://github.com/futurecore/epiphany-benchmarks.git

WORKDIR /home/dev/working/epiphany-benchmarks

# Start from a BASH shell.
CMD ["bash"]
