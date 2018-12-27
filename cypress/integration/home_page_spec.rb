describe("Home page", function() {
  it("contains title", function(){
		cy.visit('localhost:3000');
    cy.get("title")
    cy.should('contain', 'MakersBnB');
	})
  it("expects the home page to load correctly", function() {
    cy.visit('localhost:3000');

    })
  it("contains title", function(){
  	cy.visit('localhost:3000');
    cy.get("h2")
    cy.should('contain', 'Find homes in United Kingdom on Makerbnb');
  })
  it("contains 2nd line of title", function(){
    cy.visit('localhost:3000');
    cy.get("h2")
    cy.should('contain', 'Discover entire homes and private rooms perfect for any trip.');
  })
  it("types name", function() {
  cy.visit('localhost:3000')
  cy.get("form")
  cy.get('Input[name="name"]')
    .type('Leon')
    .should('have.value', 'Leon')

})
it("types email", function() {
cy.visit('localhost:3000')
cy.get("form")
cy.get('Input[name="email"]')
  .type('leon@google.com')
  .should('have.value', 'leon@google.com')

})
it("types password", function() {
cy.visit('localhost:3000')
cy.get("form")
cy.get('Input[name="password"]')
  .type('password')
  .should('have.value', 'password')

})
it("signs up a new user and takes you to listings page", function(){
  cy.visit('localhost:3000')
  cy.get("Form")
  cy.get("Button")
  cy.contains("Sign Up").click()
  cy.url().should('eq', 'http://localhost:3000/listings')

  })

});
