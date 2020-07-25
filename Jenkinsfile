pipeline {
    agent any
    tools {
        
        maven 'apache-maven-3.6.3'
    }
    stages {
        stage ("VERSION")
		   {
		   steps {
		      sh 'mvn --version'
			     }
		   }
		   
		stage ("Clean and package")
           {
		   steps {
			  sh 'mvn clean package'
			     }    
		   }
		   }
    }
