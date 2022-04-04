pipeline {
    agent {
        label 'aws-ubuntu'
    }
    tools {
        maven 'Maven 3.6.3(agent-1)'
    }
    stages {
        stage ('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/KoNyan2612/springboot-demo.git'  
            }
        }
        stage ('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage ('Docker Build') {
            steps {
                sh 'docker build -t nyanlynn99/springboot:1 .'
            }
        }
        stage ("Docker Push") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'password', usernameVariable: 'username')]) {
                    sh 'echo ${password} | docker login -u ${username} --password-stdin'
                }
                sh "docker push nyanlynn99/springboot:1"
            }
        }
    }
}