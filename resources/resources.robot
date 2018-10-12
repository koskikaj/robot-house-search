*** Settings ***
Library    Selenium2Library    run_on_failure=Nothing
Library    XvfbRobot

*** Variables ***
${homepage}    https://www.${server}/
${browser}    gc
${server}    etuovi.com
${city}    Tampere
${minimumPrice}    100
${maximumPrice}    150
${minimumFlatSize}    20
${maximumFlatSize}    50

*** Keywords ***
Login To Test Page
    Open Browser    ${homepage}    ${browser}
    Location Should Be    ${homepage}

Fill Default Text To Search Bar
    Wait Until Element Is Visible    ${defaultSearchBar}
    Input Text    ${defaultSearchBar}    ${city}
    Wait Until Element Is Visible    ${defaultSearchBarAddValueButton}
    Click Element   ${defaultSearchBarAddValueButton}

Select Type Of Flat
    Wait Until Element Is Visible    ${selectTypeOfFlat}
    Click Element    ${selectTypeOfFlat}
    Click Element    ${subSelectionOfFlat}

Fill Price Range
    Click Element    ${minPrice}
    Input Text    ${minPrice}    ${minimumPrice}
    Input Text    ${maxPrice}    ${maximumPrice}

Select Number Of Rooms
    Click Element    ${selectNumberOfRooms}
    Click Element    ${subSelectionOfRooms}

Fill Flat Size
    Click Element    ${minFlatSize}
    Input Text    ${minFlatSize}    ${minimumFlatSize}
    Input Text    ${maxFlatSize}    ${maximumFlatSize}

Click Search Button
    Click Element    ${searchFlatsButton}

Sort Search Results From Cheapest To Most Expensive
    Wait Until Element Is Visible    ${CheapestFlats}
    Click Element    ${CheapestFlats}

Collect Attributes From Cheapest Apartment
    Wait Until Element Is Visible    ${NewOrderCheapestFlats}
    Click Element    ${NewOrderCheapestFlats}