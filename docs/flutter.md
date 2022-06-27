## Install Flutter
Use the AUR for installing Flutter:

```
yay -S flutter
```
(yay enables you to install AUR packages.)

Choose Openjdk 8 or 10. Otherwise you’ll get an error with the Android tools: Failed to install android-sdk: “java.lang.NoClassDefFoundError: javax/xml/bind/annotation/XmlSchema”.

### Fix Permissions
Create a new group flutterusers, add the default user to the group, then change permissions on the folder /opt/flutter.

```
sudo groupadd flutterusers
sudo gpasswd -a $USER flutterusers
sudo chown -R :flutterusers /opt/flutter
sudo chmod -R g+w /opt/flutter/
```
If you still get permission denied errors, you can also change the permissions of the /opt/flutter folder to your $USER:

```
sudo chown -R $USER:flutterusers /opt/flutter
```

## Install Android SDK and Tools
While we can avoid installing the heavy Android Studio program, we still need the SDK Manager.

You can install the SDK Manager command line tool as a standalone package. We also need the platform tools for the Android emulator and an SDK platform.

```
yay -S android-sdk android-sdk-platform-tools android-sdk-build-tools
```
We need an Android platform, too. Either use the AUR:

```
yay -S android-platform # installs the latest
```
Or use the sdkmanager (see below).

Add the following environment variables to your shell, see here:

```
export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'
```
Don’t forget to add this to your shell profile file (.bashrc or similar) to make the Android tools work across reboots.

In fish shell:

set -Ux JAVA_OPTS '-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'


### Fix User Permissions
The AUR installs the Android tools into /opt/android-sdk. The directory has root permissions, so we’ll need to fix that:

sudo groupadd android-sdk
sudo gpasswd -a <user> android-sdk
sudo setfacl -R -m g:android-sdk:rwx /opt/android-sdk
sudo setfacl -d -m g:android-sdk:rwX /opt/android-sdk
You’ll probably also have to set up environment variables for ANDROID_SDK_ROOT and JAVA_HOME.

The Java version is under /usr/lib/jvm, in the case of version 10, it’s this:

export JAVA_HOME='/usr/lib/jvm/java-10-openjdk'
Check find /usr/lib/jvm to see the exact path.

Don’t forget to add the environment variable to your bash profile file (.bashrc or similar).

For fish shell:

set -Ux JAVA_HOME /usr/lib/jvm/java-10-openjdk
The variable ANDROID_SDK_ROOT should be set to /opt/android-sdk:

export ANDROID_SDK_ROOT='/opt/android-sdk'
or

set -Ux ANDROID_SDK_ROOT /opt/android-sdk


## Android Emulator
First, you’ll need to install the required Android image with sdkmanager:

sdkmanager --list
Then install a system image, for example:

sdkmanager --install "system-images;android-29;default;x86"
(If you didn’t install an Android platform via the AUR, use the sdkmanager to install a platform as well: sdkmanager --install "platforms;android-29".)

Now you can create an emulator:

avdmanager create avd -n <name> -k "system-images;android-29;default;x86"
(Replace <name> with the name you want to give the emulator.)

See avdmanager for more infos.

Here’s a handy cheat sheet on GitHub.

You might get errors that “there is no space lift on device”. The error indicates that your /tmp folder is full: I am getting a no space left on device error.

Try clearing the folder or increase the available space in /tmp (instructions in link above).

Add the emulator path to your user paths, for example, in Bash:

## Android SDK
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/bin/
export PATH=$PATH:$ANDROID_HOME/tools/
PATH=$ANDROID_HOME/emulator:$PATH
(Adjust to your needs.)

In my setup, I added the platform-tools and emulator:

set -U fish_user_paths /opt/android-sdk/emulator $fish_user_paths
set -U fish_user_paths /opt/android-sdk/platform-tools $fish_user_paths
It seems like sdkmanager adds some paths automatically. Make sure to check your installation to see what’s required.

For example, the error “PANIC: Missing emulator engine program for ‘x86’ CPUS.” indicates that the emulator program is not in your path.

In fish, you can check your path variables like this:

echo $fish_user_paths | tr " " "\n" | nl
echo $PATH | tr " " "\n" | nl
In Bash, there is no $fish_user_path but the second command should work, too.

### Run Android Emulator
emulator @<name-of-the-generated-avd>
Run Flutter
First, let’s check if you have accepted all licenses: flutter doctor --android-licenses.

Then run flutter doctor -v.

Ideally, everything should work except Android Studio.

If not, make sure that you have all necessary tools on your machine and that you’ve set the environment variables.

