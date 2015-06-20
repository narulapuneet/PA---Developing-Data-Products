library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Automobile Fuel Efficiency Prediction")
  , sidebarPanel(
    h3('Your Automobile')
    , radioButtons('cyl', '# of Cylinders', c('4'=4, '6'=6, '8'=8))
    , numericInput('hp', "Gross Horsepower", 150, min=50, max=500, step=1)
    , numericInput('wt', "Weight (lb)", 3000, min=1000, max=6000, step=1)
    , radioButtons('am', 'Transmission', c('Automatic'=0, 'Manual'=1))
    , submitButton('Predict', icon=icon("refresh"))
  )
  , mainPanel(
    h3('Introduction')
    , p('This is the shiny application for my Coursera Developing Data Products 
        course project.  Using the data extracted from 1974 Motor Trend US 
        magzine (available from the mtcars R dataset), I build a linear 
        regression model to predict fule efficiency (miles per gallon, or mpg).')
    , p('Please describe your automobile on the left, CLICK Predict button and find your predicted mpg below.')
    , h3 ('Your Prediction Input')
    , p('# of Cylinders'), verbatimTextOutput('ocyl')
    , p('Gross Horsepower'), verbatimTextOutput('ohp')
    , p('Weight (lb)'), verbatimTextOutput('owt')
    , p('Transmission'), verbatimTextOutput('oam')
    , h3 ('Your Prediction Result')
    , verbatimTextOutput('oprediction')
    )
  ))