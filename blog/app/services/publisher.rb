class Publisher
  def self.publish(exchange, message)
    x = channel.fanout("blog.#{exchange}")
    x.publish(message.to_json)
  end

  def self.channel
    @channel ||= connection.create_channel
  end

  def self.connection
    @connection ||= Bunny.new(hostname: "192.168.99.100").tap do |c|
      c.start
    end
  end
end