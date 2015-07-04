class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super

    puts "#{'*' * 10} MainActivity#onCreate"
  end
end
