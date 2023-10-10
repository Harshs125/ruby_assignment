 
  class IpAnalysis
    def initialize(ip)
        @ip=ip
    end

    def find_class()
        octets = @ip.split('.').map(&:to_i)
        if octets[0] >= 1 && octets[0] <= 126
            "Class A"
        elsif octets[0] >= 128 && octets[0] <= 191
            "Class B"
        elsif octets[0] >= 192 && octets[0] <= 223
            "Class C"
        elsif octets[0] >= 224 && octets[0] <= 239
            "Class D"
        elsif octets[0] >= 240 && octets[0] <= 255
            "Class E"
        else
            "Invalid IP address"
        end
    end
end

ip=IpAnalysis.new("130.0.0.0")
ip2=IpAnalysis.new("125.23.45.5")
ip3=IpAnalysis.new("1.23.12.34")

puts ip.find_class()
puts ip2.find_class()
puts ip3.find_class()

