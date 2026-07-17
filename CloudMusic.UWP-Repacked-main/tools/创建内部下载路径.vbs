Option Explicit

Dim WshShell, strUserProfile, strCloudMusicData, strCloudMusicDownload, strCloudMusicPath, strDesktopPath
Set WshShell = CreateObject("WScript.Shell")

' 获取变量路径
strUserProfile = WshShell.ExpandEnvironmentStrings("%UserProfile%")
strDesktopPath = WshShell.SpecialFolders("Desktop")

' 检查路径是否被正确获取
If InStr(strUserProfile, "%") > 0 Then
    MsgBox "无法获取用户文件夹路径，此电脑系统环境变量存在重大问题！", vbOKOnly, "严重错误"
    WScript.Quit
End If

' 定义路径
strCloudMusicData = strUserProfile & "\AppData\Local\Packages\1F8B0F94.122165AE053F_yc15719j0dst8"
strCloudMusicDownload = strCloudMusicData & "\LocalState\download"
strCloudMusicPath = strCloudMusicDownload & "\music"

' 检查是否已安装云音乐UWP
If Not FolderExists(strCloudMusicData) Then
    MsgBox "似乎未安装云音乐UWP，无法继续。请先安装appx软件包后再使用此补丁。", vbOKOnly, "错误"
    WScript.Quit
End If

' 创建云音乐下载文件夹如果它不存在
If Not FolderExists(strCloudMusicDownload) Then
    CreateFolder strCloudMusicDownload
End If
If Not FolderExists(strCloudMusicPath) Then
    CreateFolder strCloudMusicPath
End If

' 在桌面上创建快捷方式
CreateShortcut strDesktopPath, strCloudMusicDownload, "云音乐UWP 下载目录"

' 检查文件(夹)是否存在的函数
Function FolderExists(FolderPath)
    Dim objFSO
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    FolderExists = objFSO.FolderExists(FolderPath)
    Set objFSO = Nothing
End Function
Function FileExists(FilePath)
    Dim objFSO
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    FileExists = objFSO.FileExists(FilePath)
    Set objFSO = Nothing
End Function

' 创建文件夹的函数
Sub CreateFolder(FolderPath)
    Dim objFSO
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    objFSO.CreateFolder(FolderPath)
    Set objFSO = Nothing
End Sub

' 创建快捷方式的函数
Sub CreateShortcut(DesktopPath, TargetPath, ShortcutName)
    Dim objShortcut
    Set objShortcut = WshShell.CreateShortcut(DesktopPath & "\" & ShortcutName & ".lnk")
    objShortcut.TargetPath = TargetPath
    objShortcut.Save
    Set objShortcut = Nothing
End Sub

' 弹窗提示操作完成
MsgBox "下载路径文件夹的快捷方式已放置到您的桌面上", vbOKOnly, "操作完成"
