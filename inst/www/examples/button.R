library(shiny)
library(tremousser)

shinyApp(
  ui = tagList(
    tags$body(
      class = "flex gap-x-1 items-center justify-center h-screen bg-gray-100",
      actionButton(
        inputId = "button",
        "Click me..."
      ),
      actionButton(
        inputId = "button2",
        variant = "secondary",
        "... or me"
      ),
      actionButton(
        inputId = "button3",
        color = "pink",
        "even me!"
      ),
    )
  ),
  server = function(input, output) {
    observeEvent(input$button, {
      print("You clicked me!")
    })

    observeEvent(input$button2, {
      print("You clicked me too!")
    })

    observeEvent(input$button3, {
      print("You clicked me as well!")
    })
  }
)
