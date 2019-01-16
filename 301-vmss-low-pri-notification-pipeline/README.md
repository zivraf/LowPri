### Low-priority, delete on eviction, and autoscale demo app on Ubuntu 16.04 ###

A Low-priority VM scale set with eviction policy set to delete and autoscaling. 
In addition, a Python Bottle server to do work. The VM Scale Set scales up when average CPU across all VMs > 60%, scales down when avg CPU < 30%.
With evision policy set to delete, autoscaling will compensate for evicted (deleted) VMs i nthe scale set. 
 
- After it is deployed look at the resource group public IP address resource (in portal or resources explorer). Get the IP or domain name.
- Browse to the website of vm#0 (port 9000), which shows the current backend VM name.
- To start doing work on the first VM browse to dns:9000/do_work
- After a few minutes the VM Scale Set capacity will increase. Note that the first scale out takes longer than subsequent ones whlie the autoscale pipeline gets initialized (i.e. wait up to half an hour before you concluding there's a problem).
- You can stop doing work by browsing to dns:9000/stop_work.


