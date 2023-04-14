MORSE = Hash.new
MORSE = {
  '.-'=>'A',
  '-...'=>'B',
  '-.-.'=>'C',
  '-..'=>'D',
  '.'=>'E',
  '..-.'=>'F',
  '--.'=>'G',
  '....'=>'H',
  '..'=>'I',
  '.---'=>'J',
  '-.-'=>'K',
  '.-..'=>'L',
  '--'=>'M',
  '-.'=>'N',
  '---'=>'O',
  '.--.'=>'P',
  '--.-'=>'Q',
  '.-.'=>'R',
  '...'=>'S',
  '-'=>'T',
  '..-'=>'U',
  '...-'=>'V',
  '.--'=>'W',
  '-..-'=>'X',
  '-.--'=>'Y',
  '--..'=>'Z',
  '-----'=>'0',
  '.----'=>'1',
  '..---'=>'2',
  '...--'=>'3',
  '....-'=>'4',
  '.....'=>'5',
  '-....'=>'6',
  '--...'=>'7',
  '---..'=>'8',
  '----.'=>'9'
}

def decodeChar (randomChar)
  MORSE[randomChar]
end

def decodeWord (randomChar)
  return randomChar.split(" ").map { |string| decodeChar string }.join
end

def decodeSentence (randomChar)
  words = randomChar.split("   ")
  puts words.map {|word| decodeWord word}.join(" ")
  
end

decodeSentence ' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'