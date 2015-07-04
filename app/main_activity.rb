class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super

    puts "#{'*' * 10} MainActivity#onCreate"
    BootReceiver.new.onReceive(nil, nil) # prove that this can be called from inside the app
  end
end
