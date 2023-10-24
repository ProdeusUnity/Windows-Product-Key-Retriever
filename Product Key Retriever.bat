@echo off
set "key=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
set "value=BackupProductKeyDefault"

for /f "tokens=2*" %%A in (
  'reg query "%key%" /v "%value%" ^| find "%value%"'
) do (
  set "product_key=%%B"
)

echo The product key is: %product_key%
