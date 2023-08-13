#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Shiny Application - Simple BMI Calculator

# Welcome to the Simple BMI (Body Mass Index) Calculator Shiny App! This application allows you to calculate your BMI based on your weight and height. BMI is a simple metric used to assess whether an individual's weight is within a healthy range.

# How to Use the App:
# Enter your weight in kilograms (kg) in the "Enter Weight (kg):" textbox.
# Enter your height in centimeters (cm) in the "Enter Height (cm):" textbox.
# Click the "Calculate BMI" button to see your calculated BMI.

# Interpretation of BMI:

# Your calculated BMI will be displayed in the main panel. Here's how to interpret your BMI:
# BMI < 18.5: Underweight
# BMI 18.5 - 24.9: Normal Weight
# BMI 25 - 29.9: Overweight
# BMI ≥ 30: Obesity

# Features:
# User-friendly interface for entering weight and height.
# Real-time calculation and display of BMI.
# Clear interpretation of BMI categories.

#Important Notes:
# This calculator provides a basic estimation of BMI. For a comprehensive health assessment, consult a healthcare professional.
# BMI may not accurately represent health for all individuals, as it doesn't consider factors like muscle mass, bone density, and distribution of weight.

# Deploy the Application:
# To use the Simple BMI Calculator Shiny App, follow these steps:

library(shiny)

# Define server logic
shinyServer(function(input, output) {
    observeEvent(input$calculate, {
        weight <- input$weight
        height <- input$height / 100  # Convert height to meters
        
        bmi <- weight / (height^2)
        
        output$result <- renderText({
            paste("Your BMI:", round(bmi, 2))
        })
    })
})





