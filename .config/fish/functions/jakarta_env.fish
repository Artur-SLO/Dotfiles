function jakarta_env --description 'Activates Jakarta EE environment and ensures Postgres and Docker are running'
    # PostgreSQL service management
    echo (set_color blue)"Checking PostgreSQL service..."(set_color normal)
    if not systemctl is-active --quiet postgresql.service
        echo (set_color yellow)"PostgreSQL is down. Starting it now..."(set_color normal)
        sudo systemctl start postgresql.service
    else
        echo (set_color green)"PostgreSQL is already running!"(set_color normal)
    end

    # Docker engine management
    echo (set_color blue)"Checking Docker service..."(set_color normal)
    if not systemctl is-active --quiet docker.service
        echo (set_color yellow)"Docker is down. Starting the Docker engine now..."(set_color normal)
        sudo systemctl start docker.service
    else
        echo (set_color green)"Docker engine is already running!"(set_color normal)
    end

    # Cross-platform Java path resolution (Arch / Fedora)
    if test -d /usr/lib/jvm/default
        set -gx JAVA_HOME /usr/lib/jvm/default # Arch Linux
    else
        set -gx JAVA_HOME /usr/lib/jvm/java-25-openjdk # Fedora
    end

    set -gx MAVEN_HOME /usr/share/maven

    # Wildfly config
    set -gx WILDFLY_HOME $HOME/.wildfly/wildfly-preview-40.0.0.Final
    set -gx WILDFLY_DEPLOY $WILDFLY_HOME/standalone/deployments

    # Safely prepend Wildfly binaries to PATH
    if not contains $WILDFLY_HOME/bin $PATH
        set -gx PATH $WILDFLY_HOME/bin $PATH
    end

    echo (set_color green)"Jakarta EE/WildFly environment activated successfully!"(set_color normal)
end
