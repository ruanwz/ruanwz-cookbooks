default[:ddclient][:domain]   = "mylivesite.dyndns.org"
default[:ddclient][:login]   = "dyndns_user"
default[:ddclient][:password]   = "dyndns_password"

default[:ddclient][:protocol] = "dyndns2"
default[:ddclient][:use] = "web, web=checkip.dyndns.com, web-skip='IP Address'"
default[:ddclient][:server] = "members.dyndns.org"
default[:ddclient][:interval] = "21600" #seconds
