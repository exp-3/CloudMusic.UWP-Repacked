<img src="https://user-images.githubusercontent.com/26399680/47980314-0e3f1700-e102-11e8-8857-e3436ecc8beb.png" alt="logo" width="140" height="140" align="right" />

### &nbsp;

# 🎼 CloudMusic.UWP-Repacked 🚀

&nbsp;

## 简介

经典的 **网易云音乐 UWP** 重打包版客户端，不会自动更新，且可以与官方版共存。

-  整合了原版的 100 及 400 尺寸图形资源，其他修改版普遍残缺
-  完全解决在 Windows11 系统下的文件访问权限问题，可以下载保存到任意位置
-  只对原版软件进行了简单地重新打包以避免自动更新，未修改或增加任何程序代码，请放心使用

> [!IMPORTANT]
> 本软件**不提供**任何 VIP 音源破解等服务, 您需要在对应平台取得相应会员身份才能进行播放。<br />
> 所有内容资源 _(包括但不限于音频、图片等)_ 版权归网易云音乐所有。<br />
> 本软件仅学习交流使用，请勿用于用于商业用途。如有侵权,请发 Issue 提出。<br />
> 使用此应用即代表您同意 [网易云音乐服务条款](https://st.music.163.com/official-terms/service) 以及 [网易云音乐隐私政策](https://st.music.163.com/official-terms/privacy) 。

&nbsp;

## 下载

点击下载：&nbsp;[1.4.1.0-通用版](../../raw/main/CloudMusic.UWP-1.4.1.0_Repacked_universal.AppxBundle)

> [!TIP]
> 通用版安装包已经包含了所有平台 _(x86/x64/arm)_ 的安装所需文件，因此体积较大 _(&asymp;44MB)_ <br />
> 安装过程中会自动选择最合适的部分安装，最终程序体积约为 36MB，远小于现有 Win32 版本，当然更轻量

&nbsp;

## 安装

由于 Windows 只允许安装来自**微软商店**或者**企业开发者**的 appx/msix 软件包，<br />
所以我们需要先安装**自签名证书**来伪装成企业开发者，才能安装第三方软件包。

请选择以下其中一种方法：

#### 方法一：

1. 下载 [证书文件](https://github.com/exp-3/CloudMusic.UWP-Tools/raw/main/data/3.cer) ，然后直接打开 _(加密外壳扩展)_ 。
2. 点击 `安装证书` ，将会进入"证书导入向导"
3. "存储位置"选 `本地计算机` ，下一步（需要同意管理员权限请求）
4. 选择 `将所有的证书都放入下列存储` ，点击 `浏览` ，选择 `受信任的根证书颁发机构` ，确定，下一步，继续完成证书导入。
5. 下载合适的 `appx` 软件包，双击打开安装。
6. 打开软件，参照 [教程](assets/login.md) 解决登录问题。如有其他问题，请查阅下方的 [已知问题及解决方法](#已知问题及解决方法) 。

#### 方法二：

1. 下载 [配套工具包](https://github.com/exp-3/CloudMusic.UWP-Tools/archive/refs/heads/main.zip) ，务必解压缩所有文件 _(不要在压缩包内打开)_
2. 打开 `一键安装根证书.bat` ，根据提示操作即可。
3. 当显示内容包含 `证书 "patched" 添加到存储` 或者 `证书 "patched" 已经在存储中` 说明安装成功。
4. 下载合适的 `appx` 软件包，双击打开安装。
5. 打开软件，参照 [教程](assets/login.md) 解决登录问题。如有其他问题，请查阅下方的 [已知问题及解决方法](#已知问题及解决方法) 。

> [!NOTE]
> 某些杀毒软件可能会将证书安装工具误报为病毒，<br />
> 您可能需要暂时关闭杀毒软件或者添加白名单才能使用。<br />
> **因此建议还是优先使用使用方法一手动安装。**<br />
> *本项目及配套工具不包含任何病毒及恶意操作，欢迎找茬。*

&nbsp;

## 已知问题及解决方法

#### 1. 无法登录我的网易云音乐账号
 请参阅此问题的 [详细解决方法](assets/login.md)

#### 2. 下载音乐显示文件存储失败
 在 22H2 及更高版本的 Windows11 中下载音乐时提示文件存储失败。
 
 请参阅此问题的 [详细解决方法](assets/storage.md)

#### 4. 我是黑胶会员，但播放/下载时显示需要开通
 登录凭据是有有效期限的，由于官方已抛弃UWP客户端，其目前已无法自动刷新登录状态。<br>
 这导致登录失效后虽然还显示着账号信息，但实际上已经掉登录了，所以显示需要会员。<br>
 因此，如遇此情况请手动退出登录，然后重新登录账号，即可恢复正常。<br>
 如果仍然无效，或许就需要去看看您的黑胶会员是不是真的过期了😀。<br>

#### 5. 安装时appx时提示“无法安装相关项”
 通常情况下，Windows 的 “应用安装程序” 会自动下载并补全缺失的依赖软件包。<br>
 但在少数系统环境中，亦或与微软服务器的网络连接不太顺畅时，安装时还是会提示“无法安装相关项”。
 
 请参阅此问题的 [详细解决方法](assets/dependency.md)

#### 6. 因“安全原因”被要求修改密码
 网易云近期大力打击第三方播放器，目前建议不要在无官方授权的音乐软件中登录网易云音乐账号。<br>
 每次触发风控都会被要求修改密码，如果频繁触发风控还会导致短期封号。
 
 但是，UWP客户端属于官方出品的旧版本，实测**未被波及**，仍然可以正常登录和使用🥰。

&nbsp;

## 进阶玩法

> [!CAUTION]
> 如果您不知道这些是做什么的，那么请忽略它们

#### 本地回环代理设置
以管理员身份在命令行运行：<br>
`checknetisolation loopbackexempt -a -n="cloudmusic.uwp_6p888gkwt396e"`

#### 打包方式说明
见 [该 issue](https://github.com/JasonWei512/NetEase-Cloud-Music-UWP-Repack/issues/3#issuecomment-636415035)

&nbsp;

## 特别鸣谢

#### [网易云音乐](https://music.163.com/)
毫无疑问地得排在第一位。

#### [JasonWei512/NetEase-Cloud-Music-UWP-Repack](https://github.com/JasonWei512/NetEase-Cloud-Music-UWP-Repack)
为本项目提供了灵感，以及部分常见问题的解决方法。

#### [kenvix/NeteaseMusicUWP](https://github.com/kenvix/NeteaseMusicUWP)
提供了原版软件包。

#### [Microsoft Developer](https://developer.microsoft.com/zh-cn/)
提供了编辑 appx 所需的工具和参考资料。
