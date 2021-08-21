pipeline {
    agent any 
    tools { 
        maven 'Maven' 
      
    }
stages { 
     
 //stage('Preparation') { 
 //   steps {
// for display purpose

      // Get some code from a GitHub repository

   //  git 'https://github.com/hitman-045/maven-helloworld.git'

      // Get the Maven tool.
     
 // ** NOTE: This 'M3' Maven tool must be configured
 
     // **       in the global configuration.   
     //}
   //}

   stage('Build') {
       steps {
       // Run the maven build

      //if (isUnix()) {
         sh 'mvn -Dmaven.test.failure.ignore=true install'
      //} 
      //else {
      //   bat(/"${mvnHome}\bin\mvn" -Dmaven.test.failure.ignore clean package/)
       }
//}
   }
 
  stage('Unit Test Results') {
      steps {
      junit '**/target/surefire-reports/TEST-*.xml'
      
      }
 }
  
     stage('Artifact upload') {
      steps {
     nexusPublisher nexusInstanceId: '1234', nexusRepositoryId: 'releases', packages: [[$class: 'MavenPackage', mavenAssetList: [[classifier: '', extension: '', filePath: '/maven-helloworld/server/target/server.jar']], mavenCoordinate: [artifactId: 'maven-project', groupId: 'com.example.maven-project', packaging: 'war', version: '$BUILD_NUMBER']]]
      }
 }
   
}
post {
        success {
            archiveArtifacts '/maven-helloworld/webapp/target/*.war'
        }
        failure {
            mail to:"sumanthsainooka@gmail.com", subject:"FAILURE: ${currentBuild.fullDisplayName}", body: "Build failed"
        }
    }       
}
