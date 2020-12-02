class AllItens

  def self.comprar
    $driver.find_elements(:class, 'btn_primary').first.click
    $driver.find_element(:class, 'svg-inline--fa').click
    $driver.find_element(:class, 'btn_action').click
  end

end
