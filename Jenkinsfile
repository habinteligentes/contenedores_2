pipeline {
    agent any

    parameters {
        string(name: 'INDEX_FILE', defaultValue: 'index.js', description: 'Nombre del archivo index.js a utilizar.')
        string(name: 'PACKAGE_FILE', defaultValue: 'package.json', description: 'Nombre del archivo package.json a utilizar.')
        string(name: 'NODE_VERSION', defaultValue: '14.17.0', description: 'Versión de Node.js a utilizar.')
    }

    stages {
        stage('Preparar entorno') {
            steps {
                sh 'chmod +x crearEntornoNode.sh'
                sh 'chmod +x ejecutarScript.sh'
            }
        }

        stage('Crear entorno y ejecutar script') {
            steps {
                sh "./crearEntornoNode.sh"
            }
        }
    }
}