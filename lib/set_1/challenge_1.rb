require 'base64'

module Set1::Challenge1
  extend self

  def hex_to_base64(input)
    ascii = input.chars.each_slice(2).map { |h1, h2| "0x#{h1}#{h2}".hex.chr }.join
    Base64.strict_encode64(ascii)
  end

end
