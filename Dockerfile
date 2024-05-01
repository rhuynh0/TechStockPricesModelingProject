FROM python:3.11.7-slim

RUN apt-get update -y && \
    apt-get install -y gcc build-essential libpq-dev && \
    pip install --upgrade pip && \
    # Installing pandoc and texlive for pdf export
    apt-get install -y pandoc texlive-xetex texlive-fonts-recommended && \
    # Cleaning up the apt cache
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Installing packages 
RUN pip install \
    plotly==5.18.0 \
    numpy==1.26.4 \
    pandas==2.2.2 \
    seaborn==0.13.2 \
    jupyter==1.0.0 \
    scikit-learn==1.4.0 \
    matplotlib==3.8.3 \
    statsmodels==0.14.1 \
    tensorflow==2.16.1

WORKDIR /home/notebooks/
COPY . /home/notebooks/

CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0
