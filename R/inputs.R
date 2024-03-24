#' @noRd
#'
#' @importFrom shiny.react reactElement asProps
#'
input <- function(name, default_value = NULL) {
  function(inputId, ..., value = default_value) {
    reactElement(
      module = "@/tremor",
      name = name,
      props = asProps(
        inputId = inputId,
        ...,
        value = default_value
      ),
      deps = tremousserDependency()
    )
  }
}

#' Button component
#'
#' @param ... Arguments to be passed to the underlying Button component.
#'
#' @export
Button <- component("Button")

#' Button input
#'
#' @param inputId The input slot that will be used to access the value.
#' @param ... Arguments to be passed to the underlying actionButton function.
#'
#' @export
actionButton <- input("Button")



#' TextInput input
#'
#' @param inputId The input slot that will be used to access the value.
#' @param ... Arguments to be passed to the underlying textInput function.
#'
#' @export
TextInput <- input("TextInput")
