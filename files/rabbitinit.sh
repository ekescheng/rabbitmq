rabbitmq-server -detached
rabbitmq-plugins enable rabbitmq_management
rabbitmqctl add_vhost saicgormq
rabbitmqctl add_user saicgormq Saicgormq12#45
rabbitmqctl set_user_tags saicgormq administrator
rabbitmqctl add_user saicgormqmonitor saicgormqmonitor55
rabbitmqctl set_user_tags saicgormqmonitor monitoring
rabbitmqctl set_permissions -p saicgormq saicgormq ".*" ".*" ".*"
rabbitmqctl set_permissions -p saicgormq saicgormqmonitor "" "" ".*"
