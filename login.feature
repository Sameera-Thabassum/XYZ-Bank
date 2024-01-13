Feature: Testing Of XYZ Bank Website
Background: 
* url baseURL
  @ManagerLogin
  Scenario: Automating The Manager Login
    # * configure driver={type: 'chromedriver', executable: 'C:\\Users\\STHABASS\\Downloads\\chromedriver-win64\\chromedriver.exe' }
    * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"]}
    Given driver baseURL
    And driver.maximize()
    And click("{button}Bank Manager Login")
    * delay(2000)
    And click("{button}Add Customer")
    * delay(2000)
    And waitFor("//input[@placeholder='First Name']")
    * delay(2000)
    And input("//input[@placeholder='First Name']", "Rahul")
    And waitFor("//input[@placeholder='Last Name']")
    * delay(2000)
    And input("//input[@placeholder='Last Name']", "Shetty")
    * delay(2000)
    And waitFor("//input[@placeholder='Post Code']")
    * delay(2000)
    And input("//input[@placeholder='Post Code']", "506003")
    * delay(2000)
    And click("//button[text()='Add Customer']")
    * delay(2000)
    And dialog(true)
    And click("{button}Open Account")
    * delay(5000)
    And select('#userSelect','{^}Rahul Shetty')
    * delay(5000)
    And select('#currency','Rupee')
    * delay(5000)
    And click("//button[text()='Process']")
    * delay(5000)
    And dialog(true)
    And click("{button}Customers")
    * delay(5000)
    And waitFor("//input[@placeholder='Search Customer']")
    * delay(2000)
    And input("//input[@placeholder='Search Customer']", "Harry")
    * delay(2000)
    And click("{button}Delete")
    * delay(2000)
    And click("{button}Home")
    * delay(2000)

  @CustomerLogin
  Scenario: Automating The Customer Login
    # * configure driver={type: 'chromedriver', executable: 'C:\\Users\\STHABASS\\Downloads\\chromedriver-win64\\chromedriver.exe' }
    * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"]}
    Given driver baseURL
    And driver.maximize()
    And click("//button[text()='Customer Login']")
    * delay(3000)
    And select('#userSelect','{^}Ron Weasly')
    * delay(3000)
    And click("{button}Login")
    * delay(5000)
    And click("{button}Deposit")
    * delay(5000)
    And waitFor("//input[@placeholder='amount']")
    * delay(2000)
    And input("//input[@placeholder='amount']", "10000")
    * delay(2000)
    And click("//button[text()='Deposit']")
    * delay(2000)
    * def check = text("//span[text()='Deposit Successful']")
    And print check
    And match check == "Deposit Successful"
    * screenshot()
    And click("{button}Withdrawl")
    * delay(5000)
    And waitFor("//input[@placeholder='amount']")
    * delay(2000)
    And input("//input[@placeholder='amount']", "5000")
    * delay(2000)
    And click("//button[text()='Withdraw']")
    * delay(2000)
    * def check1 = text("//span[text()='Transaction successful']")
    And print check1
    And match check1 == "Transaction successful"
    * screenshot()
    And click("{button}Transactions")
    * delay(2000)
    * screenshot()
    And click("{button}Back")
    * delay(2000)
    And click("{button}Logout")
    * delay(4000)
