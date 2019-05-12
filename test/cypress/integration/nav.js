describe("Rails user test", function() {
    beforeEach("log in", function(){
        cy.visit("users/login")
        cy.get("input[type='email']").type("bryce.harlum1@gmail.com")
        cy.get("input[id='password']").type("valid_password")
        cy.get("input[id='submit']").click()
    });

    it("View shops", function() {
        cy.contains("Shops").click()
    });

    it("View cart", function() {
        cy.contains("Cart").click()
    });

    it("View cart", function() {
        cy.contains("Cart").click()
    });

    it("View jobs", function() {
        cy.contains("Jobs").click()
    });

    it("View listing", function() {
        cy.contains("Show").click()
    });

    it("Logout", function() {
        cy.contains("Logout").trigger('click')
    });
});