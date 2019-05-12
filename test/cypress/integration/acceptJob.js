describe("Rails user test", function() {
    before("log in", function(){
        cy.visit("users/login")
        cy.get("input[type='email']").type("bryce.harlum1@gmail.com")
        cy.get("input[id='password']").type("valid_password")
        cy.get("input[id='submit']").click()
    });

    it("View jobs", function() {
        cy.contains("Jobs").click()
        cy.get('[id=show-job-button]').first().click()
        cy.contains("Accept Job").trigger('click')
    });
});  