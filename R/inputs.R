#' @noRd
#'
#' @importFrom shiny.react reactElement asProps
#'
input <- function(name) {
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
