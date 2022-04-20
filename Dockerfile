FROM justb4/jmeter
VOLUME ["/export"]
CMD ls -l /export
COPY CSVSample.jmx bin/examples/
RUN --publish=7474:7474 --volume=$HOME/export/
RUN apk add --no-cache bash
RUN jmeter -n -t bin/examples/CSVSample.jmx -l ./bin/examples/jmlogs.jtl
RUN ps -a
RUN mkdir jmeter-results
RUN cd jmeter-results
RUN ps
RUN cp -v -f ./bin/examples/jmlogs.jtl ./export
