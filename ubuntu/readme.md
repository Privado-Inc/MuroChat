### Installation Guide for Ubuntu 18 & above

- It is recommended to install the application on a new machine.
- Copy the `ubuntu` folder to the machine.
- Navigate to the folder using `cd <path of the ubuntu folder>`.
- Update the .env variables according to your environment.
- Run `bash installation.sh`:
  - This will download Docker, assuming the machine is new.
  - Once Docker is installed, it will start Docker Compose.
- Now, you will be able to access the application on port 80 of the machine, or you can map the given domain in the env to the hostname of the machine and access the application.
  - If you want to change the port, you can modify it in the `docker-compose.yml` file, exposing the port for the `murochat-frontend` container.
