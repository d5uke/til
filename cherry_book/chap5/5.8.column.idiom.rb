def find_greeting(country)
  greetings = { japan: 'こんにちは', us: 'Hello', dqn: 'うぇ〜〜〜い'}
  greetings[country]
end

def show_greeting(country)
  # country = find_greeting(country)
  # if country
  #   country.concat('！！！')
  # end

  # if country = find_greeting(country)
  #   country.concat('！！！')
  # end

  country = find_greeting(country)
  country&.concat('！！！')
end

p show_greeting(:japan)
p show_greeting(:abc)

p '-----------------------'

num = nil
num ||= 10
p num #=> 10

num = 50
num ||= 10
p num #=> 50

# num = num || 10

p '-----------------------'

# def company_exisits?
#   company = find_company
#   if company
#     true
#   else
#     false
#   end
# end

def company_exits?
  !!find_company
end
