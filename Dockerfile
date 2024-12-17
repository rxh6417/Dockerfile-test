FROM ubuntu: latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    pyton3-pip \
    git

RUN pip3 install pyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entryponit.sh

ENTRYPOINT ["/entrypoint.sh"]
 