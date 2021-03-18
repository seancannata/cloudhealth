FROM ubuntu:latest

## pull CloudHealth Agent scripts
RUN wget wget https://s3.amazonaws.com/remote-collector/agent/v23/install_cht_perfmon.sh -O install_cht_perfmon.sh

WORKDIR /my-work-dir

##Copy entrypoint and make it executable
COPY install_cht_perfmon.sh install_cht_perfmon.sh
RUN chmod +x install_cht_perfmon.sh

##Simply run entrypoint
CMD sudo sh install_cht_perfmon.sh 23 8adadb67-3506-432d-bed9-ded72bd2cbbb aws
