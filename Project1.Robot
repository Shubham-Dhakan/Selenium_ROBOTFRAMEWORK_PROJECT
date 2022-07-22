*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://testautomationpractice.blogspot.com/         # Storing data in Variables
${browser}  chrome                                          # Storing data in Variables

*** Test Cases ***
open browser ${url} ${browser}

${window_url} = get location                # Browser Related keywords
log to console  ${window_url}               # Printing current browser URL

${implicit_wait} = get implicit wait        # Getting Default Implicit Time
log to console  ${implicit_wait}            # Printing default Implicit Time
Testing Website
close browser                               # It will Close the Current Browser

*** Variables ***
Testing Website

    set implict time    5                   # Hardcoding Implicit Timeout to 5 seconds

    # Testing all elements of Frame
    select frame    frame-one1434677811                     # selecting frame with locator --> id
    #FirstName
    input text  RESULT_TextField-1  david                   # input box with locator --> id
    # LastName
    input text  RESULT_TextField-2  JOhn                    # input box with locator --> id
    # Phone Element
    input text  RESULT_TextField-3  9549494494              # input box with locator --> id
    #Country
    input text  RESULT_TextField-4  USA                     # input box with locator --> id
    # City
    input text  RESULT_TextField-5  Chicago                 # input box with locator --> id
    # Email Address
    input text  RESULT_TextField-6  johndavid@gmail.com     # input box with locator --> id

    # Radio Buttons Concept
    # We need Combination of locator and value to select radio buttons
    select radio button     RESULT_RadioButton-7    male    # radio button locating with --> id, text
    sleep   2
    unselect radio button   RESULT_RadioButton-7    male
    select radio button     RESULT_RadioButton-7_1  Female  # locator --> RESULT_RadioButton-7_1, value --> female

    # CheckBoxes Concept
    select check boxes  name:'RESULT_CheckBox-8'    Tuesday     #locator --> 'RESULT_CheckBox-8', value --> Tuesday

    # DROP DOWN CONCEPT
    select from list by label   RESULT_RadioButton-9    Morning  # locator --> RESULT_RadioButton-9, value --> Morning
    sleep   2
    select from list by label   RESULT_RadioButton-9    Evening  # locator --> RESULT_RadioButton-9, value --> Evening


    unselect frame                                              # Unselecting frame

    # Double click Concept
    double click element    xpath:////button[normalize-space()='Copy Text']

    # Drag and Drop Concept
    drag and drop   id=draggable    id='droppable'      # Drag&Drop 1
    drag and drop   alt='the peaks of high tatras'  id='trash'  # Drag&Drop 2

    # Scrolling Concept
    scroll element into view    xpath://button[normalize-space()='Click Me']
    #ScreenShot Concept
    capture element screenshot  xpath://button[normalize-space()='Click Me']   C:/Users/Shubham Dhakan/PycharmProjects/SeleniumRobotFramework/project.png

    # ALERT CONCEPT
    click element   xpath://button[normalize-space()='Click Me']    # By clicking this element we will have alert pop-up
    handle alert accept                                             # It will close the alert pop-up with << accept >>
    #handle alert dismiss

    # DROP DOWN CONCEPT
    select from list by label   speed   Medium          # Selecting Value in DropDOwn by Label

    select from list by value   files   2               # Selecting Value in DropDown by Value

    select from list by index   number  3               # Selecting Value in DropDown by Index

    select from list by value   products    Google      # Selecting Value in DropDown by Value

    select from list by value   animals     Avatar      # Selecting Value in DropDown By Value

    # Scrolling Concept
    execute javascript  windows.scrollTo(0,-document.body.scrollheight)     # It will scroll to top of the website
    execite javascript  windows.scrollTo(0,document.body.scrollheight)      # It will scroll back to the bottom of the website

