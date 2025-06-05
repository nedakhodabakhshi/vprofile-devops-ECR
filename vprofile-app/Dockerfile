FROM tomcat:8.5

# Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR file (you should place it in the same folder as this Dockerfile)
COPY target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080
