class Informacoes

  def self.preencher_infos
    $driver.find_element(:id, 'first-name').send_keys('Rod')
    $driver.find_element(:id, 'last-name').send_keys('Matola')
    $driver.find_element(:id, 'postal-code').send_keys('000000')
    $driver.find_element(:class, 'btn_primary').click
  end

end
