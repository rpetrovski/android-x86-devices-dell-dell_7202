Device configuration for Dell Lattitude 12 rugged tablet.

To make iso:

###### 1. checkout android_x86 marshmallow:
```
 $ mkdir android-x86
 $ cd android-x86
 $ repo init -u git://gitscm.sf.net/gitroot/android-x86/manifest -b marshmallow-x86
 $ repo sync
```
###### 2. checkout this repository
```
 $ mkdir -p device/dell/dell_7202
 $ git clone git@github.com:rpetrovski/android-x86-devices-dell-dell_7202.git device/dell/dell_7202
```
###### 3. get [uqmi](android-x86-external-uqmi)
###### 4. build iso image:
```
 $ . build/envsetup.sh
 $ lunch dell_7202-userdebug
 m iso_img
```
