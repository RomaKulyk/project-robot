*** Settings ***
Library  SeleniumLibrary
Resource     ../PO/TopNav.robot

*** Variables ***
${PRODUCT_CATEGORY_LINK_1} =  xpath=(//a[contains(@class,'category-link px-3')])[1]
${PRODUCT_CATEGORY_LINK_2} =  xpath=(//a[contains(@class,'category-link px-3')])[2]
${PRODUCT_CATEGORY_LINK_3} =  xpath=(//a[contains(@class,'category-link px-3')])[3]
${PRODUCT_CATEGORY_LINK_4} =  xpath=(//a[contains(@class,'category-link px-3')])[4]
${PRODUCT_CATEGORY_LINK_5} =  xpath=(//a[contains(@class,'category-link px-3')])[5]
${PRODUCT_CATEGORY_LINK_6} =  xpath=(//a[contains(@class,'category-link px-3')])[6]
${PRODUCT_CATEGORY_LINK_7} =  xpath=(//a[contains(@class,'category-link px-3')])[7]
${PRODUCT_CATEGORY_LINK_8} =  xpath=(//a[contains(@class,'category-link px-3')])[8]
${PRODUCT_CATEGORY_LINK_9} =  xpath=(//a[contains(@class,'category-link px-3')])[9]
${PRODUCT_CATEGORY_LINK_10} =  xpath=(//a[contains(@class,'category-link px-3')])[10]
${PRODUCT_CATEGORY_LINK_11} =  xpath=(//a[contains(@class,'category-link px-3')])[11]
${PRODUCT_CATEGORY_LINK_12} =  xpath=(//a[contains(@class,'category-link px-3')])[12]
${PRODUCT_CATEGORY_LINK_13} =  xpath=(//a[contains(@class,'category-link px-3')])[13]
${PRODUCT_CATEGORY_LINK_14} =  xpath=(//a[contains(@class,'category-link px-3')])[14]
${PRODUCT_CATEGORY_LINK_15} =  xpath=(//a[contains(@class,'category-link px-3')])[15]
${PRODUCT_CATEGORY_LINK_16} =  xpath=(//a[contains(@class,'category-link px-3')])[16]
${PRODUCT_CATEGORY_LINK_17} =  xpath=(//a[contains(@class,'category-link px-3')])[17]
${PRODUCT_CATEGORY_LINK_18} =  xpath=(//a[contains(@class,'category-link px-3')])[18]



@{PRODUCT_CATEGORY_LIST}    ${PRODUCT_CATEGORY_LINK_1}
...                         ${PRODUCT_CATEGORY_LINK_2} 
...                         ${PRODUCT_CATEGORY_LINK_3} 
...                         ${PRODUCT_CATEGORY_LINK_4} 
...                         ${PRODUCT_CATEGORY_LINK_5} 
...                         ${PRODUCT_CATEGORY_LINK_6} 
...                         ${PRODUCT_CATEGORY_LINK_7}
...                         ${PRODUCT_CATEGORY_LINK_8} 
...                         ${PRODUCT_CATEGORY_LINK_9} 
...                         ${PRODUCT_CATEGORY_LINK_10} 
...                         ${PRODUCT_CATEGORY_LINK_11} 
...                         ${PRODUCT_CATEGORY_LINK_12} 
...                         ${PRODUCT_CATEGORY_LINK_13}
...                         ${PRODUCT_CATEGORY_LINK_14} 
...                         ${PRODUCT_CATEGORY_LINK_15} 
...                         ${PRODUCT_CATEGORY_LINK_16} 
...                         ${PRODUCT_CATEGORY_LINK_17} 
...                         ${PRODUCT_CATEGORY_LINK_18} 


*** Keywords ***
Click Product Category Links
    FOR    ${element}    IN    @{PRODUCT_CATEGORY_LIST}
        Click Link  locator=${element}
        Sleep  0.5
        TopNav.Click Main Page Logo
        Sleep  0.5
    END