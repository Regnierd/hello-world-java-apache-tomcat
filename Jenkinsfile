pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                echo 'mvn clean test'
            }
        }
        stage('Build') {
            steps {
                echo 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                echo 'sudo docker build -t hello-word-java-apache-tomcat .'
                echo 'sudo docker run -d -p 82:80 hello-word-java-apache-tomcat '
            }
        }
        stage('Test Integration') {
            steps {
                echo 'wget -m localhost:82/app-web-demo'
                echo "grep -i Javier /usr/local/tomcat/webapps/index.jsp"
            }
        }
    }
}