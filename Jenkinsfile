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
		      sh 'mvn --version'
			     }
		   }
		   
		stage ("Clean and package")
           {
		   steps {
			  sh 'mvn clean package'
			     }    
		   }
		   
		stage ("DEPLOY to Tomcat")
		   { 
		   steps {
		       sh 'copy target\\SampleWebApplication.war \"${tomcatWeb}\\SampleWebApplication.war\"'
			     }
				 
		   }
        stage ("Start Tomcat Server")
            {
			steps {
             sleep(time:5,unit:"SECONDS")
             sh '${tomcatBin}\\catalina.sh'
			 sleep(time:100,unit:"SECONDS")
                  }	
             }				  
				 
	}
}
