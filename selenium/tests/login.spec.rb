require_relative '../env'
require_relative '../pages/login.page'

RSpec.describe 'Login' do

  before(:example) do
    $driver.get 'https://www.saucedemo.com/'
  end

  it 'Login com sucesso' do
    login('standard_user', 'secret_sauce')
    $driver.find_element(:id, 'inventory_filter_container')
  end

  it 'Login com usuário e/ou senha incorretos' do
    login('standard_user', '123456')
    $driver.find_element(:class, 'error-button')
  end

end
