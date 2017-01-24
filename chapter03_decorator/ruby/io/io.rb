class LowerCaseInputStream < FilterInputStream
  def initialize(input)
    super input
  end

  def read
    # throw exception
    c = input.read
    c == -1 ? c : Character.to_lower_case(c)
  end

end
