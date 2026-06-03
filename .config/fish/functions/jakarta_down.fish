function jakarta_down --description 'Stops PostgreSQL and clears Jakarta environment variables'
    echo (set_color yellow)"Stopping PostgreSQL service..."(set_color normal)
    sudo systemctl stop postgresql.service

    # Erase global environment variables
    set -e JAVA_HOME
    set -e MAVEN_HOME
    set -e WILDFLY_HOME
    set -e WILDFLY_DEPLOY

    # Remove WildFly from PATH if present
    if set -l index (contains -i $HOME/.wildfly/wildfly-preview-40.0.0.Final/bin $PATH)
        set -e PATH[$index]
    end

    echo (set_color red)"Jakarta EE environment deactivated and PostgreSQL stopped!"(set_color normal)
end
