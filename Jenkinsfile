pipeline {
    agent any

    stages {
        stage('Preparar entorno') {
            steps {
                sh 'chmod +x crearEntornoNode.sh'
                sh 'chmod +x ejecutarScript.sh'
            }
        }

        stage('Crear entorno y ejecutar script') {
            steps {
                sh './crearEntornoNode.sh'
            }
        }
    }
}
