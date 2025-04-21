pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS_ID = 'dockerhubkey'
        DOCKER_IMAGE = 'dmitriy5015/myapp'
    }

    stages {
        stage('Clone the repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Dmitriy4433/myapp.git'
            }
        }

        stage('Build docker image') {
            steps {
                script {
                    // Зберігаємо образ у змінну
                    builtImage = docker.build(env.DOCKER_IMAGE)
                }
            }
        }

        stage('Run tests') {
            steps {
                sh "echo 'run some tests'"
            }
        }

        stage('Push to the docker registry') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', env.DOCKER_CREDENTIALS_ID) {
                        builtImage.push()
                    }
                }
            }
        }
    }
}

