function jakarta_env --description 'Activates Jakarta EE environment and ensures Postgres is running'
    # PostgreSQL setup
    echo (set_color blue)"Checking PostgreSQL service..."(set_color normal)
    if not systemctl is-active --quiet postgresql.service
        echo (set_color yellow)"PostgreSQL is down. Starting it now..."(set_color normal)
        sudo systemctl start postgresql.service
    else
        echo (set_color green)"PostgreSQL is already running!"(set_color normal)
    end

    # Java and Maven config
    set -gx JAVA_HOME /usr/lib/jvm/default
    set -gx MAVEN_HOME /usr/share/maven

    # Wildfly config
    set -gx WILDFLY_HOME $HOME/.wildfly/wildfly-preview-40.0.0.Final
    set -gx WILDFLY_DEPLOY $WILDFLY_HOME/standalone/deployments

    # Wildfly path injection
    if not contains $WILDFLY_HOME/bin $PATH
        set -gx PATH $WILDFLY_HOME/bin $PATH
    end

    echo (set_color blue)"Jakarta EE/WildFly environment activated!"(set_color normal)
end
