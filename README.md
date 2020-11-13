# 使用navicat
## 官网下载https://www.navicat.com.cn/download/direct-download?product=navicat15-premium-cs.AppImage&location=1
## 正常使用：
```
chmod +x navicat15-premium-cs.AppImage
./navicat15-premium-cs.AppImage
```
## 后台执行：
```
nohup ./navicat15-premium-cs.AppImage >/dev/null 2>&1 &
```
## 过期处理
```
find / -name navicat
删除所有文件后执行
#./navicat15-premium-cs.AppImage
nohup ./navicat15-premium-cs.AppImage >/dev/null 2>&1 &
```
## 使用start.sh启动,软件过期后自动重置，可以不注册重复使用
```
在navicat的相同目录下执行start.sh
./start.sh
在创建连接后，通过工具导出连接后保存为connect文件，后续过期后重启可以导入连接，保证连接不会丢失

```
