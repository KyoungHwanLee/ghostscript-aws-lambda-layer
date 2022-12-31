FROM lambci/lambda-base-2:build

ENV GS_TAG=gs9540
ENV GS_VERSION=9.54.0
ENV SRC_DIR=/usr/local/src/ghostscript

RUN yum install -y wget
RUN yum install -y python3-tkinter

RUN mkdir -p $SRC_DIR && \
  cd $SRC_DIR && \
  wget -qO - https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/$GS_TAG/ghostscript-$GS_VERSION.tar.gz | tar -zxf -

WORKDIR $SRC_DIR/ghostscript-$GS_VERSION

RUN ./autogen.sh --without-luratech && \
  make && \
  make install

CMD ["/usr/local/bin/gs"]
