pipeline {
    agent {
        label 'aws-ubuntu'
    }
    tools {
        maven 'Maven 3.6.3(agent-1)'
        nodejs 'node 18'
    }
    stages {
        // stage ('Git Checkout') {
        //     steps {
        //         git branch: 'main', url: 'https://github.com/KoNyan2612/springboot-demo.git'  
        //     }
        // }
        // stage ('Unit Test') {
        //     steps {
        //         echo 'unit testing ...'
        //     }
        // }
        // stage ('Maven Build') {
        //     steps {
        //         sh 'mvn clean package'
        //     }
        // }
        // stage ('Docker Build and Run') {
        //     steps {
        //         sh 'docker build -t nyanlynn99/springboot:1 .'
        //         sh 'docker run -d -p 8081:8081 nyanlynn99/springboot:1'
        //     }
        // }
        stage ('Run Newman') {
            steps {
                sh '/home/ubuntu/.nvm/versions/node/v18.0.0/bin/newman run simple_book_api_collection.json -r cli,htmlextra --reporter-htmlextra-export "newman/report.xml"'
            }
            // post {
            //     success {
            //         withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'password', usernameVariable: 'username')]) {
            //             sh 'echo ${password} | docker login -u ${username} --password-stdin'
            //         }
            //         sh "docker push nyanlynn99/springboot:1"
            //     }
            // }
        }
    }
}