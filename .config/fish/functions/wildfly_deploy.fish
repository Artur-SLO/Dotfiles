function wildfly_deploy --argument project --description 'Deploys the project to WildFly and opens it in the browser'
    # Test enviroment
    if test -z "$WILDFLY_DEPLOY"
        echo (set_color yellow)"Environment was not active. Activating now..."(set_color normal)
        jakarta_env
    end

    # Test project name
    if test -z "$project"
        echo (set_color red)"Error: Please provide the project name (e.g., wildfly_deploy marvin)"(set_color normal)
        return 1
    end

    # Checks if project has been compiled
    if not test -d (pwd)/target/$project
        echo (set_color red)"Error: target/$project directory not found. Run 'mvn package' first."(set_color normal)
        return 1
    end

    # Create the symbolic link and trigger deployment
    ln -sf (pwd)/target/$project $WILDFLY_DEPLOY/$project.war
    touch $WILDFLY_DEPLOY/$project.war.dodeploy

    echo (set_color green)"Deployment sent to WildFly for project: $project"(set_color normal)
    echo (set_color blue)"Opening http://localhost:8080/$project/ in the browser..."(set_color normal)

    # Open the project URL using the default system browser
    xdg-open "http://localhost:8080/$project/" &
end
