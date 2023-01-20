# esim

This project contains the steps and information needed to check if your iOS device
is compatible with eSIM technology. eSIM, or Embedded SIM, is a new type of SIM card that is
embedded within the device itself, rather than being a physical card that can be inserted and removed.
This allows for more flexibility in activating and switching between different mobile plans.

Compatibility Check:
You can integrate eSIM functionality into your iOS app, please follow these steps:
Step 1:
Request for eSIM entitlement using your developer account.

Step 2:
Apple will approve the entitlement after some time. You can check if Apple has approved the entitlement from your app profile setting

Step 3:
Download the App Dev and Distribution profile (By selecting eSIM entitlement as Step #2).

Step 4:
Update your Info.plist with below keys and value

<key>CarrierDescriptors</key>
<array>
<dict>
<key>GID1</key>
<string>***</string>
<key>GID2</key>
<string>***</string>
<key>MCC</key> //Country Code
<string>***</string>
<key>MNC</key> //Network Code
<string>***</string>
</dict>
</array>

You can find GID1, GID2, MCC, and MNC for eSIM compatibility from the following sources:

Mobile network operators - You can contact your mobile network operator and ask for the GID1, GID2, MCC, and MNC for your specific eSIM card.
Online eSIM providers - Many online eSIM providers, such as Truphone, Twilio, and Unlocator, will provide the GID1, GID2, MCC, and MNC for their eSIM cards on their websites.
Device manufacturers - Some device manufacturers, such as Apple and Samsung, will provide the GID1, GID2, MCC, and MNC for their eSIM-compatible devices on their website or in the device's user manual.
eSIM databases - There are online databases, such as esimdb.com, that provide information on eSIM cards and their GID1, GID2, MCC, and MNC.

It is important to note that eSIM compatibility can vary depending on the mobile network operator
and device, so it is important to check with the specific provider or manufacturer for the most
accurate information.

Step 5:
Add eSIM compatibility code to AppDelegate file.


Conclusion

With these steps, you can now check if your iOS device is compatible with eSIM,
activate eSIM and switch between eSIM and physical SIM.

Referral link:
https://developer.apple.com/documentation/coretelephony?changes=latest_minor


