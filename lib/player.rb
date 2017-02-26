class Player < User
  attr_reader :name

  def initialize(name)
    if @name == ''
      @name = 'Таинственная персона'
    else
      @name = name
    end

    super()
  end
end
