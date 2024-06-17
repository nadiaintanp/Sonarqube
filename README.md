# Sonarqube
Configuring sonarqube for production with docker compose

# Requirement
- **Docker** v26.1.4
- **Docker Compose** v2.27.1

# Feature
- [Sonarqube Community Branch Plugin version 1.14.0](https://github.com/mc1arke/sonarqube-community-branch-plugin?tab=readme-ov-file)

# Installation
1. Retrieve code and go to folder
    ```bash
    git clone https://github.com/nadiaintanp/sonarqube.git
    cd sonarqube
    chmod -R 777 data
    ```

2. Rename `.env-example` to `.env`

3. Open `.env` file

4. Configure value **SONAR_JDBC_URL**, **SONAR_JDBC_USERNAME** and **SONAR_JDBC_PASSWORD** to your database connection 

5. ### _[OPTIONAL -- Skip this step if you don't wanna follow my database configuration]_
    
    If you want to follow configuration, edit `compose.yml` file and comment out service with name `db` section and `volume` section. Also configure value of `.env` file like this.
    
    ```bash
    SONAR_JDBC_URL=jdbc:postgresql:/db:5432/sonarqube
    SONAR_JDBC_USERNAME=sonar
    SONAR_JDBC_PASSWORD=sonar
    ```
6. Change value of `<CUSTOM DOMAIN>` on last line of key `SONAR_CE_JAVAADDITIONALOPTS` to your specify hostname. Example: `https://my-hostname-choice.com`

7. Run this command
    ```bash
    docker compose up -d --build
    ```

# Troubleshoot
If you get some error regarding deployment, check [Issues](https://github.com/nadiaintanp/sonarqube/issues) tab