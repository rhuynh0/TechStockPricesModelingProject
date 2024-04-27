FROM python:3.11.7-slim

RUN apt-get update -y
RUN apt-get install -y gcc
RUN apt-get install -y build-essential libpq-dev

RUN pip install --upgrade pip

# Installing packages 
RUN pip install \
    plotly==5.18.0 \
    numpy==1.26.4 \
    pandas==2.2.2 \
    seaborn==0.13.2 \
    jupyter==1.0.0 \
    scikit-learn==1.4.0 \
    matplotlib==3.8.3

WORKDIR /home/notebooks/
COPY . /home/notebooks/

CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0