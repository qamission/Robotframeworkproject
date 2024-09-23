*** Variables ***
${QuantityInputField_ShoppingCart}    //input[@class="qty-input"]
${LinkToPDPFromShoppingCart}    //a[@class='product-name']
${ShoppingCartLabel}    //h1[normalize-space()='Shopping cart']    # This is locator for Shopping cart heading
${UpdateCartBtn_ShoppingCart}    //button[@id='updatecart']
${EmptyMessage}    //div[@class='no-data']
${ProductAttribute_ShoppingCart}    (//div[@class="attributes"])[2]    # This is locator for the product's attributes when it's added in shopping cart
${EditProductLink_ShoppingCart}    //a[normalize-space()='Edit']    # This is locator for the edit product link in the shopping cart which if clicked leads to PDP
${TermsOfServiceCheckBox_ShoppingCart}    id:termsofservice
${CheckoutBtn_ShoppingCart}    //button[@id='checkout']