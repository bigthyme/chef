# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "bigthyme"
client_key               "#{current_dir}/bigthyme.pem"
validation_client_name   "bigthyme-validator"
validation_key           "#{current_dir}/bigthyme-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/bigthyme"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
