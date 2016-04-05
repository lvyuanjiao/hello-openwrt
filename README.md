# hello-openwrt

```
cd {OPENWRT_SDK_PATH}/package
git clone https://github.com/lvyuanjiao/hello-openwrt
git checkout cpp #for cpp supported
make menuconfig
```
check hello-openwrt under Utilities section

````
make package/hello-openwrt/compile
````

you will see the ipk file under bin folder
