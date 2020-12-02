
import { login } from "./pages/login.page"

describe('Login', () => {

  beforeEach(() => {
    cy.visit('https://www.saucedemo.com/')
  })

  it('Login com sucesso', () => {
    login('standard_user', 'secret_sauce')
    cy.get('#inventory_filter_container')
  })

  it('Login com usuário e/ou senha incorretos', () => {
    login('standard_user', '123456')
    cy.get('.error-button')
  })

})
