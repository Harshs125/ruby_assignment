  puts("Enter ip address to check")
  ip=gets.chomp
  octets = ip.split('.').map(&:to_i)

  if octets[0] >= 1 && octets[0] <= 126
    puts("Class A")
  elsif octets[0] >= 128 && octets[0] <= 191
    puts("Class B")
  elsif octets[0] >= 192 && octets[0] <= 223
    puts("Class C")
  elsif octets[0] >= 224 && octets[0] <= 239
    puts("Class D")
  elsif octets[0] >= 240 && octets[0] <= 255
    puts("Class E")
  else
    puts("Invalid IP address")
  end