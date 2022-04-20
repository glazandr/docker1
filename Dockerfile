FROM justb4/jmeter
COPY CSVSample.jmx /
RUN apk add --no-cache bash
RUN jmeter -n -t bin/examples/CSVSample.jmx -l ./bin/examples/Run1.jtl
RUN ps -a
RUN mkdir jmeter-results
RUN cd jmeter-results
RUN cp ./opt/apache-jmeter-5.4.3/bin/examples . 
