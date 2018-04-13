#!/bin/sh 

cat > $CATALINA_HOME/webapps/ROOT/WEB-INF/dubbo.properties <<EOF
dubbo.registry.address=$ZK_HOST
dubbo.admin.root.password=$DUBBO_ROOT_PWD
dubbo.admin.guest.password=$DUBBO_GUEST_PWD
EOF

catalina.sh run
