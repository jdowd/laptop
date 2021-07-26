#!/usr/bin/ruby

require 'colorize'

def list_misc
puts; puts
puts "----- Other Stuff -----".white.on_magenta

puts "remap Caps to Ctrl"

certs = %w[
  rootca
  intca
  john.dowd
]

puts "Export to preferences-sync, all of the following:"
certs.each_with_index { |cert, i| puts [i, cert].join('. ') }
puts "Then double click to add to keychain on new laptop, and manually mark 'rootca' as 'Always Trust'"

puts; puts "sync iMessages from cloud"
puts; puts "Google Drive File Stream"
puts; puts "install postgres -- brew?"

puts; puts "CAC stuff"
puts "  -- Install DOD Certs"
puts "  -- test JPAS site"

puts; puts "Tunnelblick config files. Open config files, copy to new file, and then copy that to new laptop and drag into tunnelblick"
puts "--QNAP. Change OpenVPN version to 2.3.18"
puts "--Digital Ocean VPN"

puts; puts
puts 'Pipeline: copy .env.local and config/application.yml to new machine'

puts; puts
puts 'forge-ansible: copy ./vault-password-file to new machine'

puts; puts
puts 'forge-devops: copy ./resources/isos and ./appliances to new machine'

puts
end

list_misc
