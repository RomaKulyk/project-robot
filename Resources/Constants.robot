*** Settings ***
Library  SeleniumLibrary
# Resource     ../PO/TopNav.robot

*** Variables ***

# TEST CASES
${BROWSER}    chrome
${START_URL}    https://rozetka.com.ua
${SEARCH_TERM}    Ferrari 458


# RESOURCES

# Cart.robot
${CART_PROCEED_TO_CHECKOUT} =  xpath=//rz-shopping-cart/div/div[1]/div/rz-checkout-button/a

#Footer
${FOOTER_CROSS_SITE_LINK_1} =  xpath=(//a[contains(@class,'tags-link')])[1]
${FOOTER_CROSS_SITE_LINK_2} =  xpath=(//a[contains(@class,'tags-link')])[2]
${FOOTER_CROSS_SITE_LINK_3} =  xpath=(//a[contains(@class,'tags-link')])[3]
${FOOTER_CROSS_SITE_LINK_4} =  xpath=(//a[contains(@class,'tags-link')])[4]
${FOOTER_CROSS_SITE_LINK_5} =  xpath=(//a[contains(@class,'tags-link')])[5]
${FOOTER_CROSS_SITE_LINK_6} =  xpath=(//a[contains(@class,'tags-link')])[6]
${FOOTER_CROSS_SITE_LINK_7} =  xpath=(//a[contains(@class,'tags-link')])[7]
${FOOTER_CROSS_SITE_LINK_8} =  xpath=(//a[contains(@class,'tags-link')])[8]
${FOOTER_CROSS_SITE_LINK_9} =  xpath=(//a[contains(@class,'tags-link')])[9]
${FOOTER_CROSS_SITE_LINK_10} =  xpath=(//a[contains(@class,'tags-link')])[10]
${FOOTER_CROSS_SITE_LINK_11} =  xpath=(//a[contains(@class,'tags-link')])[11]
${FOOTER_CROSS_SITE_LINK_12} =  xpath=(//a[contains(@class,'tags-link')])[12]
${FOOTER_CROSS_SITE_LINK_13} =  xpath=(//a[contains(@class,'tags-link')])[13]
${FOOTER_CROSS_SITE_LINK_14} =  xpath=(//a[contains(@class,'tags-link')])[14]
${FOOTER_CROSS_SITE_LINK_15} =  xpath=(//a[contains(@class,'tags-link')])[15]
${FOOTER_CROSS_SITE_LINK_16} =  xpath=(//a[contains(@class,'tags-link')])[16]
${FOOTER_CROSS_SITE_LINK_17} =  xpath=(//a[contains(@class,'tags-link')])[17]
${FOOTER_CROSS_SITE_LINK_18} =  xpath=(//a[contains(@class,'tags-link')])[18]

@{FOOTER_CROSS_SITE_LINKS_LIST_1}  ${FOOTER_CROSS_SITE_LINK_1}
...                                ${FOOTER_CROSS_SITE_LINK_2}
...                                ${FOOTER_CROSS_SITE_LINK_3}
...                                ${FOOTER_CROSS_SITE_LINK_4}
...                                ${FOOTER_CROSS_SITE_LINK_5}
...                                ${FOOTER_CROSS_SITE_LINK_6}
...                                ${FOOTER_CROSS_SITE_LINK_7}
...                                ${FOOTER_CROSS_SITE_LINK_8}
...                                ${FOOTER_CROSS_SITE_LINK_9}
...                                ${FOOTER_CROSS_SITE_LINK_10}
...                                ${FOOTER_CROSS_SITE_LINK_11}
...                                ${FOOTER_CROSS_SITE_LINK_12}


@{FOOTER_CROSS_SITE_LINKS_LIST_2}  ${FOOTER_CROSS_SITE_LINK_13}
...                                ${FOOTER_CROSS_SITE_LINK_14}
...                                ${FOOTER_CROSS_SITE_LINK_15}
...                                ${FOOTER_CROSS_SITE_LINK_16}
...                                ${FOOTER_CROSS_SITE_LINK_17}
...                                ${FOOTER_CROSS_SITE_LINK_18}

@{FOOTER_HEADERS_LIST}  ${FOOTER_HEADER_1}
...                     ${FOOTER_HEADER_2}
...                     ${FOOTER_HEADER_3}
...                     ${FOOTER_HEADER_4}

${FOOTER_HEADER_1} =  xpath=(//h3[@class = 'footer-links__label'])[1]
${FOOTER_HEADER_2} =  xpath=(//h3[@class = 'footer-links__label'])[2]
${FOOTER_HEADER_3} =  xpath=(//h3[@class = 'footer-links__label'])[3]
${FOOTER_HEADER_4} =  xpath=(//h3[@class = 'footer-links__label'])[4]

${FOOTER} =  xpath=//div[@class='app-footer']
${SHOW_MORE_BUTTON} =  xpath=//button[@class = 'read-more-btn button button_size_medium button_color_green']
${MASTER_CARD_LOGO} =  xpath=//img[@alt='MasterCard Secure']

# LeftSideBar.robot
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

# Product.robot
${PRODUCT_TO_BUY} =   xpath=//rz-product-buy-btn/rz-buy-button/button

# Search.robot
${SEARCH_RESULTS_PRODUCT_LINK} =  xpath=//li[7]/rz-catalog-tile/app-goods-tile-default/div/div[2]/div[1]/rz-button-product-page[1]/rz-indexed-link/a
${EXPECTED_PRODUCT_COUNT} =  xpath=//li[contains(@class, "catalog-grid__cell catalog-grid__cell_type_slim")]

# Signin.robot
${SIGNIN_MAIN_HEADING} =  xpath=//rz-checkout-orders/rz-checkout-orders-content/div/h1

# TopNav.robot
${TOPNAV_SEARCH_BAR} =  xpath=//rz-search-suggest/form/div[1]/div/div/input
${TOPNAV_SEARCH_BUTTON} =  xpath=//rz-search-suggest/form/div[1]/button
${TOPNAV_MAIN_LOGO} =  xpath=//header/div/div/a/picture/img