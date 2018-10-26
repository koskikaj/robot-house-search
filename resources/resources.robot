*** Settings ***
Library    Selenium2Library    run_on_failure=Nothing
Library    XvfbRobot

*** Variables ***
${browser}    ff
${homepage}    https://www.etuovi.com/
${city}    Tampere
${minimumPrice}    100
${maximumPrice}    150
${minimumFlatSize}    20
${maximumFlatSize}    50

*** Keywords ***
Login To Test Page
    [Arguments]    ${browser}    ${homepage}
    [Documentation]    Opens and verifies any web page
    Open Browser    ${homepage}    ${browser}
    Location Should Be    ${homepage}

Fill Default Text To Search Bar
    [Arguments]    ${city}
    [Documentation]    Fills default city to search bar
    Wait Until Element Is Visible    ${defaultSearchBar}
    Input Text    ${defaultSearchBar}    ${city}
    Wait Until Element Is Visible    ${defaultSearchBarAddValueButton}
    Click Element   ${defaultSearchBarAddValueButton}

Select Type Of Flat
    [Arguments]    ${selectTypeOfFlat}    ${subSelectionOfFlat}
    [Documentation]    Select any type of flat
    Wait Until Element Is Visible    ${selectTypeOfFlat}
    Click Element    ${selectTypeOfFlat}
    Click Element    ${subSelectionOfFlat}

Fill Price Range
    [Arguments]    ${minimumPrice}    ${maximumPrice}
    [Documentation]    Fill any price range
    Click Element    ${minPrice}
    Input Text    ${minPrice}    ${minimumPrice}
    Input Text    ${maxPrice}    ${maximumPrice}

Select Number Of Rooms
    [Arguments]    ${selectNumberOfRooms}    ${subSelectionOfRooms}
    [Documentation]    Fill any number of rooms
    Click Element    ${selectNumberOfRooms}
    Click Element    ${subSelectionOfRooms}

Fill Flat Size
    [Arguments]    ${minimumFlatSize}    ${maximumFlatSize}
    [Documentation]    Fill any flat size
    Click Element    ${minFlatSize}
    Input Text    ${minFlatSize}    ${minimumFlatSize}
    Input Text    ${maxFlatSize}    ${maximumFlatSize}

Click Search Button
    [Arguments]    ${searchFlatsButton}
    [Documentation]    Click any search button
    Click Element    ${searchFlatsButton}

Sort Search Results From Cheapest To Most Expensive
    [Documentation]    Sorts flats
    Wait Until Element Is Visible    ${CheapestFlats}
    Click Element    ${CheapestFlats}

Collect Attributes From Cheapest Apartment
    [Documentation]    Collects attributes
    Wait Until Element Is Visible    ${NewOrderCheapestFlats}
    Click Element    ${NewOrderCheapestFlats}