class ResumoCompra

  def self.confirmar
    $driver.find_element(:class, 'btn_action').click
  end

end
