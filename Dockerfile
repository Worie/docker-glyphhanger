FROM buildkite/puppeteer

ADD ./setup-scripts /setup-scripts

RUN mkdir /hwd

WORKDIR /hwd

RUN chmod a+x /setup-scripts/*.sh 
RUN /setup-scripts/install-python.sh && /setup-scripts/install-fonttools.sh && /setup-scripts/install-git.sh
RUN /setup-scripts/install-glyphhanger.sh

ENTRYPOINT ["/bin/bash", "-c", "\"$@\"", "--"]