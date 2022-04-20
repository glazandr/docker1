FROM justb4/jmeter
COPY CSVSample.jmx /
RUN apk add --no-cache bash
RUN jmeter -n -t bin/examples/CSVSample.jmx -l ./bin/examples/jmlogs.jtl
RUN ps -a
RUN mkdir jmeter-results
RUN cd jmeter-results
RUN ps
RUN container ls
RUN cp ./bin/examples/jmlogs.jtl ./1 
