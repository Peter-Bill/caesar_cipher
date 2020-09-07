def caesar_cipher(string, shift = -5)
    alphabet   = Array('a'..'z')
    lower_case  = Hash[alphabet.zip(alphabet.rotate(shift))]
  
    alphabet = Array('A'..'Z')
    upper_case = Hash[alphabet.zip(alphabet.rotate(shift))]
  
    encrypter = lower_case.merge(upper_case)
  
    string.chars.map { |c| encrypter.fetch(c, c) }
  end
  
  p caesar_cipher("AAAA!").join