FROM ubuntu:24.04

RUN apt-get update && apt-get install -y ca-certificates sudo && rm -rf /var/lib/apt/lists/*

RUN  useradd \
     --create-home \
     --shell /bin/bash \
     --user-group \
     webuser

RUN mkdir -p \
    /home/webuser/Desktop \
    /home/webuser/Documents \
    /home/webuser/Downloads \
    /home/webuser/Pictures \
    /home/webuser/Projects \
    /home/webuser/Shared && \
    chown -R webuser:webuser /home/webuser

USER webuser
WORKDIR /home/webuser

CMD ["/bin/bash"]
