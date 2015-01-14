name "webserver"
description "Web Server"
run_list "role[base]","recipe[apache]"
default_attributes({
    "apache" => {
        "sites" => {
            "admin" => {
                "port" => 8000,
                "img"  => "http://kosantopal.com/wp-content/uploads/wordpress-admin-%C5%9Fifre-de%C4%9Fi%C5%9Ftirme.jpg"
            },
            "bears" => {
                "port" => 8001
            }
        }
    }
})