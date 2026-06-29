# VaultSDK Development

The VaultSDK repo does not contain sample application code within it's repo. To develop changes to the SDK it is recommended to use the sample app provided to clients as the test harness. This can be done by creating a workspace that includes the sdk and sample application as separate targets. This helps to keep the sample app code independent of the sdk and avoids having to maintain two sample apps, one for development and one for publication to clients.

### Bootstrapping Sampe App Workspace

To create the development environment execute the following script.

`./scripts/bootstrap-sample.sh`

This will checkout the sample project at relative location to this repo `../vaultsdk-sample` and generate an xcworkspace in the `sample` directory.

### SDK Deployment

SDK deployments are executed using a Bitrise workflow. This currently setup to trigger on a push to `master`. For a successful deployment the version will need to have been incremented on the VaultSDK target.

The VaultSDK is deployed by executing the script `../scripts/deploy.sh` from the root directory of the project. 

### Development Flow 

After pushing a new version of the SDK, a new version of the sample app should be deployed pulling in the newly published version of the VaultSDK. This should be tested in the `../vaultsdk-sample/VaultSDKSample.xcworkspace` after running pod update.
