@echo off

rem dir where this _settings_.bat file is located - DO NOT CHANGE!
set DIR_PROJECT_BASE=%~dp0

rem ---------------------------------------------------
rem --- settings for MOD
rem ---
rem MODNAME defines name for folders to be created/used:
rem   - for modeditor project
rem   - destination folder within witcher 3 dlc folder
rem final folder name will have addional prefix DLC added.
set MODNAME=Project1

rem idspace defines the id partition to be verified by
rem the w3strings encoder on encoding a strings csv
set idspace=9999

rem before publishing mods set RELEASE_VERSION flag to "YES" to generate files
rem without debug information. default is to embedd debug data.
SET RELEASE_VERSION=YES

rem set to YES to delete *RECURSIVELY* the *COMPLETE* mod/dlc folder before
rem deploying mod/dlc. if not set to "YES" you'll have to confirm every time
set auto_delete_mod=YES

rem logging level for all encoders. uncomment desired level,
rem default is empty -> minimal info + warnings + errors
set LOG_LEVEL=
rem set LOG_LEVEL=--verbose
rem set LOG_LEVEL=--very-verbose

rem should the build process pause for user interaction on every step?
SET INTERACTIVE_BUILD=0

rem -------------------------------------------------------
rem !!! check these path settings !!!
rem -------------------------------------------------------
rem path to witcher 3 directory
rem Note: parenthesis need to be escaped with a ^ in batch files, e.g.
rem set DIR_W3=C:\Program Files (x86^)\Steam\steamapps\common\The Witcher 3
set DIR_W3=C:\Program Files (x86^)\GOG Galaxy\Games\The Witcher 3 Wild Hunt GOTY

rem *main* directory of modkit
set DIR_MODKIT=E:\Witcher 3 Mod Tools\Witcher 3 Mod Tools

rem path to encoder binaries
set DIR_ENCODER=E:\Witcher 3 Radish Tools

rem --------------------------------------------------------------------------------------------------------------
rem --------------------------------------------------------------------------------------------------------------
rem --- the following settings do not need to be adjusted
rem --------------------------------------------------------------------------------------------------------------
rem --------------------------------------------------------------------------------------------------------------

call "%DIR_PROJECT_BASE%\bin\_default.settings.bat"
