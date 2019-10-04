class Rap_name
  def initialize(name, number = 2, title = "Captain", acronym = "O.A.P")
    @name = name
    @number = number
    @title = title
    @acronym = acronym

    @adjective = File.readlines("rap_name/adj.adj").sample
    @adverb = File.readlines("rap_name/adv.adv").sample
    @noun = File.readlines("rap_name/noun.txt").sample
    @verb = File.readlines("rap_name/verb.verb").sample
    @shook = false
  end

  def shake()
    @all_names = ["#{@number} #{@noun}", "#{@adjective} #{@name} the #{@noun}",
    "#{@name} the #{@noun}", "#{@adjective} #{@name}", "#{@noun} #{@name}", "#{@adjective} #{@noun}",
    "#{@title} #{@name}", "#{@title} #{@adjective}", "#{@title} #{@noun}", "#{@adjective} #{@adjective}",
    "#{@adjective} #{@acronym}", "#{@noun} #{@noun}"]
    @shook = true
    @all_names.sample
  end

  def all()
      if @shook == true
        puts @all_names.each {|a| puts a}
      else
        puts "Shake first!"
      end
  end

end
