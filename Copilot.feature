Feature: Search information with copilot on bing.com

    Scenario Outline: Search for "Prowly Media Monitoring" information
        Given User is on the bing.com homepage
        When User clicks on chat icon
        Then User is redirected to page with chatting window 
        When User clicks <Conversation> button to chose response style 
        And User input in chat window "Prowly Media Monitoring information"
        Then User get response with information in <Conversation> style
        And response is about "Prowly Media Monitoring"

        Example: 
            | Conversation |
            | Creative     |
            | Balanced     |
            | Precise      |
