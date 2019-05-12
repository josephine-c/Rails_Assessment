describe("Rails user test", function() {
    it("Create a new user", function() {
        cy.visit("users/join")
        cy.get("input[type='email']").type("cypresstest" + Math.floor((Math.random() * 2000) + 1) + "@test.com")
        cy.get("input[id='password']").type("password")
        cy.get("input[id='password-confirmation']").type("password")
        cy.get("input[id='phone']").type("12345678")
        cy.get("input[id='fax']").type("12345678")
        cy.get("input[id='address']").type("10 fake street, fake-state, Fake-country, 5432")
        cy.get("input[id='submit-button']").click()
    });
});