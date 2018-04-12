### Hybrid Scale Set demo app on Ubuntu 16.04 ###

Simple self-contained Ubuntu autoscale example which includes a Python Bottle server to do work. By combining two VM scale sets  customers can leverage the value of low-priority scale with guarenteed instances. 
The template include the following:
1. Low priority VM Scale Set with eviction policy set to delete (non default) and autoscale (lpVmss)
2. A second VM Scale Set (regVmss) serving as a safety net for the case where low priority instances can't be created.
3. A standard SLB on top of both scale sets serving as a single point of entry for incoming web traffic as well as NAT (for SSH)

Instructions: 
- After the template is deployed look at the resource group public IP address resource (in portal or resources explorer). 
- Browse to the website of vm#0 (port 80), which shows the current backend VM name.
- To start doing work on the first VM add a /do_work to the URI
- After a few minutes the VM Scale Set capacity will increase. 
- You can stop doing work by browsing to {publicIP}/stop_work.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fzivraf%2FLowPri%2Fmaster%2F301-vmss-low-pri-bottle-hybrid-autoscale%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
    </a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fzivraf%2FLowPri%2Fmaster%2F301-vmss-low-pri-bottle-hybrid-autoscale%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
