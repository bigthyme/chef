LOCATION = "/var/etc"

default["motd"]["company"] = "Chef"

template "#{LOCATION}/motd" do
  source "motd.erb"
  mode "0644"
  action :create_if_missing
end