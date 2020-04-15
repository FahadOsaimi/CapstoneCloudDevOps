pipeline {
     agent any
     stages {
         stage('Start') {
             steps {
                 sh 'echo "Hello World"'
                 sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
                 '''
             }
         }
        //  stage('Environment setup and lint tests') {
        //      steps {
        //          sh ' make all'       
        //      }
        //  }
         stage('Run Docker') {
             steps {
                 sh 'sudo docker build --tag=fahadosaimi/demolocal .'
                 sh 'sudo docker image ls'
                 sh 'sudo docker run fahadosaimi/demolocal'       
             }
         }   
         stage('Upload image to Docker Hub') {
             steps {
                 sh 'dockerpath=""'
                 sh 'echo "Docker ID and Image: $dockerpath"'
                 sh 'sudo docker push fahadosaimi/demolocal'       
             }
         }         


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
