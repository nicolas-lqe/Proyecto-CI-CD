pipeline {
    agent any  // Ejecutar este pipeline en cualquier agente disponible

    stages {
        // Primera etapa: Construcción de la aplicación
        stage('Build') {
            steps {
                script {
                    // Construir la imagen Docker del servicio 'app' definido en docker-compose.yml
                    // Esto ejecuta el proceso definido en el Dockerfile
                    sh 'docker-compose build app'
                }
            }
        }
        
        // Segunda etapa: Ejecución de pruebas
        stage('Test') {
            steps {
                script {
                    // Ejecutar el comando 'npm test' dentro del contenedor de la aplicación
                    // --rm elimina el contenedor después de completar el comando
                    sh 'docker-compose run --rm app npm test'
                }
            }
        }
        
        // Tercera etapa: Despliegue de la aplicación
        stage('Deploy') {
            steps {
                script {
                    // Iniciar el servicio 'app' en modo demonio (background)
                    // -d ejecuta el contenedor en segundo plano
                    sh 'docker-compose up -d app'
                }
            }
        }
    }
}