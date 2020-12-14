pipeline{
    agent any
    tools {
       maven 'maven-3.6'
       jdk 'jdk-11'
       git 'git-default'
    }
    stages {
       stage('Initialize') {
          steps {
              echo "AGORA VAI!!! CI/CD NA PRATICA"
          }
       }
       stage('Git Checkout'){
          steps{
             sh 'rm -Rf testecit/'
             sh 'git clone https://github.com/professorisidro/testecit.git'
          }
       }
       stage('Test'){
          steps{
             sh 'mvn test'
          }
       }
       stage('Build'){
          steps{
             sh 'mvn clean package'
          }
       }
       stage('Deploy'){
           steps{
              sh 'chmod +x ./deploy.sh'
              sh 'sudo ./deploy.sh'
           }
       }
    } 
    
}