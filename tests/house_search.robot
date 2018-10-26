*** Settings ***
Documentation    House search
...              - Verify Current URL
...              - Fill Default Text To Search Bar
...              - Select Type Of Flat
...              - Fill Price Range
...              - Select Number Of Rooms
...              - Fill Flat Size
...              - Click Search Button
...              - Sort Search Results From Cheapest To Most Expensive
...              - Collect Attributes From Cheapest Apartment

Resource          ../resources/resources.robot
Resource          ../resources/selectors.robot
Suite Setup       Setup
Test Teardown     Run Keyword If Test Failed    Capture Page Screenshot    screen ${TEST_NAME}.png
Suite Teardown    Close All Browsers

*** Variables ***
${STALE_ELEMENT_SLEEP}    2s

*** Keywords ***

Setup
    Set Selenium Timeout    20

*** Test Cases ***

Test 1
    Login To Test Page    ${browser}    ${homepage}
    Fill Default Text To Search Bar    ${city}
    Select Type Of Flat    ${selectTypeOfFlat}    ${subSelectionOfFlat}
    Fill Price Range    ${minimumPrice}    ${maximumPrice}
    Select Number Of Rooms    ${selectNumberOfRooms}    ${subSelectionOfRooms}
    Fill Flat Size    ${minimumFlatSize}    ${maximumFlatSize}
    Click Search Button    ${searchFlatsButton}
    Sort Search Results From Cheapest To Most Expensive
    Collect Attributes From Cheapest Apartment