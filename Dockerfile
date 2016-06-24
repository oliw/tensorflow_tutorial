FROM gcr.io/tensorflow/tensorflow

MAINTAINER Oliver Wilkie <oliverw@squareup.com>

RUN rm -rf /notebooks
VOLUME "/notebooks"
VOLUME "/data"
