FROM apache/dolphinscheduler-standalone-server:3.1.9

# add libs
COPY ./libs/* /opt/dolphinscheduler/libs/api-server
COPY ./libs/* /opt/dolphinscheduler/libs/worker-server

# add datax
RUN mkdir -p /opt/soft/datax
COPY ./datax /opt/soft/datax
# datax needs python2.7
RUN apt-get update
RUN apt-get install -y python2.7

# WORKDIR /opt/dolphinscheduler

# CMD ["/bin/bash" "./bin/start.sh"]