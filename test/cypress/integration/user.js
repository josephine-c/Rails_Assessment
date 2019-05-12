describe("Rails user test", function() {


    it("Create a new user", function() {
        cy.visit("users/join")
        cy.get("input[type='text']").type("cypresstest@test.com")
        cy.contains("Sign Up")
    });
});