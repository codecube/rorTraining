Feature: Front Page
    In order to see the posts
    As a reader
    I want to have a front page
    Scenario: 1 post in blog
        Given I have a post
            And my post has title "O meu post"
            And my post has content "tou com frio"
            And my post has author with name "Pedro"
        When I go to the homepage
        Then I should see "O meu post"
            And I should see "tou com frio"
            And I should see "Pedro"