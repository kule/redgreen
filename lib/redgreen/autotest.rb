Autotest.send(:alias_method, :real_ruby, :ruby)
Autotest.send(:define_method, :ruby) do |*args|
    real_ruby + %[ -rrubygems -e "require 'redgreen'" ] 
end
