FROM debian
MAINTAINER Jake Gaylor <jake@nesteddata.com>

ADD scripts /opt/meteord

RUN bash /opt/meteord/install_base.sh
RUN bash /opt/meteord/install_node.sh
RUN bash /opt/meteord/install_phantomjs.sh

ONBUILD ADD ./app /app
ONBUILD RUN bash /opt/meteord/meteord-build.sh
EXPOSE 3000
ENTRYPOINT bash /opt/meteord/run_app.sh
