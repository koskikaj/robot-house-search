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
${CheapestFlats}    xpath=//a[contains(@class, 'option selected')]//a[contains(text(), 'Halvimmat ensin, €')]
${NewOrderCheapestFlats}    xpath=//a[contains(@class, 'size')]//div[contains(text(), 'Koko')]