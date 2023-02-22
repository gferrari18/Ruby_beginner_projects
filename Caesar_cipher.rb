def CaesarCipher(message, shift, result = "")

    message.each_char do |letter|
        newletter = letter.ord + shift
        if letter.ord.between?(65,90)
            if newletter > 90
                until newletter < 91 do
                    newletter -= 26
                end  
                result = result + newletter.chr   
            elsif newletter < 65
                until newletter > 64 do
                newletter += 26
                end
                result = result + newletter.chr
            else result = result + newletter.chr
            end
        elsif letter.ord.between?(97,122)
            if newletter > 122
                until newletter < 123 do
                    newletter -= 26
                end  
                result = result + newletter.chr   
            elsif newletter < 96
                until newletter > 95 do
                newletter += 26
                end
                result = result + newletter.chr
            else result = result + newletter.chr
            end
        else result = result + letter
        end
    end
    p result
end

CaesarCipher("Hello, World!", 75)