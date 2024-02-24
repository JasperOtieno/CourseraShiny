# Load libraries
if(!require(pacman)) install.packages("pacman")
pacman::p_load(shiny,
               tidyverse,
               shinythemes,
               shinyFeedback,
               shinycssloaders,
               shinyWidgets,
               bslib,
               DT,
)

# Application Layout
shinyUI(
  fluidPage(theme = shinytheme("readable"),
            setBackgroundColor(color =c("white", "darkblue")),
            gradient = "linear",
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
               
               p("Select an indicator and graph type to view on the right."),
               radioButtons(inputId = "continuous_variable",
                            label = "Indicator",
                            choices = c("Age"="age", "Hours per week"="hours_per_week")),   # add radio buttons for continuous variables
               
               radioButtons(inputId = "graph_type",
                            label = "Graph Type",
                            choices = c("Histogram", "Boxplot"))    # add radio buttons for chart type
             )
      ),
      column(9, 
             plotOutput("p1"))  # add plot output
    ),
    
    # add third row to control how to plot the categorical variables
    fluidRow(
      column(3,
             wellPanel(
               p("Select a demographic to view a barchart on the right. Use the check box to view a stacked barchart to combine the income levels into one graph."),
               radioButtons(inputId = "categorical_variable",
                            label = "Demographic",
                            choices = c("Education"="education", "Working class"="workclass", "Gender"="sex")),    # add radio buttons for categorical variables
               checkboxInput(inputId = "is_stacked",
                             label = "Stack Bars")     # add check box input for stacked bar chart option
             )
      ),
      column(9, 
             plotOutput("p2"))  # add plot output
    )
  )
)
