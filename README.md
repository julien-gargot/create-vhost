# create_vhost.sh

A sh script to automate creation of vhost on unix system.

## What it does

By default, it creates a ``yourdomain.ext.conf`` file in ``/etc/httpd/conf/vhost/`` and adds a localhost redirection to ``/etc/hosts``.

Please, take the time to configure the script with your directories paths.

## How to use

Simply execute the script with ``yourdomain.ext`` as a parameter.

For an everyday use, I place my scripts in ``~/.sh/`` and use an alias ``createVhost`` that ``sudo ~/.sh/create_vhost.sh'``.

Then you can run

    createVhost yourdomain.ext

*Don’t forget to relaunch apache after that.*

## TODO

- Check if the redirection already exist in the hosts file before adding it.
- Check if the vhost configuration already exist before create it.
- In the previous case, ask to the user what to do.
- Add the possibility to overide default configuration with multiples parameters.
