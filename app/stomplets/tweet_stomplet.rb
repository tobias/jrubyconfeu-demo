require 'torquebox-stomp'

class TweetStomplet < TorqueBox::Stomp::JmsStomplet
  
  def configure(options)
    super
    @queue = TorqueBox::Messaging::Queue.new( options['queue_name'] )
  end
  
  def on_subscribe(subscriber)
    # session is available via subscriber.session
    subscribe_to( subscriber, @queue )
  end
  
end
