# POSTGRES devcontainer for vscode

This project contains the necessary configuration to run vscode, postgres and adminer each in its container.
Once openend in vscode it is possible to run the command "open in devcontainer" to open a remote vscode instance inside docker and use psql from the terminal or adminer from localhost:8080.

# *WARNING* - Files not included in the repo
For obvious security reason I didn't commit sensitive informations, following is the list of files to be added manually.

- .devcontainer/.secrets/password.txt

    a simple text file containing the password for the user postgres, this password is used by docker compose to configure the postgres user's password.

- .devcontainer/.secrets/.pgpass
    
    a simple text file containing the following string:

        postgres:5432:*:postgres:<SAME PASSWORD OF PASSWORD.TXT>
    
    this will be:
    - copied to /home/vscode
    - its permissions changed to 600

    by the script .devcontainer/on-create.sh upon building.
    This will allow to run:

        psql -h postgres -U postgres
    
    without having to type the password.


