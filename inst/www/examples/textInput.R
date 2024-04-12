
library(shiny)
library(tremousser)

shinyApp(
  ui = tagList(
    tags$body(
      class = "flex items-center justify-center h-screen bg-gray-100",
      div(
        class = "grid grid-cols-3 gap-4 w-full max-w-6xl p-4 items-center",
        TextInput(
          inputId = "text_in",
          placeholder = "Type something..."
        ),
        textOutput("text_out")
      )
    )
  ),
  server = function(input, output) {
    r_local <- reactiveValues()

    observeEvent(input$text_in, {
      message("event triggered!")
      r_local$text <- input$text_in
    })

    output$text_out <- renderText({
      r_local$text
    })
  }
)
