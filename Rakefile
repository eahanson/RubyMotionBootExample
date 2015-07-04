# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.

  app.api_version = "16"
  app.name = 'boot'
  app.package = 'com.example'
  app.permissions = %i[wake_lock receive_boot_completed]

  app.manifest.child('application') do |application|
    application.add_child('receiver') do |boot_receiver|
      boot_receiver.update('android:name' => '.BootReceiver')
      boot_receiver.add_child('intent-filter') do |intent_filter|
        intent_filter.add_child('action').update('android:name' => 'android.intent.action.BOOT_COMPLETED')
      end
    end
  end
end
