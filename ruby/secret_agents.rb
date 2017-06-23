def encrypt (text)
  current_index=0
  number_letters=text.length
  encrypted_string= ""

  until current_index == number_letters
    current_letter=text[current_index]
    if current_letter == 'z'
      encrypted_string += 'a'
    elsif current_letter == ' '
      encrypted_string+= ' '
    else
      encrypted_string += text[current_index].next
    end
    current_index += 1
  end

    puts encrypted_string
end
encrypt('zed')

def decrypt(string)

  current_index = 0
  alphabet = ("a".."z").to_a

  until current_index > string.length - 1
    current_letter = string[current_index]
    alpha_index = alphabet.index(current_letter)
    back_alpha_index = alpha_index - 1
    back_alpha_letter = alphabet[back_alpha_index]
    print back_alpha_letter
    current_index += 1
  end

end
decrypt("afe")
