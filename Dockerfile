FROM justb4/jmeter
COPY CSVSample.jmx /
RUN jmeter -n -t bin/examples/CSVSample.jmx -l ./bin/examples/Run1.jtl
RUN bin/examples ls
RUN ps -a
RUN mkdir jmeter-results
RUN cd jmeter-results
RUN cd examples
