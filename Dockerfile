FROM tomcat:10.1-jdk21

# Remove default ROOT app (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your application
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
