# Constants
WEB_PATH = "/var/www"

# install httpd
package "httpd" do
    action :install
end

service "httpd" do
    action [:enable, :start]
end

cookbook_file "#{WEB_PATH}/html/index.html" do
    source "index.html"
    mode "0644"
end
