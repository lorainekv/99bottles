class Bottles
  def verse(count)
    <<-VERSE
#{bottle_string(count)} of beer on the wall, #{bottle_string(count)} of beer.
Take one down and pass it around, #{bottle_string(count - 1)} of beer on the wall.
    VERSE
  end

  def bottle_string(count)
    if count == 1
      "1 bottle"
    else
      "#{count} bottles"
    end
  end
end
