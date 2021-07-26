#!/usr/bin/ruby

require 'colorize'

def display_app_store_apps
  puts
  puts "-------- App Store -------".white.on_green
  apps = {
    'Fantastical2' => [],
    'Moom' => [
      '1. ensure Moom is not running on new laptop.',
      '2. run this command: killall cfprefsd',
      '3. airdrop ~/Library/Preferences/com.manytricks.Moom.plist to same location on new laptop',
      '4. restart Moom and verify prefs'
    ],
    'Navicat' => [],
    'LiveReload' => [],
    'Marked' => [],
  }
  apps.each_with_index do |(app, comments), i|
    puts [i+1, app].join('. ')
    comments.each { |comment| puts "    - #{comment}" }
  end
end

display_app_store_apps
puts
