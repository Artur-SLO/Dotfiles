function jakarta_env --description 'Configures the Jakarta EE/WildFly development environment'
    # Java and maven
    set -x JAVA_HOME /usr/lib/jvm/default
    set -x MAVEN_HOME /usr/share/maven

    # Wildfly
    set -x WILDFLY_HOME $HOME/.wildfly/wildfly-preview-40.0.0.Final
    set -x WILDFLY_DEPLOY $WILDFLY_HOME/standalone/deployments

    # Adding binaries
    fish_add_path $WILDFLY_HOME/bin

    echo (set_color green)"Jakarta EE/WildFly environment activated!"(set_color normal)
end

