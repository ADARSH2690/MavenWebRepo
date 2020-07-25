def tomcatWeb = 'C:\\Users\Adarsh\\apache-tomcat-7.0.105\\webapps'
def tomcatBin = 'C:\\Users\Adarsh\\apache-tomcat-7.0.105\\bin'

pipeline {

    agent any

    tools {
        maven 'apache-maven-3.6.3'
		  }
		  
    stages {
	    stage ("VERSION")
		   {
		   steps {
		      sh "mvn --version"
			     }
		   }
		   
		stage ("Clean and package")
           {
		   steps {
			  sh "mvn clean package"
			     }    
		   }
		   
		stage ("DEPLOY to Tomcat")
		   { 
		   steps {
		       sh "copy target\\SampleWebApplication.war \"${tomcatWeb}\\SampleWebApplication.war\""
			     }
				 
		   }
        stage ("Start Tomcat Server")
            {
			steps {
             sleep(time:5,unit:"SECONDS")
             sh "${tomcatBin}\\catalina.sh"
			 sleep(time:100,unit:"SECONDS")
                  }	
             }				  
				 
	}
}
