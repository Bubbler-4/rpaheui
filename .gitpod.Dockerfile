FROM gitpod/workspace-python:latest

USER gitpod
WORKDIR /home/gitpod
RUN pyenv install 2.7.18
RUN pyenv global 2.7.18
RUN pip2.7 install genc pycparser
RUN pyenv install pypy2.7-7.0.0-src
RUN git clone https://github.com/aheui/rpaheui
WORKDIR /home/gitpod/rpaheui
ENV RPYTHON=/home/gitpod/.pyenv/versions/pypy2.7-7.0.0-src/rpython/bin/rpython make
RUN make
