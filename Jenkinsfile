pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                sh 'mvn clean test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
                sh 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t hello-word-java-apache-tomcat .'
                sh 'docker run -d -p 82:8080 hello-word-java-apache-tomcat '
            }
        }
        stage('Test Integration') {
            steps {
                sh 'wget localhost:82/app-web-demo'       
                sh 'grep -i Javier app-web-demo'
                    
            }
        }
    }
}