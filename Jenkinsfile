pipeline {
    agent any
    stages {

        stage ("Lint Dockerfile") {
            agent {
                docker {
                    image 'hadolint/hadolint:latest-debian'
                }
            }
            steps {
                sh 'hadolint Dockerfile | tee -a hadolint_lint.txt'
            }
            post {
                always {
                    archiveArtifacts 'hadolint_lint.txt'
                }
            }
        }

        
        stage('Build and Push Image') {
                         
             steps {
                script {

                    checkout scm

                    docker.withRegistry('https://registry.hub.docker.com', 'DockerHub') {
                        def image = docker.build("fahadosaimi/demolocal")
                        image.push()
                    }
                
                }


             }


         }
   
     }
     
}
