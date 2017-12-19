require 'singleton'

class Configuration
  # Singletonモジュールをincludeする
  include Singleton

  attr_accessor :base_url, :debug_mode

  def initialize
    # 設定値を初期化する
    @base_url = ''
    @debug_mode = false
  end
end

# Configurationクラスはnewできない
# config = Configuration.new
#=> NoMethodError

# instanceメソッドを使ってインスタンスを取得する
config = Configuration.instance
# 設定値を設定する
config.base_url = 'http://example.com'
config.debug_mode = true

# instanceメソッドを使ってインスタンスを再度取得する
other = Configuration.instance
# 先ほど設定した設定値を取得できる
p other.base_url #=> "http://exaple.com"
p other.debug_mode #=> true

# どちらも全く同じオブジェクト（インスタンス）になっている
p config.object_id == other.object_id #=> true
p config.equal?(other) #=> true
