FROM python:3
ADD . /var
WORKDIR /var
COPY . .
CMD ["python3 write.py"]
ENTRYPOINT ["python3"]
