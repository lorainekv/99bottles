class Bottles
  def verse(count)
    if count > 0
      <<-VERSE
#{bottle_string(count)} of beer on the wall, #{bottle_string(count)} of beer.
Take #{pronoun(count - 1)} down and pass it around, #{bottle_string(count - 1)} of beer on the wall.
      VERSE
    else
      <<-VERSE
#{bottle_string(count).capitalize} of beer on the wall, #{bottle_string(count)} of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    end
  end

  def verses(*number)

  end
  private

  def pronoun(count)
    if count == 0
      "it"
    else
      "one"
    end
  end
  def bottle_string(count)
    if count == 0
      "no more bottles"
    elsif count == 1
      "1 bottle"
    else
      "#{count} bottles"
    end
  end
end
