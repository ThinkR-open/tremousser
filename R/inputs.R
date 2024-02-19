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

#' @export
Button <- component("Button")

#' @export
actionButton <- input("Button")
