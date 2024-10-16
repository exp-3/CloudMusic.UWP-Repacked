## 安装 AppxBundle 时提示缺少依赖

通常情况下，Windows 的 “应用安装程序” 会自动下载并补全缺失的依赖软件包。

但在某些系统环境中，亦或与微软服务器的网络连接不太顺畅时，安装时还是会提示缺少依赖。

请参照下方的步骤，尝试手动下载并安装依赖框架包。

##### 第一步：查看处理器类型

1. 按住键盘上的`Win`键，同时按`R`键。

2. 在弹出的对话框中输入`%PROCESSOR_ARCHITECTURE%`，并点击`确定`。

3. 将会弹出对话框，显示`Windows找不到文件'xxx'`；不用担心，只需要看看引号中的内容即可，例如 AMD64。

4. 这个信息是您的处理器类型，请记下它，下一步将会用到。

##### 第二步：安装所需依赖项

1. 下载与处理器类型相对应的所有框架包，并逐个安装它们。

-  [X64 / AMD64 / EM64T](../../../tree/main/dependencies/x64)
-  [X86](../../../tree/main/dependencies/x86)
-  [ARM / ARM64](../../../tree/main/dependencies/arm)

2. 再次尝试安装网易云音乐 UWP。
