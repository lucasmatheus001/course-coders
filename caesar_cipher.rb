def cifra_de_cesar(texto, deslocamento)
    cifrado = ""
    
    texto.each_char do |caractere|
      if caractere.match(/[a-zA-Z]/)
        ascii_code = caractere.ord
        ascii_offset = caractere =~ /[A-Z]/ ? 65 : 97
        deslocado = (ascii_code - ascii_offset + deslocamento) % 26 + ascii_offset
        cifrado << deslocado.chr
      else
        cifrado << caractere
      end
    end
    
    cifrado
end
  

texto_original = "Exemplo de texZz"
deslocamento = 3

texto_cifrado = cifra_de_cesar(texto_original, deslocamento)
puts texto_cifrado
