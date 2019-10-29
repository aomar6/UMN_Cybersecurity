# Administrator accounts list
adminList = [
    {
        "username": "DaBigBoss",
        "password": "DaBest"
    },
    {
        "username": "root",
        "password": "toor"
    }
]

# Create a function called getCreds with no paramaters
def getCreds():
    # Prompts user for their username and password
    username = input("What is your username? ")
    password = input("What is your password? ") 
    userInfo = {
            "username" : str(username), 
            "password" : str(password)
        }    
    # Return userInfo
    return userInfo
 
userInfo = getCreds()

# Create a function named `checkLogin` with two parameters: the `userInfo` and the `adminList`.
def checkLogin(userInfo, adminList):
    # Check the credentials to see if they are contained within the admin list of logins.
    # set a variable `loggedIn` to `True` if the credentials are found in the admin list, and set the variable to `False` otherwise.
    if userInfo in adminList:
        loggedIn = True
        # Once the user logs in with admin credentials, print to the terminal the string `"YOU HAVE LOGGED IN!"`.
        print("YOU HAVE LOGGED IN!")
 
    else: 
        loggedIn = False

    # Create a `while` loop that will continue to call `getCreds` and `checkLogin` until a user logs in with admin credentials.
    while loggedIn == False:    
        retry = getCreds()
        # After each call of `checkLogin` in the `while` loop, print to the terminal the string `"---------"`.
        print ("---------")
        return retry

checkLogin(userInfo, adminList)