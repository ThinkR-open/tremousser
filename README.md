
<!-- README.md is generated from README.Rmd. Please edit that file -->

# {tremousser} <img src="man/figures/logo.png" align="right" height="138" alt="" />

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/ThinkR-open/tremousser/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ThinkR-open/tremousser/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of `{tremousser}` is to help you to build beautiful and
efficient Shiny applications.

`{tremousser}` is a package that provides a set of functions around the
[Tremor React library](https://www.tremor.so/).

## Installation

You can install the development version of tremousser from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ThinkR-open/tremousser")
```

## Example

*More examples to come*

``` r
library(tremousser)
library(shiny)

shinyApp(
  ui = tagList(
    tags$body(
      class = "flex gap-x-1 items-center justify-center h-screen bg-gray-100",
      trem_button(
        inputId = "button",
        "Click me..."
      ),
      trem_button(
        inputId = "button2",
        variant = "secondary",
        "... or me"
      ),
      trem_button(
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
```

## Code of Conduct

Please note that the `{tremousser}` project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).

By contributing to this project, you agree to abide by its terms.
