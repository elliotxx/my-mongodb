## Windows mongodb 3.4.5 x64 集成包（几乎解压即用）

### 前言
创建该项目的目的是方便使用 windows 下的 mongodb，官方下载下来的安装包装好之后，只有 bin 目录是有用的，其实 mongodb 也就是这些命令的集合。

通常使用 mongodb 的步骤是：

1. 手动创建一些目录，比如 存放数据的 data 目录、存放日志文件的 log 目录、存放配置文件的 conf 目录
2. 创建配置文件，填写配置，指定端口号，data、log目录位置
3. 用 mongod.exe 命令启动配置文件

本项目帮助你自动完成以上步骤，你只需要下载一个安装包 + 启动 **install-mongod.bat** 脚本。

### 安装包下载地址
本项目使用 **mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed** 测试通过：

下载地址：

https://fastdl.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed.msi

### 特性
1. bin、data、dblogs、conf 文件夹均已创建好
2. 自动添加 **path** 环境变量
3. 自动创建 **mongod.conf** 配置文件
4. 自动创建 **start-mongod.bat** 启动文件 **\bin\start-mongod.bat** 启动脚本  
5. 运行脚本 **install-mongod.bat** 即可开始使用 mongodb

### 安装方法
1. 把项目 clone 到本地
```
git clone https://github.com/windcode/my-mongodb.git
```
2. 下载 mongodb windows 版本，将安装后的 **bin 目录中的所有文件** 复制到本项目的 **bin** 目录下
3. 双击项目目录下 **install-mongod.bat** 进行安装
4. 注销或者重启计算机，使配置生效

### 测试使用
1. 打开 cmd 命令提示符
2. 运行命令 **start-mongod.bat**，启动服务
3. 重新打开一个命令提示符，运行命令 **mongo**，进入 mongodb 控制台说明安装成功 

### 注意

1. 只适用于 windows 64 位
2. 四个文件夹下的 .gitkeep 文件可以删掉
