# Project Title: Learning Project: Nextcloud Deployment Journey

## Overview

This repository documents my journey of deploying a Nextcloud instance, transitioning from a simple local Docker setup to a more complex, cloud-based configuration. This project served as a practical learning experience in deploying apps in the cloud using Docker, focusing on the path and growth over the destination.

## Purpose

The primary purpose of this project was to explore and understand the intricacies of containerized application deployment using Docker, Traefik, and Portainer. It began with a straightforward local environment and gradually scaled into a full-fledged cloud deployment.

## Acknowledgements

Special thanks to Raf Rasenberg, whose initial configurations for Traefik and Portainer provided a solid foundation for this project. The original setup from his project, described herehere(https://github.com/rafrasenberg/docker-traefik-portainer), has been significantly adapted to suit the needs of a Nextcloud deployment.

## Project Evolution

### Starting Point

The project kicked off with a basic Docker setup for Nextcloud, using standalone containers without any orchestration.

### Intermediate Steps

As my familiarity with Docker grew, I incorporated Docker Compose, Traefik for reverse proxying, and Portainer for easier container management. Each step added layers of complexity and learning opportunities, particularly in networking and secure configuration.

### Cloud Deployment

The final iteration was deployed in a cloud environment, fine-tuned for performance and security. This included SSL configuration, domain management with Cloudflare, and advanced Traefik features like automatic HTTPS redirection.

## Challenges and Resolutions

Throughout this journey, numerous challenges were encountered, such as network configuration issues, SSL/TLS certificate management, and optimizing Docker Compose setups for production environments. Each challenge was met with research and iterative testing, resulting in a robust setup.

## How to Navigate This Project

The repository is structured to reflect different stages of the project:

    `nextcloud-local/`: Contains Docker Compose files and configurations used during the initial development phases.
    `on-nextcloud-server/`: Includes configurations tailored for the cloud deployment.
    `core/`: Shared configurations for Traefik and Portainer.

Minimal setup instructions are provided, as the project's goal is not to offer a ready-to-deploy solution but to illustrate a learning process.

## License

This project is distributed under the MIT License, the same as the initial project by Raf Rasenberg. Modifications and additions are also included under this license.