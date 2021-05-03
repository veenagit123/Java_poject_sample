pipeline {
 agent any
 
  tools {  maven 'maven' }
 
     stages {
                  
     
       stage("GIT") {
           steps 
             { 
              git 'https://github.com/veenagit123/Java_poject_sample.git'
             }
           }
           
       stage("Build") {
           steps 
             {               
              sh 'mvn clean package'
             }
           }
           
           
       stage("Docker build") {
           steps 
             { 
              sh 'docker build . -t dockerveen/myjar1 '
             }
           }
       }
       
     } 
