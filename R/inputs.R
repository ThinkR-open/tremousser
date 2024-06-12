#' @noRd
#' @importFrom shiny.react reactElement asProps
button <- function(name) {
  function(inputId, ...) {
    reactElement(
      module = "@/tremor",
      name = name,
      props = asProps(
        inputId = inputId,
        ...
      ),
      deps = tremousserDependency()
    )
  }
}

#' @noRd
#' @importFrom shiny.react reactElement asProps
input <- function(name, default_value = NULL) {
  function(inputId, ..., value = default_value) {
    reactElement(
      module = "@/tremor",
      name = name,
      props = asProps(
        inputId = inputId,
        ...,
        value = value
      ),
      deps = tremousserDependency()
    )
  }
}



#' Button input
#'
#' @param inputId The input slot that will be used to access the value.
#' @param ... Arguments to be passed to the actionButton.
#'
#' @export
trem_button <- button("Button")


#' TextInput input
#'
#' @param inputId The input slot that will be used to access the value.
#' @param value The initial value of the input.
#' @param ... Arguments to be passed to the underlying textInput function.
#'
#' @export
trem_text_input <- input("TextInput", )
