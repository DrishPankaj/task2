FROM python:3 
RUN pip3 install psycopg2
ADD . /var/lib/jenkins/workspace/Task2
WORKDIR /var/lib/jenkins/workspace/Task2
RUN pip3 install -r requirements.txt.
CMD ["write.py"]
ENTRYPOINT ["python3"]
