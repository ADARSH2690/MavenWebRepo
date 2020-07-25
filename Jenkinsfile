pipeline {
    agent any
    tools {
        
        maven 'apache-maven-3.6.3'
    }
    stages {
        stage ("VERSION")
		   {
		   steps {
		      bat 'mvn --version'
			     }
		   }
		   
		stage ("Clean and package")
           {
		   steps {
			  bat 'mvn clean package'
			     }    
		   }
		   }
    }
