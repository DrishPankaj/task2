FROM python:3
ADD . /var
WORKDIR /var
COPY . .
CMD ["write.py"]
ENTRYPOINT ["python3"]
