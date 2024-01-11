Feature: Search with content category filtering on bing.com

    Scenario: Search for "Prowly Media Monitoring"
        Given User is on the bing.com homepage
        When User type in search box for "Prowly Media Monitoring"
        And hits Enter on keyboard or clicks loupe icon
        Then search results should include various content types
        And each result should be related to "Prowly Media Monitoring"

