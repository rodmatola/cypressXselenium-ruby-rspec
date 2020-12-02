import { login } from "./pages/login.page"
import { AllItens } from "./pages/all_itens.page"
import { Informacoes } from "./pages/your_information.page"
import { ResumoCompra } from "./pages/overview.page"

describe('Comprar', () => {

  beforeEach(() => {
    cy.visit('https://www.saucedemo.com/')
    login('standard_user', 'secret_sauce')
  })

  it('Fazer uma compra com sucesso', () => {
    AllItens.comprar()
    Informacoes.preencher_infos()
    ResumoCompra.confirmar()
    cy.get('.complete-header')
  })

})
