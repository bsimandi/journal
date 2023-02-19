# Permissions

On your first days, weeks, you will receive access and permissions for tools we use. This document is a summary of those.\
For most accounts we use MFA. Install Google Authenticator or similar on your cellphone.


## 1. Github

Github credentials are sent to your e-mail address. Create an account, and make sure you configure MFA.


## 2. Jira

To track tickets the team works on, we use Jira. Make sure you can login [here](https://gocurb.atlassian.net/jira/projects), and see the following projects:
- API
- CBT
- CRS
- CWA
- FE
- PS


## 3. Confluence

Most likely you have access to Confluence as you're reading this guide.


## 4. VPN

You'll receive AD credentials in DM. Please save them and go to https://vpn.gocurb.com/. Login there using your AD credentials, configure MFA. 
Install OpenVPN client from the link above on your computer and configure it using user-profile.


## 5. AWS

You will receive a username and a console password for both https://gocurb.signin.aws.amazon.com/console and https://ridecharge.signin.aws.amazon.com/console in DM.
After logging in, you should reset your password and don't forget to set up MFA.

### 5.1 MFA

You can configure MFA under `Security credentials`. When assigning an MFA device, make sure, the device name is <YOUR_USERNAME>@gocurb or <YOUR_USERNAME>@ridecharge.

### 5.2 Access keys

Under MFA, on the Security credentials page, set up your access keys, and download the csv. This will be needed for being able to open rails consoles on release environments on our different apps.

### 5.3 Dev1 Cluster

You'll receive a configuration (kubectl config), where you'll place your access keys from the previous section under `AWS_ACCESS_KEY` and `AWS_SECRET_KEY`.


## 6. Curb live accounts (release)

You'll receive a password for your Live account. You can login to http://live.release.gocurb.com.


## 7. Curb mobile app

In order to download the Curb mobile app from the Appcenter, ask the QA team for credentials. 
After you downloaded the app to your cellphone, set up an account.


## 8. Syslog server

In order to access servers, like log server (to see request examples), you should contact someone from the ops-team, and send them your public ssh key


## 9. New Relic

This is a monitoring tool, we send some errors from our rails apps to it (when exception is rescued for instance), and can view the errors easier. 
Also it has alerts so if an error is deployed (or some bad logic) we quickly know about it.
You can ask the ops team to provide credentials for you.