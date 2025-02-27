pipeline {
    agent any

    stages {
        stage('Construcción') {
            steps {
                script {
                    sh 'docker build -t mi-app-js .'
                }
            }
        }
        stage('Pruebas') {
            steps {
                script {
                    sh 'docker run mi-app-js npm test'
                }
            }
        }
        stage('Despliegue') {
            steps {
                script {
                    sh 'docker run -d -p 3000:3000 mi-app-js'
                }
            }
        }