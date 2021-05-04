FROM python

#RUN virtualenv /Python-r

#ENV PATH="/Python-r/bin:$PATH"

LABEL maintainer    = "Manoj Ashvin Jayaraj"  \
      name          ="Python and R combo"  \
      version       = "0.2"

WORKDIR /main

RUN apt-get update \
    && apt-get -y install r-base \
    && apt -y install python3-pip   

COPY requirements.txt requirements.txt
COPY requirements.R requirements.R

RUN pip3 install requirements.txt
RUN Rscript requirements.R

COPY . ./main

CMD ["Rscript", "./main/rpy.R"]