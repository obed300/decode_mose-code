CODE_TABLE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',

  '.----' => '1',

  '..---' => '2',

  '...--' => '3',

  '....-' => '4',

  '.....' => '5',

  '-....' => '6',

  '--...' => '7',

  '---..' => '8',

  '----.' => '9',

  '  ' => ' '

}.freeze

def decode_char(*char)
  CODE_TABLE.fetch(char.join)
end

def decode_word(word)
  morse_chars = word.split
  decoded_word = ''

  morse_chars.each do |morse_char|
    decoded_char = decode_char(morse_char)
    decoded_word += decoded_char
  end

  decoded_word
end

def decode(message)
  words = message.split('  ')
  decoded_words = words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end
