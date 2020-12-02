export const Informacoes = {

  preencher_infos() {
    cy.get('[data-test=firstName]').type('Rod')
    cy.get('[data-test=lastName]').type('Matola')
    cy.get('[data-test=postalCode]').type('000000')
    cy.get('.btn_primary').click()
  }

}
