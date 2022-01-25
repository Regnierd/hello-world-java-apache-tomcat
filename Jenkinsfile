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
                echo 'sudo docker build -t hello-word-php-apache .'
                echo 'sudo docker run -d -p 82:80 hello-word-php-apache'
            }
        }
        stage('Test Integration') {
            steps {
                echo 'wget -m localhost:82/app-web-demo'
                echo "grep -i Javier /home/javier/Documentos/GitHub/hello-world-java-apache-tomcat/src/main/webapp/index.jsp"
            }
        }
    }
}