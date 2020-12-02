require_relative '../pages/login.page'
require_relative '../pages/all_itens.page'
require_relative '../pages/your_information.page'
require_relative '../pages/overview.page'

RSpec.describe 'Comprar' do

  before(:example) do
    $driver.get 'https://www.saucedemo.com/'
    login('standard_user', 'secret_sauce')
  end

  it 'Fazer uma compra com sucesso' do
    AllItens.comprar
    Informacoes.preencher_infos
    ResumoCompra.confirmar
    $driver.find_element(:class, 'complete-header')
  end

end
