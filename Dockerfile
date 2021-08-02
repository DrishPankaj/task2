FROM python:3
ADD . /var
WORKDIR /var
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["write.py"]
ENTRYPOINT ["python3"]
