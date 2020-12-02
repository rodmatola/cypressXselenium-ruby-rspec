export const AllItens = {

  comprar() {
    cy.get('.btn_primary').first().click()
    cy.get('.svg-inline--fa').click()
    cy.get('.btn_action').click()
  }

}
