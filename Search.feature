Feature: Search with content category filtering on bing.com

    Scenario Outline: Search for "Prowly Media Monitoring"
        Given User is on the bing.com homepage
        When User type in search box for "Prowly Media Monitoring"
        And use <Trigger> to search
        Then search results should include various content types
        And each result should be related to "Prowly Media Monitoring"

        Example: 
            | Trigger |
            | Enter on keyboard |
            | Clicks loupe icon |


    Scenario Outline: Search for "Prowly Media Monitoring" with content category filter
        Given User is on the bing.com homepage
        When User clicks on <ContentType>
        And User type in search box for "Prowly Media Monitoring"
        And use <Trigger> to search
        Then search results should include only <Result> content
        And each result should be related to "Prowly Media Monitoring"

        Example: 
             |  ContentType  | Trigger             |  Result  |
             |  Images       |  Enter on keyboard  |  Images  |
             |  Images       |  Clicks loupe icon  |  Images  |
             |  Videos       |  Enter on keyboard  |  Videos  |
             |  Videos       |  Clicks loupe icon  |  Videos  |