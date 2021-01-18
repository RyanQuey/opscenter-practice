# https://stackoverflow.com/a/28978742/6952495
echo "creating ccm cluster..."
# ccm create --dse -v 6.8.4 --dse-username=cassandra --dse-password=cassandra -o 6.8.4 -n 2 dse684
ccm create --dse -v 6.8.4 --dse-username=cassandra --dse-password=cassandra -n 2 dse684
echo "starting ccm cluster..."
ccm start
echo "done"
# NOTE currently not working, getting this:
# Current cluster is now: dse684
# Traceback (most recent call last):
#   File "/home/ubuntu/.local/bin/ccm", line 112, in <module>
#     cmd.run()
#   File "/home/ubuntu/.local/lib/python3.6/site-packages/ccmlib/cmds/cluster_cmds.py", line 510, in run
#     allow_root=self.options.allow_root) is None:
#   File "/home/ubuntu/.local/lib/python3.6/site-packages/ccmlib/dse_cluster.py", line 78, in start
#     started = super(DseCluster, self).start(no_wait, verbose, wait_for_binary_proto, wait_other_notice, jvm_args, profile_options, quiet_start=quiet_start, allow_root=allow_root, timeout=180)
#   File "/home/ubuntu/.local/lib/python3.6/site-packages/ccmlib/cluster.py", line 416, in start
#     node.watch_log_for(start_message, timeout=kwargs.get('timeout',60), process=p, verbose=verbose, from_mark=mark)
#   File "/home/ubuntu/.local/lib/python3.6/site-packages/ccmlib/node.py", line 510, in watch_log_for
#     raise TimeoutError(time.strftime("%d %b %Y %H:%M:%S", time.gmtime()) + " [" + self.name + "] Missing: " + str([e.pattern for e in tofind]) + ":\n" + reads[:50] + ".....\nSee {} for remainder".format(filename))
# ccmlib.node.TimeoutError: 19 Sep 2020 06:39:14 [node1] Missing: ['Starting listening for CQL clients']:
# INFO  [main] 2020-09-19 06:36:16,249  DseModule.ja.....
# See system.log for remainder

# maybe the arguments are in a different order since that answer? note that I cannot find opscenter 


# make sure to cleanup with: ccm remove
