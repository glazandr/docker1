FROM justb4/jmeter
COPY CSVSample.jmx /
RUN jmeter
RUN jmeter -n -t bin/examples/CSVSample.jmx -l ./bin/examples/Run1.jtl
RUN mkdir jmeter-results
RUN cd jmeter-results
