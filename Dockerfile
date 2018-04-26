FROM floydhub/pytorch:0.3.0-gpu.cuda8cudnn6-py3.17

# pip upgrade
RUN pip install --upgrade pip

# Install my works
RUN cd /
RUN mkdir files
RUN cd files
RUN wget https://s3-us-west-1.amazonaws.com/fasttext-vectors/wiki.ko.vec
#RUN apt-get install g++ openjdk-7-jdk
#RUN apt-get install python3-dev; pip3 install konlpy
RUN cd ~

# ENTRYPOINT cd quora-nl-processing; git pull --rebase; pip install -r requirements.txt; cd ~
