class NoCountryError < StandardError
  # 国名を属性として取得できるようにする
  attr_reader :NoCountryError
  def initialize(message, country)
    @country = country
    super("#{message} #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise NoCountryError.new('無効な国名です。', country)
  end
end

begin
  currency_of(:italy)
rescue NoCountryError => e
  puts e.message
  puts e.country
end

#=> 無効な国名です。 italy
#   italy
