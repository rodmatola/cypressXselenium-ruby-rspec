def login(usuario, senha)
  $driver.find_element(:id, 'user-name').send_keys(usuario)
  $driver.find_element(:id, 'password').send_keys(senha)
  $driver.find_element(:id, 'login-button').click
end
