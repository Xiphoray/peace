; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "peace"
#define MyAppVersion "1.0"
#define MyAppPublisher "Xiphoray"
#define MyAppURL "https://xiphoray.github.io/"
#define MyAppExeName "peace.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{B969ED39-F31B-4C50-9438-49FE3049B4E6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir=D:\project C#\peace
OutputBaseFilename=peace
SetupIconFile=D:\project C#\peace\peace\peace.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"
Name: "english"; MessagesFile: "compiler:Languages\English.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "D:\project C#\peace\peace\bin\Release\peace.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\project C#\peace\peace\bin\Release\load.gif"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\project C#\peace\peace\bin\Release\peace.html"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\project C#\peace\peace\bin\Release\panic.html"; DestDir: "{app}"; Flags: ignoreversion
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

