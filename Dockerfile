FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    autoconf automake bison bzip2 curl cvs diffstat flex g++ gawk gcc gettext git-core gzip help2man ncurses-bin ncurses-dev libc6-dev libtool make texinfo patch perl pkg-config subversion tar texi2html wget zlib1g-dev chrpath libxml2-utils xsltproc libglib2.0-dev python-setuptools zip info coreutils diffstat chrpath libproc-processtable-perl libperl4-corelibs-perl sshpass default-jre default-jre-headless java-common libserf-dev qemu quilt

RUN useradd -ms /bin/bash openatvbuilder

USER openatvbuilder

WORKDIR /openatvbuilder/openatv

RUN git clone git://github.com/oe-alliance/build-enviroment.git -b 4.1

RUN cd build-enviroment && make update

