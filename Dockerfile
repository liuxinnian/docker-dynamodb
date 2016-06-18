FROM java:7

RUN mkdir /var/dynamodb_wd
RUN mkdir /var/dynamodb_local
WORKDIR /var/dynamodb_wd

RUN wget -q http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz && \
    tar zxvf dynamodb_local_latest.tar.gz && rm dynamodb_local_latest.tar.gz

EXPOSE 8000

ENTRYPOINT ["java", "-Djava.library.path=.", "-jar", "DynamoDBLocal.jar",  "--sharedDb", "-dbPath","/var/dynamodb_local", "-port", "8000"]