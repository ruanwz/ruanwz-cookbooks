DESCRIPTION
===========
Configures ddclient for connecting to DynDNS or other dynamic dns providers supported by ddclient. ddclient runs as a daemon.

REQUIREMENTS
============
Platform with a package named 'ddclient'. Tested with Ubuntu 10.04.

RECIPES
=======
default
-------
The `default` recipe installs ddclient and fills out the `/etc/ddclient.conf` and `/etc/default/ddclient`.

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
