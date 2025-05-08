FROM bentoml/model-server:0.11.0-py312
MAINTAINER ersilia

RUN pip install pip==25.1
RUN pip install lazyqsar==0.4
RUN pip install joblib==1.2.0

WORKDIR /repo
COPY . /repo
