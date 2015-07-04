class BootReceiver < Android::Content::BroadcastReceiver
  def onReceive(context, intent)
    puts "#{'*' * 10} BootReceiver#onReceive(#{intent.getAction}"
  end
end
