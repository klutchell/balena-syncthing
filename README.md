# balena-syncthing

[Syncthing](https://syncthing.net/) replaces proprietary sync and cloud services with something open, trustworthy and decentralized.

## Hardware Required

- Raspberry Pi 3/4 (64-bit)
- 32GB MicroSD card or larger

## Getting Started

You can one-click-deploy this project to balena using the button below:

[![deploy with balena](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/klutchell/balena-syncthing)

## Manual Deployment

Alternatively, deployment can be carried out by manually creating a [balenaCloud account](https://dashboard.balena-cloud.com) and application,
flashing a device, downloading the project and pushing it via the [balena CLI](https://github.com/balena-io/balena-cli).

### Application Environment Variables

Application environment variables apply to all services within the application, and can be applied fleet-wide to apply to multiple devices.

| Name           | Description                                                                                                       |
| -------------- | ----------------------------------------------------------------------------------------------------------------- |
| `TZ`           | Inform services of the [timezone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) in your location. |
| `SET_HOSTNAME` | Set a custom hostname on application start. Default is `syncthing`.                                               |

## Usage

Once your device joins the fleet you'll need to allow some time for it to download the various services.

When it's done you should be able to access the access the app at <http://syncthing.local>.

Documentation for Syncthing can be found at <https://docs.syncthing.net/>.

Documentation for the Docker image can be found at <https://docs.linuxserver.io/images/docker-syncthing>.

## Contributing

Please open an issue or submit a pull request with any features, fixes, or changes.

## Acknowledgements

Syncthing Docker image is provided by [linuxserver.io](https://www.linuxserver.io/).
