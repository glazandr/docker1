FROM justb4/jmeter
COPY CSVSample.jmx /
RUN jmeter -n -t bin/examples/CSVSample.jmx -l ./bin/examples/Run1.jtl
RUN ps -a
RUN mkdir jmeter-results
RUN cd jmeter-results
RUN cp 7efbd49c7081:/opt/apache-jmeter-5.4.3/bin/examples .
RUN cd examples
RUN cat Run1.jtl
