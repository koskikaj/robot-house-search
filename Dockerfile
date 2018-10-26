FROM        selenium/standalone-firefox

USER        root
# Add user for running tests
RUN         apt-get update -y \
            && apt-get install -y \
            curl \
            python2.7 \
            python-pip \
            nano \
            xvfb

RUN mkdir -p /usr/src/app
RUN mkdir -p /output
RUN mkdir -p /tmp/tests
WORKDIR /usr/src/app

# requirements.txt should contain all dependencies to install
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app
RUN chmod +x /usr/src/app/*.sh
RUN chown -R seluser:seluser /usr/src/app
RUN chown -R seluser:seluser /output
RUN chown -R seluser:seluser /tmp/tests

#COPY robot-tests /tmp/tests
#    environment:
ENV  HUB_ADDR=localhost
ENV  HUB_PORT=4444
ENV  ROBOT_TESTS=/tmp/tests
ENV  OUTPUT_DIR=/output

# Use seluser
USER seluser

CMD /usr/src/app/run.sh
