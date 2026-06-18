function jakarta_down --description 'Stops PostgreSQL and Docker services, then clears environment variables'
    # Shutdown target services
    echo (set_color yellow)"Stopping PostgreSQL service..."(set_color normal)
    sudo systemctl stop postgresql.service

    echo (set_color yellow)"Stopping Docker engine..."(set_color normal)
    sudo systemctl stop docker.service docker.socket

    # Erase global variables from current session
    set -e JAVA_HOME
    set -e MAVEN_HOME
    set -e WILDFLY_HOME
    set -e WILDFLY_DEPLOY

    # Remove WildFly bin from PATH array if present
    if set -l index (contains -i $HOME/.wildfly/wildfly-preview-40.0.0.Final/bin $PATH)
        set -e PATH[$index]
    end

    echo (set_color red)"Jakarta EE environment deactivated. Postgres and Docker services stopped!"(set_color normal)
end
