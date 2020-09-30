### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) #camel case is the wrong naming convention, should be snakecase
    if card.value = 1 # assigning a value here instead of comparing equality 
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # spelling mistake 'dif' instead of 'def' and parameters should have a comma seperating them
  if card1.value > card2.value # missing indentation 
    return card # missing 1 from then end of the variable name
  else
    return card2
  end
end # indentation again
end # end should be after the following function

def self.cards_total(cards)
  total # should be set to 0 (assigned)
  for card in cards
    total += card.value
    return "You have a total of" + total # this should be outside of the for loop as it will return the total each time a value is added, should also probably add a space so the total isn't squashed against the text
  end
end
```
