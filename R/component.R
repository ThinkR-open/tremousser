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
