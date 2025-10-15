# Description:
Amnesia is a set of scripts designed to fix issues related to storage and security that arise from Microsoft Copilot's "Recall" feature, which periodically creates and stores images of your desktop. Amnesia will delete these images and their related databases when they are written, which has the benefits of freeing storage space and preventing leaks of sensitive data that Recall images may contain.

>[!NOTE]
>Amnesia does not disable the Recall function itself, it only erases the images and databases created by it. For a full removal of Recall, you will need to use a software management tool such as DISM to uninstall Recall and Copilot.

# Version Guide:
Amnesia comes in two versions, a "Light" version and a "Full" version. Each of these versions has a batch and Powershell version. The zips for each are listed below:

* Light Batch: `AmnesiaLight.zip`
* Full Batch: `Amnesia.zip`
* Light Powershell: `AmnesiaPSLight.zip`
* Full Powershell: `AmnesiaPS.zip`

These zips may be found in `Releases`.

The **Light** versions delete Recall's data files, but do not overwrite them. This uses less system resources and puts less write strain on the hard drive, but the data files can be retrieved through certain file recovery programs.

The **Full** versions delete and overwrite Recall's data files, completely erasing them and making the data unrecoverable even with file recovery programs. However, this uses slightly more system resources, and can put more write strain on the hard drive, which may be an issue if you are doing resource or drive-write intensive work.

The resource usage difference between the versions is largely minimal, and thus it is recommended that you use the **Full** versions if you want maximum security.

# Usage Guide:

### Batch Versions:

The batch versions of Amnesia can be installed using `AmnesiaManager.bat`, which contains code to write the main script `Amnesia.bat`, and a menu that allows you to manage whether Amnesia runs on startup.

Amnesia can be set to run on startup, either on a per-user or all user basis. This is done by writing `Amnesia.bat` to the respective startup folder.

>[!NOTE]
>Making Amnesia run on startup for all users requires that `AmnesiaManager.bat` be run as an **Administrator** process. This can be done by **right clicking** `AmnesiaManager.bat` and clicking **Run As Administrator**.

Once Amnesia has been installed, the script can be run manually by running `Amnesia.bat`.

The batch versions of Amnesia **cannot** run silently, and will always display a console window while in use.

### Powershell Versions:

The Powershell versions of Amnesia can be installed using `AmnesiaManager.ps1`, which contains code to write the main scripts, and a menu that allows you to manage whether Amnesia runs on startup.

`AmnesiaManager.ps1` can be run by using `RunPSAmnesia.bat`, which will bypass the execution policy and allow the script to be run regardless of policy.

`AmnesiaManager.ps1` will write two scripts, `Amnesia.ps1` and `StartAmnesiaPS.bat`. `Amnesia.ps1` contains the main Amnesia script, and `StartAmnesiaPS.bat` contains a script to call `Amnesia.ps1` as a silent process with a bypassed execution policy. `Amnesia.ps1` will always be written in the same directory as `AmnesiaManager.ps1`, and if deleted will cause `StartAmnesiaPS.bat` to display an error message in a console window.

Amnesia can be set to run on startup, either on a per-user or all user basis. This is done by writing `StartAmnesiaPS.bat` to the respective startup folder.

>[!NOTE]
>Making Amnesia run on startup for all users requires that `AmnesiaManager.ps1` be run as an **Administrator** process. This can be done by **right clicking** `RunPSAmnesia.bat` and clicking **Run As Administrator**.

`AmnesiaManager.ps1` will automatically run Amnesia once it has been installed. The script can be run manually by running `StartAmnesiaPS.bat`.

The Powershell versions of Amnesia can be run silently using `StartAmnesiaPS.bat`. When running silently, Amnesia will not display a console window or taskbar icon. A silently running Amnesia can be exited by using either Task Manager, or `StopPSAmnesia.bat` to kill the process. `StopPSAmnesia.bat` is the recommended method, as Amnesia does not display a unique process name from other Powershell processes, making it difficult to distinguish in Task Manager.


Based on personal testing, the Powershell versions of Amnesia use significantly less system resources than the batch versions, along with being able to run silently, making them the recommended versions to use if possible.

# Author:
Amnesia was created by **HTX Venompool**. It should only be downloaded from my official GitHub page. Other sources may be unsafe, and I am not responsible for damage caused by modified versions of these scripts.

I hope you find these scripts useful.
