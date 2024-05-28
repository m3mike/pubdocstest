 # ---------------------------------------------------------------------------
 # run_driver.ps1 - Starts/Stops driver, used only if running driver independently. Requires elevated Powershell prompt

 # Copyright 2023 MITRE Engenuity. Approved for public release. Document number CT0005.
 # Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

 # http://www.apache.org/licenses/LICENSE-2.0

 # Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

 # This project makes use of ATT&CK®
 # ATT&CK Terms of Use - https://attack.mitre.org/resources/terms-of-use/ 
 
 # Usage: .\run_driver.ps1 start
 
 # Revision History:
 
 # --------------------------------------------------------------------------- 
param($action)

$servicename = "gusb"
$driver = "C:\Windows\`$NtUninstallQ608317`$\gusb.sys"

if ($action -eq "start"){
    CMD /C "sc.exe create $servicename type= kernel binpath= $PSScriptRoot\$driver"
    CMD /C "sc.exe start $servicename"
}
if ($action -eq "stop"){
    CMD /C "sc.exe stop $servicename"
    CMD /C "sc.exe delete $servicename"
}