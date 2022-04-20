FROM justb4/jmeter
COPY CSVSample.jmx /
RUN justb4/jmeter
RUN justb4/jmeter -n -t bin/examples/CSVSample.jmx -l ./bin/examples/Run1.jtl
