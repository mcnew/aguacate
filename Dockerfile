FROM tomcat:9-jdk8

ENV DIRECTORY_DATABASE=/var/lib/aguacate/database \
    DIRECTORY_SCRIPT=/var/lib/aguacate/script \
    DIRECTORY_CONFIGURATION=/var/lib/aguacate/configuration

RUN mkdir -p "$DIRECTORY_DATABASE" "$DIRECTORY_SCRIPT" "$DIRECTORY_CONFIGURATION" \
 && rm -rf $CATALINA_HOME/webapps/*
RUN curl -sSL -o $CATALINA_HOME/webapps/ROOT.war https://repo1.maven.org/maven2/net/sf/aguacate/aguacate/0.4.14/aguacate-0.4.14.war \
 && echo "dd79bbf191e5610f8fb4bfde76bbcb887ecab62e  $CATALINA_HOME/webapps/ROOT.war" | sha1sum -c - \
 && mkdir "$CATALINA_HOME/webapps/ROOT" \
 && cd "$CATALINA_HOME/webapps/ROOT" \
 && unzip -q "$CATALINA_HOME/webapps/ROOT.war"\
 && rm "$CATALINA_HOME/webapps/ROOT.war"
