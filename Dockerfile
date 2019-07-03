FROM buildkite/puppeteer

ADD ./setup-scripts /setup-scripts

WORKDIR /setup-scripts

RUN chmod a+x ./*.sh 
RUN ./install-python.sh && ./install-fonttools.sh && ./install-git.sh
RUN ./install-glyphhanger.sh

ENTRYPOINT ["/bin/bash", "-c", "\"$@\"", "--"]