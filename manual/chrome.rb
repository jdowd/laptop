#!/usr/bin/ruby

require 'colorize'

def list_chrome_extensions
  puts
  puts "----- Chrome Extensions----".white.on_blue
  extensions = {
    'Vimium' => ['open extension options > Advanced > Create Backup'],
    'JSON Formatter' => [],
    'uBlock Origin' => [],
    'uBlock Origin Extra' => [],
    'LiveReload' => [],
    'LastPass' => ['set extension hotkeys'],
    'React Developer Tools' => [],
    'Zoom' => [],
    'GP' => ['enable chrome://extenstions Developer Mode', 'Load unpacked, selecting ~/Dropbox/preferences-sync/generals', 'add chrome extension shortcut key'],
    'Save to Pocket' => [],
  }
  extensions.each_with_index do |(ext, comments), i|
    puts [i+1, ext].join('. ')
    comments.each { |comment| puts "    - #{comment}" }
  end
  puts
end

list_chrome_extensions
