*** Variables ***
${defaultSearchBar}    id6
${defaultSearchBarAddValueButton}    addUnclassified
${selectTypeOfFlat}    ddcl-input-subCategory
${subSelectionOfFlat}    ddcl-input-subCategory-i0
${closeButton}           //span[contains(text(),'Sulje')]
${minPrice}    minPrice
${maxPrice}    maxPrice
${selectNumberOfRooms}    ddcl-input-rooms
${subSelectionOfRooms}    ddcl-input-rooms-i0
${minFlatSize}    minSize
${maxFlatSize}    maxSize
${searchFlatsButton}    xpath=//a[contains(@class, 'submit')]//span[contains(text(), 'Hae')]
${CheapestFlats}    xpath=/html[1]/body[1]/section[1]/section[1]/section[1]/section[4]/div[1]/ul[1]/li[3]/a[1]
${NewOrderCheapestFlats}    xpath=/html[1]/body[1]/section[1]/section[1]/section[1]/section[5]/ol[1]/li[1]/a[2]/div[1]/div[3]
${OnlyCookiesAccepted}    alma-data-policy-banner__accept-cookies-only