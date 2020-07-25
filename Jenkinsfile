def tomcatWeb = 'C:\\Users\\Adarsh\\apache-tomcat-7.0.105\\webapps'
def tomcatBin = 'C:\\Users\\Adarsh\\apache-tomcat-7.0.105\\bin'

pipeline {

    agent any

    tools {
        maven 'apache-maven-3.6.3'
		  }
		  
    stages {
	
	      stage ("Print variable") 
		  {
           steps {
              echo "My tomcatWebvariable is ${tomcatWeb}"
			  echo "My tomcatBinvariable is ${tomcatBin}"
                }
		  }
	
	
	
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
		   
		stage ("DEPLOY to Tomcat")
		   { 
		   steps {
		       bat 'mvn tomcat7:deploy'
			     }
				 
		   }
        stage ("Start Tomcat Server")
            {
			steps {
             sleep(time:5,unit:"SECONDS")
             bat 'mvn tomcat7:run'
                  }	
             }				  
				 
	}
}
