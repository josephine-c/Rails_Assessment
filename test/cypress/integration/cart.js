describe("Rails user test", function() {
    beforeEach("log in", function(){
        cy.visit("users/login")
        cy.get("input[type='email']").type("bryce.harlum1@gmail.com")
        cy.get("input[id='password']").type("valid_password")
        cy.get("input[id='submit']").click()
    });

    it("Add to cart", function() {
        cy.contains("Shops").click()
        cy.contains("Show Products").first().click()
        cy.contains("Add to cart").first().click()
    });

    it("Remove from cart", function() {
        cy.contains("Cart").click()
        cy.contains("Show Products").first().click()
        cy.contains("Remove").first().click()
    });
});  