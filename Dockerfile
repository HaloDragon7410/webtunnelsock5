FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install python3 -y

COPY tunneld.py /home/

EXPOSE 80

CMD ["/usr/bin/python3","/home/tunneld.py","-p 80"]
