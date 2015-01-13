# Constants
WEB_PATH = "/var/www"

# apache packages
package "httpd" do
    action :install
end

service "httpd" do
    action [:enable, :start]
end

# # try node
# package "" do
# end

cookbook_file "#{WEB_PATH}/html/index.html" do
    source "index.html"
    mode "0644"
    notifies :reload, "service[httpd]", :delayed
end
