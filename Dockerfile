FROM bitnami/python:3.8-prod

LABEL MAINTAINER="tim.and.trallnag+code@gmail.com"

ARG PYPI_VERSION

ADD requirements.txt /
RUN pip install -r /requirements.txt
ADD prometheus_ecs_discoverer /opt/bitnami/python/lib/python3.8/site-packages/prometheus_ecs_discoverer/

CMD [ "python", "-m", "prometheus_ecs_discoverer.run" ]
