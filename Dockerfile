FROM python:3
ADD . /var
WORKDIR /var
COPY . .
RUN pip3 install -r requirements.txt
CMD ["write.py"]
ENTRYPOINT ["python3"]
