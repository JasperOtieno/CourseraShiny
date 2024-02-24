<<<<<<< HEAD
# Load libraries
library(shiny)
library(tidyverse)

# Application Layout
shinyUI(
  fluidPage(
    br(),
    
    # application title
    titlePanel(h1("Trends in Demographics and Income")),
    p("Explore the difference between people who earn less than 50K and more than 50K. You can filter the data by country, then explore various demogrphic information."),
    br(),

    # add row with two columns to have variable and graph type selectors and graph in main panel
    fluidRow(
      column(3,
             wellPanel(
               selectInput(inputId = "country",
                           label = "Country",
                           choices = c("United-States", "Canada", "Mexico", "Germany", "Philippines", ""),
                           #data = adult,
                           selected = NULL),
               
               p("Select a continuous variable and graph type (histogram or boxplot) to view on the right."),
               radioButtons(inputId = "continuous_variable",
                            label = "Continuous",
                            choices = c("age", "hours_per_week")),   # add radio buttons for continuous variables
               
               radioButtons(inputId = "graph_type",
                            label = "Graph Type",
                            choices = c("histogram", "boxplot"))    # add radio buttons for chart type
             )
      ),
      column(9, 
             plotOutput("p1"))  # add plot output
    ),
    
    # add third row to control how to plot the categorical variables
    fluidRow(
      column(3,
             wellPanel(
               p("Select a categorical variable to view bar chart on the right. Use the check box to view a stacked bar chart to combine the income levels into one graph. "),
               radioButtons(inputId = "categorical_variable",
                            label = "Categorical",
                            choices = c("education", "workclass", "sex")),    # add radio buttons for categorical variables
               checkboxInput(inputId = "is_stacked",
                             label = "Stack Bars")     # add check box input for stacked bar chart option
             )
      ),
      column(9, 
             plotOutput("p2"))  # add plot output
    )
  )
)
=======
# Load libraries
library(shiny)
library(tidyverse)

# Application Layout
shinyUI(
  fluidPage(
    br(),
    
    # application title
    titlePanel(h1("Trends in Demographics and Income")),
    p("Explore the difference between people who earn less than 50K and more than 50K. You can filter the data by country, then explore various demogrphic information."),
    br(),

    # add row with two columns to have variable and graph type selectors and graph in main panel
    fluidRow(
      column(3,
             wellPanel(
               selectInput(inputId = "country",
                           label = "Country",
                           choices = c("United-States", "Canada", "Mexico", "Germany", "Philippines", ""),
                           #data = adult,
                           selected = NULL),
               
               p("Select a continuous variable and graph type (histogram or boxplot) to view on the right."),
               radioButtons(inputId = "continuous_variable",
                            label = "Continuous",
                            choices = c("age", "hours_per_week")),   # add radio buttons for continuous variables
               
               radioButtons(inputId = "graph_type",
                            label = "Graph Type",
                            choices = c("histogram", "boxplot"))    # add radio buttons for chart type
             )
      ),
      column(9, 
             plotOutput("p1"))  # add plot output
    ),
    
    # add third row to control how to plot the categorical variables
    fluidRow(
      column(3,
             wellPanel(
               p("Select a categorical variable to view bar chart on the right. Use the check box to view a stacked bar chart to combine the income levels into one graph. "),
               radioButtons(inputId = "categorical_variable",
                            label = "Categorical",
                            choices = c("education", "workclass", "sex")),    # add radio buttons for categorical variables
               checkboxInput(inputId = "is_stacked",
                             label = "Stack Bars")     # add check box input for stacked bar chart option
             )
      ),
      column(9, 
             plotOutput("p2"))  # add plot output
    )
  )
)
>>>>>>> refs/remotes/jo_update/main
