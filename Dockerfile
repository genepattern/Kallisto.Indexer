FROM genepattern/kallisto:6


USER root
RUN mkdir -p /opt/genepatt/src
RUN mkdir -p /opt/genepatt/gpunit
COPY src/* /opt/genepatt/src/
COPY gpunit/* /opt/genepatt/gpunit
ENV PATH="$PATH:/build/kallisto"
WORKDIR /opt/genepatt