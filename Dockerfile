FROM justb4/jmeter
VOLUME ["/export"]
CMD ls -l /export
COPY CSVSample.jmx bin/examples/
RUN apk add --no-cache bash
RUN jmeter -n -t bin/examples/CSVSample.jmx -l ./bin/examples/jmlogs.jtl
RUN ps -a
RUN mkdir jmeter-results
RUN cd jmeter-results
RUN ps
RUN cp -v -f jmeter:/bin/examples/jmlogs.jtl ./1 
RUN rm /export
