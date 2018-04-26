FROM floydhub/pytorch:0.3.0-gpu.cuda8cudnn6-py3.17

# pip upgrade
RUN pip install --upgrade pip

# Install my works
RUN cd /
RUN mkdir files
RUN cd files
#RUN wget https://s3-us-west-1.amazonaws.com/fasttext-vectors/wiki.ko.vec
#RUN sudo apt-get install g++ openjdk-7-jdk python-dev python3-dev

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa 
RUN apt-get update 
RUN apt-get install --fix-missing -y -f openjdk-7-jre

RUN pip3 install JPype1-py3
RUN pip3 install konlpy
RUN cd ~

# ENTRYPOINT cd quora-nl-processing; git pull --rebase; pip install -r requirements.txt; cd ~
