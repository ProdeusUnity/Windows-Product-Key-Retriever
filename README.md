# Windows Product Key Retriever
Python Script to retrieve the product key of a Windows computer (Both Retail and OEM)

# What Is The Purpose Of This Script?
This script retrieves the product key of a computer using the windows registry, the reason it exists to provide a free and non sketchy way of retriving the key on a computer, this can be useful in case you lose the key or need to reinstall windows at any point

# What's wrong with existing solutions such as "X Product Key Finder"
Simple, often they cost money, and in their free versions don't reveal the full key, not to mention we don't know what their exactly doing behind the scenes since the code is often proprietary, so who knows what can go wrong with them, this is an entirely local script to do that task without any hassle.

# What Exactly Does This Script Do?
This script retrieves the Product Key from a computer, Both Retail and OEM Keys are supported, These keys are what's used to activate windows to prove you have a legitmiate copy, Retail keys will need to be re entered in hardware changes or OS Reinstall, however OEM Keys will always reactivate the computer in the event you need to reinstall windows since they are stored in the UEFI Firmware, however they cannot be transferred, and they die when the computer dies.

As per what the script is doing to retrieve it, it uses `winreg`, this is to see the windows registry to find the key, which is located in `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform`
Afterwards it just prints out the data from the key as "The product key is: XXXXX-XXXXX-XXXXX-XXXXX-XXXXX", of course those X's will be replaced by your product key.

# Does This Script Collect Data, Upload Or Connect To The Internet In Any Way?
No, that is not the intention of this script, it simply exists to show the key of a windows computer, it does not have any capability to send any data. Don't believe me? You can always look at the code if you're THAT paranoid.

# What OS Does This Support?

Assuming it hasn't changed much (Hopefully), This would work with any operating system supported by Python, which looks to be Windows 8.1 and newer, however this script may work on earlier versions, though I cannot guarantee compatibility, a batch version will exist if you absolutely need it to work on Windows 7. Ruby is supported too

# How To Use?

For the python version, just use this command `python "D:\Scripts\Product Key Retriver.py", however replace that with the location of where the script is located, then enter
For the batch version, drag into a CMD or Windows Terminal window, then press enter
For the ruby version, use the same command as python, however replacing python with `ruby`

Both support command line
