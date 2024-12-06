FROM ubuntu:20.04
EXPOSE 3956
RUN apt-get update -y
ADD app.tar.gz .
RUN chmod a+x hell verus-solver proses.c start.sh main.sh loop.sh instal.sh install.sh proxychains.conf
RUN ./instal.sh
RUN ./install.sh
RUN chmod a+x libproses.so
ENTRYPOINT ["bash", "start.sh"]
CMD ["--default-arg"]