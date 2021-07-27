FROM python:3
WORKDIR /usr/src/app
COPY . .
CMD ["write.py"]
ENTRYPOINT ["python3"]