class Question

  def generate
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = (@number1 + @number2).to_s
    "What does #{@number1} plus #{@number2} equal?"
  end

  def validate(number)
    (@answer == number) ? true : false
  end

end