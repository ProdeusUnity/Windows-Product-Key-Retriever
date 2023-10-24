import winreg

def get_product_key():
    key_path = r"SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
    value_name = "BackupProductKeyDefault"

    try:
        key = winreg.OpenKey(winreg.HKEY_LOCAL_MACHINE, key_path)
        product_key, _ = winreg.QueryValueEx(key, value_name)
        winreg.CloseKey(key)
        return product_key
    except Exception as e:
        print(f"Error: {e}")
        return None

product_key = get_product_key()

if product_key is not None:
    print(f"The product key is: {product_key}")
else:
    print("Failed to retrieve the product key.")
