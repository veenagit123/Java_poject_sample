pipeline {
   agent any
    stages{ 
      stage('GIT') 
         { 
         steps{ 
            git 'https://github.com/veenagit123/Java_poject_sample.git'
         }
       }       
     stage('Build stage') 
         { 
         steps{ 
            sh "mvn complie"
         }
       }       
       }       
}
