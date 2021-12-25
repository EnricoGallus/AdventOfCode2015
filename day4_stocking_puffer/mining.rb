require 'digest/md5'

def mine(hash)
  number = 0
  while
    p = Digest::MD5.hexdigest(hash + number.to_s)
    return number if p[0..4] == '00000'
    number += 1
  end
end
