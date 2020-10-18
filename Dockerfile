FROM python:3.8
ENV PYTHONBUFFERED 1

ADD /tancho /tancho/
ADD requirements.txt /tancho/
WORKDIR /tancho

RUN pip --trusted-host pypi.org --trusted-host files.pythonhosted.org install -r requirements.txt
