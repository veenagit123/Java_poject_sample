pipeline {

 agent any
 
 environment {
  docker_tag = getVersion()
}

 
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
           
      stage("Nexus upload") {
           steps 
             {               
                nexusArtifactUploader artifacts: [
                 [
                    artifactId: 'gs-maven', 
                    classifier: '', 
                    file: 'target/gs-maven-0.1.0.jar', 
                    type: 'jar'
                 ]
                ], 
                   credentialsId: 'nexus', 
                   groupId: 'org.springframework', 
                   nexusUrl: '3.237.12.146:8081', 
                   nexusVersion: 'nexus3', 
                   protocol: 'http', 
                   repository: 'gs-maven', 
                   version: '0.1.0'
     
             }
           }
      
          
       stage("Docker build") {
           steps 
             { 
              sh 'docker build . -t dockerveen/myjar1:${docker_tag}'
             }
           }
      
     
      
      
      stage("Docker Push") {
           steps 
             { 
              withCredentials([string(credentialsId: 'docker_id_final', variable: 'docker_id_final')])  
               {
                sh 'docker login -u dockerveen -p ${docker_id_final}'
                sh 'docker push dockerveen/myjar1:${docker_tag} '
               }
             
             }
           }
       
      
      stage("Kube deploy") {
           steps 
             { 
              withCredentials([file(credentialsId: 'kubernates_config', variable: 'KUBECONFIG')])
               {
                sh 'kubectl apply -f deploy.yaml'
                sh 'kubectl apply -f service.yaml'
                
               }
             
             }
           }
      
      
      
       }
       
     } 

 def getVersion()
      {
       def commitHash=sh returnStdout: true, script: 'git rev-parse --short HEAD'
       return commitHash
      }
   
