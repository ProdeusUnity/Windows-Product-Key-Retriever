require 'win32/registry'

key_path = 'SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\SoftwareProtectionPlatform'
value_name = 'BackupProductKeyDefault'

begin
  Win32::Registry::HKEY_LOCAL_MACHINE.open(key_path) do |reg|
    product_key = reg.read_s(value_name)
    puts "The product key is: #{product_key}"
  end
rescue Win32::Registry::Error => e
  puts "Error: #{e.message}"
end
