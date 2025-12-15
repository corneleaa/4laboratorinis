#define MyAppName "VU Student App"
#define MyAppExeName "vu_student_app.exe"
#define MyAppPublisher "Vilniaus universitetas"
#define MyAppVersion "3.0.1"
#define MyDirName "VU\\Kornelija-Dambrauskaite"

[Setup]
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyDirName}
DefaultGroupName={#MyDirName}
DisableDirPage=yes
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64
OutputDir=..\windows-release
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Files]
Source: "..\windows-release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\windows-release\grades.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Flags: nowait postinstall skipifsilent



