FROM justb4/jmeter
RUN mkdir /myvol
VOLUME /myvol
COPY CSVSample.jmx bin/examples/
RUN jmeter -n -t bin/examples/CSVSample.jmx -l ./bin/examples/jmlogs.jtl 
RUN apk add --no-cache bash
RUN ps -a
RUN mkdir jmeter-results
RUN cd jmeter-results
RUN ps
RUN cp -v -f ./bin/examples/jmlogs.jtl ./myvol
