/* Auto-generated readme for released targets ! */

Release information
Author            : bob
Time              : 2020-09-10 10:34:20
Version           : v0.0.1.0
Target            : linux-euicc-general-9x07-release
Environment       : prod
Branch            : linux-redteaready-7xNetworks
Git Hash          : 1c232537f64aa4691a9ab784b1ffc94544188401
STANDARD          : n

Description of directories
app_shells        : Some shell scripts for autoly run our own appliacations
app_targets       : Some app targets, which can be pushed into module directly or uploaded to OTA server
ubi_flash_targets : A flash ubi image, which can be downloaded into terminal by flash tool(e.g. QFlash tool) only
ubi_ota_targets   : A OTA ubi image, which can be uploaded to OTA server; It's name looks like agent/monitor/libcomm.so which accord with OTA file name requirement 

Manual installation tips
1.Copy linux-euicc-general-9x07-release-prod-targets-v0.0.1.0-open-20200910.zip into your debug computer;
2.Unzip linux-euicc-general-9x07-release-prod-targets-v0.0.1.0-open-20200910.zip with cmd [ unzip linux-euicc-general-9x07-release-prod-targets-v0.0.1.0-open-20200910.zip ];
3.Read doc in ./release/README.txt which you are reading;
4.Connect your target device with USB adb;
5.Enter ./release with cmd [ cd ./release ];
6.Run [ ./adb-push.sh ] which located in ./release to push all targes into target device with adb;
7.Reboot target device to autorun new target applications.

