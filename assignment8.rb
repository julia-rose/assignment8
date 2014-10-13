text = "Call me Ishmael. Some years ago — never mind how long precisely — 
having little or no money in my purse, and nothing particular to interest me 
on shore, I thought I would sail about a little and see the watery part of the 
world. It is a way I have of driving off the spleen, and regulating the 
circulation. Whenever I find myself growing grim about the mouth; whenever it 
is a damp, drizzly November in my soul; whenever I find myself involuntarily 
pausing before coffin warehouses, and bringing up the rear of every funeral I 
meet; and especially whenever my hypos get such an upper hand of me, that it 
requires a strong moral principle to prevent me from deliberately stepping into 
the street, and methodically knocking people’s hats off — then, I account it 
high time to get to sea as soon as I can. This is my substitute for pistol and 
ball. With a philosophical flourish Cato throws himself upon his sword; I 
quietly take to the ship. There is nothing surprising in this. If they but 
knew it, almost all men in their degree, some time or other, cherish very 
nearly the same feelings towards the ocean with me."


#Start by sorting the text into a hash where each word is a key with the word’s value 
#being the amount of times it has been used in the block:
#{the: 10, john: 1, of: 15}

def countWords(text)

    words = text.split

    word_counts = {}

    words.each do |word|
        if word_counts.has_key?(word)
            word_counts[word] = word_counts[word] + 1
        else
            word_counts[word] = 1
        end
    end
    word_counts
end

#Once you’ve created this hash, return the word that has been used the most

def findMaxWordCount(counts)
    biggest_word = nil
    biggest_count = 0

    counts.each do |word, count|
        if biggest_count < count
            biggest_count = count
            biggest_word = word
        end
    end

    biggest_word
end

#When you’re done, encapsulate your script inside of a method that 
#can analyze any block of text fed to it


def analyzeText(text)

    words = text.split

        word_counts = {}

        words.each do |word|
            if word_counts.has_key?(word)
                word_counts[word] = word_counts[word] + 1
            else
                word_counts[word] = 1
            end
        end
    word_counts

    biggest_word = nil
    biggest_count = 0

    word_counts.each do |word, count|
        if biggest_count < count
            biggest_count = count
            biggest_word = word
        end
    end
    return biggest_word, biggest_count
    
end










