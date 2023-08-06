FROM ubuntu:latest
MAINTAINER permadihendra@github.com
# ADD AND RUN
COPY . /app
WORKDIR /app
RUN apt-get update \
    && apt-get install -y python3 python3-pip \
    && pip3 install jupyter \
    && pip3 install pyexcel \
    && pip3 install openpyexcel \
    && pip3 install numpy \
    && pip3 install scipy \
    && pip3 install matplotlib \
    && pip3 install pandas \
    && pip3 install matplotlib \
    && pip3 install scikit-learn \
    && pip3 install pillow \
    && pip3 install graphviz \
    && apt-get clean
# COMMAND and ENTRYPOINT:
CMD ["jupyter","notebook","--allow-root","--ip=0.0.0.0","--port=9000"]
# NETWORK
EXPOSE 9000