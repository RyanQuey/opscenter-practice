# https://docs.datastax.com/en/install/6.8/install/opscInstallTar.html
curl -L http://downloads.datastax.com/enterprise/datastax-agent-6.8.4.tar.gz | tar xz



~/lib/dse-6.8.0/bin/dse cassandra -s -g -k


# setup agent
# https://docs.datastax.com/en/install/6.8/install/opscagentInstallManual.html
./bin/datastax-agent

ip will be 127.0.0.1
ssl will be 0

# then wait for agent to get up, and then opscenter will finally see it




echo "success!"
