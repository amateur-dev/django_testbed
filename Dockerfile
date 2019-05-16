FROM python:latest
WORKDIR /home
COPY requirements.txt /home
RUN alias pip=pip3
RUN alias python=python3
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /home
CMD tail -f /dev/null