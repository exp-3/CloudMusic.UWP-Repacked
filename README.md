<img src="https://user-images.githubusercontent.com/26399680/47980314-0e3f1700-e102-11e8-8857-e3436ecc8beb.png" alt="logo" width="140" height="140" align="right">

#  🎼 CloudMusic.UWP-Repacked 🚀

&nbsp;
&nbsp;
## 简介

经典的 **网易云音乐UWP** 重打包版客户端，不会自动更新，且可以与官方版共存。

- 完美整合了原版100和400尺寸图形资源，并首次修复了在Win11系统下的文件访问权限问题。

- 本项目只是在原版软件的基础上进行了简单地重新打包以避免更新，无其他多余更改，请放心使用。

> [!IMPORTANT]
> 本软件**不提供**任何VIP音源破解等服务, 你需要在对应平台取得相应会员身份才能进行播放。<br />
> 所有内容资源 *(包括但不限于音频、图片等)* 版权归网易云音乐所有。<br />
> 本软件仅学习交流使用，请勿用于用于商业用途。如有侵权,请发 Issue 提出。<br />
> 使用此应用即代表您同意 [网易云音乐服务条款](https://st.music.163.com/official-terms/service) 以及 [网易云音乐隐私政策](https://st.music.163.com/official-terms/privacy) 。


&nbsp;
## 下载

点击下载：&nbsp;[1.4.1.0-通用版](../../raw/main/CloudMusic.UWP-1.4.1.0_Repacked_universal.AppxBundle)

> [!TIP]
> 通用版安装包已经包含了所有平台 *(x86/x64/arm)* 的安装所需文件，因此体积较大 *(&asymp;44MB)* <br />
> 安装过程中会自动选择最合适的部分安装，最终程序体积约为36MB，远小于现有Win32版本，当然更轻量


&nbsp;
## 安装

由于Windows只允许安装来自**微软商店**或者**企业开发者**的appx/msix软件包，<br />
所以我们需要先安装**自签名证书**来伪装成企业开发者，才能安装第三方软件包。

请选择以下其中一种方法：

#### 方法一：

1. 下载 [配套工具包](https://github.com/exp-3/CloudMusic.UWP-Tools/archive/dbb93c60c3dd9c634484ee1610f80d17dd66c02a.zip) ，务必解压缩所有文件 *(不要在压缩包内打开)* 

2. 打开 ```一键安装根证书.bat``` ，根据提示操作即可。

3. 当显示内容包含 ```证书 "patched" 添加到存储``` 或者 ```证书 "patched" 已经在存储中``` 说明安装成功。

4. 下载合适的 ```appx``` 软件包，双击打开安装。

> [!NOTE]
> 某些杀毒软件可能会将证书安装工具误报为病毒，您可能需要暂时关闭杀毒软件或者添加白名单才能使用。或者也可以考虑使用下面的方法二。

#### 方法二：

1. 下载 [证书文件](https://github.com/exp-3/CloudMusic.UWP-Tools/raw/main/data/3.cer) ，然后直接打开。

2. 点击 ```安装证书``` ，将会进入"证书导入向导" 

3. "存储位置"选 ```本地计算机``` ，下一步（需要同意管理员权限请求）

4. 选择 ```将所有的证书都放入下列存储``` ，点击 ```浏览``` ，选择 ```受信任的根证书颁发机构``` ，确定，下一步，继续完成证书导入。

5. 下载合适的 ```appx``` 软件包，双击打开安装。


&nbsp;
## 已知问题及解决方法

#### 1. 无法登录账号

请参阅 [解决方法](assets/login.md)

#### 2. 无法下载音乐

在22H2及更高版本的Windows11中下载音乐时提示文件存储失败。

请参阅 [解决方法](assets/storage.md)


&nbsp;
## 进阶玩法

> [!CAUTION]
> 如果您不知道这些是做什么的，那么请忽略它们

##### 本地回环代理设置

以管理员身份在命令行运行：

`checknetisolation loopbackexempt -a -n="cloudmusic.uwp_6p888gkwt396e"`

##### 打包方式说明

见 [该 issue](https://github.com/JasonWei512/NetEase-Cloud-Music-UWP-Repack/issues/3#issuecomment-636415035)


&nbsp;
## 特别鸣谢

##### [网易云音乐](https://music.163.com/)

这当然要排在第一位。

##### [JasonWei512/NetEase-Cloud-Music-UWP-Repack](https://github.com/JasonWei512/NetEase-Cloud-Music-UWP-Repack)

为本项目提供了灵感，以及一些常见问题的解决方法。

##### [kenvix/NeteaseMusicUWP](https://github.com/kenvix/NeteaseMusicUWP)

提供了原版软件包。

##### [Microsoft Developer](https://developer.microsoft.com/zh-cn/)

提供了编辑appx所需的工具和参考资料。
