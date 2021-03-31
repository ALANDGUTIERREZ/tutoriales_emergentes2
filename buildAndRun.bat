@echo off
call mvn clean package
call docker build -t com.mycompany/TE_mvcbiblioteca .
call docker rm -f TE_mvcbiblioteca
call docker run -d -p 9080:9080 -p 9443:9443 --name TE_mvcbiblioteca com.mycompany/TE_mvcbiblioteca