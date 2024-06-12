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

#' Text component
#'
#' @param ... Arguments to be passed to the underlying Text component.
#'
#' @export
trem_text <- component("Text")
