FROM python:3.6

RUN apt-get update && apt-get install -y --no-install-recommends \
                vim \
         && rm -rf /var/lib/apt/lists/*

RUN pip3 install cheat

RUN useradd --uid 1000 --home /home/goldcheese goldcheese

WORKDIR /home/goldcheese
RUN chown -R goldcheese /home/goldcheese

USER goldcheese


ENTRYPOINT ["cheat"]
