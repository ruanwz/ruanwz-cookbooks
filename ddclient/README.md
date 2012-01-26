DESCRIPTION
===========
Configures ddclient for connecting to DynDNS or other dynamic dns providers supported by ddclient. ddclient runs as a daemon.

REQUIREMENTS
============
Platform with a package named 'ddclient'. Tested with Ubuntu 10.04.

SSL support requires the 'libio-socket-ssl-perl' package.

RECIPES
=======
default
-------
The `default` recipe installs ddclient and fills out the `/etc/ddclient.conf` and `/etc/default/ddclient`.

If the `ssl` attribute is set to `yes` (the default), then the recipe will also install the `libio-socket-ssl-perl` package.

ATTRIBUTES
==========

The following attributes must be set by users:

    # hostname to update
    node[:ddclient][:domain]   = "mylivesite.dyndns.org"

    # dyndns user name
    node[:ddclient][:login]   = "dyndns_user"

    # dyndns user name
    node[:ddclient][:password]   = "dyndns_password"

You may wish to set the `use` attribute to reflect either the externally
visible IP address or the IP address on an Ethernet interface

    # Set IP via Dyn CheckIP server
    node[:ddclient][:use] = "web, web=checkip.dyndns.com, web-skip='IP Address'"

    # ... or set IP via hardware interface
    node[:ddclient][:use] = "if, if=eth0"

The following attributes have sensible defaults:

    # interval between updates (seconds)
    node[:ddclient][:interval] = "21600" #seconds

    # whether to send the update via SSL
    node[:ddclient][:ssl] = "yes"

    # Internal use -- do not change
    node[:ddclient][:protocol] = "dyndns2"
    node[:ddclient][:server] = "members.dyndns.org"

USAGE
=====
You will need to set the attributes for your DynDNS user, password and domain. Check the `attributes/default.rb` for other available attributes (note the 6 hour update interval). Here is an example role:

    name "ddclient"
    description "ddclient"
    
    run_list [
      "recipe[ddclient]"
    ]
    
    override_attributes(
      "ddclient" => {
        "login" => "myuser",
        "password" => "mypassword,
        "domain" => "mydomain.dyndns-server.com"
      }
    )

LICENSE AND AUTHOR
==================

Author:: David Ruan (<ruanwz@gmail.com>)

Author:: Matt Ray (<matt@opscode.com>)

Author:: David Golden (<xdg@xdg.me>)

Copyright:: David Ruan (<ruanwz@gmail.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
