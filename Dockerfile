FROM python
LABEL maintainer    = "Manoj Ashvin Jayaraj"  \
      name          ="Python and R combo"  \
      version       = "0.1"

WORKDIR /main

RUN apt-get update \
    && apt-get -y install r-base \
    && apt -y install python3-pip

RUN pip3 install pandas

RUN Rscript ./main/requirements.R

COPY . ./main

CMD ["Rscript", "./main/rpy.R"]