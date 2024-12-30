FROM ubuntu:16.04

RUN apt update && apt upgrade -y && apt install python -y

COPY tunneld.py /home/

EXPOSE 80

CMD ["/usr/bin/python","/home/tunneld.py","-p 80"]
