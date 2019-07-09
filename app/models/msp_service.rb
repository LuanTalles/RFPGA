
class MSPService

  def initialize
    
  end

  def flush_a
    @sp.write('r')
    @sp.flush
  end

  def flush_s
    @sp.write('t')
    @sp.flush
  end

  def free_port
    @sp.close
  end

  def port_connected?(port)
    return true if Dir.glob(port).count == 1
  end

  def sep
    port_str ||= "/dev/ttyACM1"
    baud_rate ||= 9600
    data_bits ||= 8
    stop_bits ||= 1
    parity ||= SerialPort::NONE

    if port_connected?(port_str)
      @sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)
    end
  end
  
end
  