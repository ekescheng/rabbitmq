rabbitmq-server -detached
sleep 3
rabbitmq-plugins enable rabbitmq_management
rabbitmqctl add_vhost saicgormq
rabbitmqctl add_user  admin Admin12#45
rabbitmqctl set_user_tags admin administrator
rabbitmqctl add_user saicgormq Saicgormq12#45
rabbitmqctl set_user_tags saicgormq administrator
rabbitmqctl add_user saicgormqmonitor saicgormqmonitor55
rabbitmqctl set_user_tags saicgormqmonitor monitoring
rabbitmqctl set_permissions -p "/" admin ".*" ".*" ".*"
rabbitmqctl set_permissions -p saicgormq saicgormq ".*" ".*" ".*"
rabbitmqctl set_permissions -p saicgormq saicgormqmonitor "" "" ".*"
rabbitmqctl delete_user guest
rm -rf /var/lib/rabbitmq/.erlang.cookie
echo "vxZhJUa95q1+W5xTuJO/xA==" > /var/lib/rabbitmq/.erlang.cookie
chown -R rabbitmq:rabbitmq /var/lib/rabbitmq
sleep 1
rabbitmqctl stop
sleep 3
rabbitmq-server -detached
