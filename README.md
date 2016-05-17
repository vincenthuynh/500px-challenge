# 500px-challenge

## Testing:
The project contains a Vagrantfile which can be used to test the module.
- At this time, provisioning needs to be done manually (refer to Runbook).

## Runbook:
I did not want to make assumptions on how my code would be deployed therefore I have provided a runbook to setup the server.

- As 'ubuntu' user
- sudo apt-get install -y git
- cd ~/
- git clone https://github.com/vincenthuynh/500px-challenge
- sudo bash 500px-challenge/scripts/setup.sh
- sudo puppet apply 500px-challenge/manifests/init.pp --modulepath 500px-challenge/modules:/etc/puppet/modules/

## Decisions:
- Used a roshi-server binary instead of building at run time due to issues with building the binary. This approach is more ideal to lock the version and save on provisioning time.
-


## Improvements:
- `scripts/setup.sh` is used to install necessary packages prior to configuring the server with Puppet. I would have liked to use Packer (https://www.packer.io/) to create a VM image with all necessary dependancies already installed for the server. This would decrease provisioning time and provide a version snapshot for the tools and dependancies
- `scripts/redis.sh` could also be omitted if Packer was used.
- Take advantage of the firewall puppet module to elaborate on rules for improved security
- I tested with an Ubuntu image that was provided by HashiCorp that had tools preinstalled (eg. puppet). Consider using a clean image.
- Could have become more familiar with `Upstart` and configurng the jobs.
