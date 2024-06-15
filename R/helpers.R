#' component
#'
#' @importFrom shiny.react reactElement asProps
#'
#' @noRd
component <- function(name) {
  function(...) {
    reactElement(
      module = "@tremor/react",
      name = name,
      props = asProps(...),
      deps = tremousserDependency()
    )
  }
}

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
