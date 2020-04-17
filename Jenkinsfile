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
        //  stage('Environment Setup and Lint ') {
        //      steps {
        //          sh ' make all'    
        //          container('hadolint') {
        //                 sh 'hadolint Dockerfile'
        //             }   
        //      }
             
        //  }

        
         stage('Build Docker') {
                         
             steps {
                script {

                    checkout scm

                    docker.withRegistry('https://registry.hub.docker.com', 'DockerHub') {
                        def image = docker.build("fahadosaimi/demolocal")
                        image.push()
                    }
                
                }

                // node('docker'){



                // }
             }

            //  steps {
            //      sh 'docker build --tag=fahadosaimi/demolocal .'
            //      sh 'docker image ls'
            //      sh 'docker run fahadosaimi/demolocal'       
            //  }
         }   
        //  stage('Upload image to Docker Hub') {
        //      agent {
        //          dockerfile true 
        //      }
        //      steps {
        //          sh 'dockerpath=""'
        //          sh 'echo "Docker ID and Image: $dockerpath"'
        //          sh 'sudo docker push fahadosaimi/demolocal'       
        //      }
        //  }         


        //  stage('Lint HTML') {
        //       steps {
        //           sh 'tidy -q -e index.html' 
        //       }
        //  }
        //  stage('Security Scan') {
        //       steps { 
        //          aquaMicroscanner imageName: 'alpine:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
        //       }
        //  }         
        //  stage('Upload to AWS') {
        //       steps { 
        //           withAWS(region:'eu-west-1',credentials:'jenkins') {
        //           sh 'echo "Uploading content with AWS creds"' 
        //               s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'index.html', bucket:'my-static-jenkins-pipeline-devops')
        //           }
        //       }
        //  }
     }
     
}
