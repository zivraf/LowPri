### Low-priority, delete on eviction, and autoscale with no rules demo app on Ubuntu 16.04 ###

A Low-priority VM scale set (spanning tenants) with eviction policy set to delete and autoscaling with a Python Bottle server to do some fake work. 

- Spanning VMSS is meant to support large deployments. However, combined with low-priority, it enables using capacity from all capacity in the region (or Availability Zone).
- Autoscaling without any scaling rules (just setting the minimum) will compensate for every evicted VM. 
- NOTE: Using autoscaling require setting eviction policy to 'delete'.
With evision policy set to delete, autoscaling will compensate for evicted (deleted) VMs in the scale set. 
 
- After it is deployed look at the resource group public IP address resource (in portal or resources explorer). Get the IP or domain name.
- Browse to the website of vm#0 (port 9000), which shows the current back-end VM name.
- To start doing work on the first VM browse to dns:9000/do_work
- You can stop doing work by browsing to dns:9000/stop_work.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fzivraf%2FLowPri%2Fmaster%2F201-vmss-low-pri-bottle-autoscale-no-rules%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
    </a>

