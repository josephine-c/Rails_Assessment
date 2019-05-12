describe("Rails user test", function() {


    it("Create a new user", function() {
        cy.visit("users/join")
        cy.get("input[type='email']").type("cypresstest@test.com")
        cy.contains("commit")
    });
});