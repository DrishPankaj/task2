FROM python:3 
RUN pip3 install psycopg2
ADD . /var
WORKDIR /var
RUN pip3 install -r requirements.txt
CMD ["write.py"]
ENTRYPOINT ["python3"]
