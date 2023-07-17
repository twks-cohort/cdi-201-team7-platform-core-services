<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/>
	</p>
  <br />
  <a href="https://aws.amazon.com"><img src="https://img.shields.io/badge/-deployed-blank.svg?style=social&logo=amazon"></a>
  <br />
  <h3>cohort-base-platform-eks-core-services</h3>
    <a href="https://app.circleci.com/pipelines/github/ThoughtWorks-DPS/cohort-base-platform-eks-core-services"><img src="https://circleci.com/gh/ThoughtWorks-DPS/cohort-base-platform-eks-core-services.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
</div>
<br />


## current configuration

* metrics-server
* kube-state-metrics
* cluster-autoscaler
* ns: lab-system
 * role: admin-clusterrole

### version updates

A nightly job runs health and versions checks. View log output for new version information.  

### lab-system

The `lab-system` namespace is reserved for the platform product teams use with cluster-wide services and testing.  

### admin-clusterrole

The `admin-clusterrole` is created with the default system:admin permissions and bound to the Github team group definition `ThoughtWorks-DPS/twdps-core-labs-team` to enable team members admin access when logging in via the dpscli platform tool.  

## Maintainers notes

**nightly job** include node refresh. 1/4 of nodes are cordened, drained, then deleted. The ASG will replce with a fresh copy of the ami defined in the current asg. Note, this it not the same as the lastest available AMI. Run the full pipeline to create a new asg wth the latest, patched version of the aws eks optimized node.  

**aws_eks_liveness_probe_version** set to v2.4.0: The default version expected by the version of the efs-csi-driver being installed would be v2.2.0 however this throws continuous `I0209 14:51:20.515055       1 connection.go:153] Connecting to unix:///csi/csi.sock` errors. The same version of the liveness probe is being used by the ebs-csi EKS addon. See the cohort-base-platform-eks-base repository for the current test of manually overriding that version.  

**sonobuoy conformance test** has been commented out in the pipeline. We've previously demonstrated this as part of core services however, argueably the better time to introduce is when you begin to deploy your own custom resource definitions.  
