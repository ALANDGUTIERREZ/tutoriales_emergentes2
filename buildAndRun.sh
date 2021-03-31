#!/bin/sh
mvn clean package && docker build -t com.mycompany/TE_mvcbiblioteca .
docker rm -f TE_mvcbiblioteca || true && docker run -d -p 9080:9080 -p 9443:9443 --name TE_mvcbiblioteca com.mycompany/TE_mvcbiblioteca