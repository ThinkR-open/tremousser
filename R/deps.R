#' tremousserDependency
#'
#' @importFrom htmltools htmlDependency
#'
#' @return html_dependency
#'
#' @export
tremousserDependency <- function() {
  htmlDependency(
    name = "tremousser",
    version = "3.14.0",
    package = "tremousser",
    src = "www/tremousser-3.14.0",
    script = "tremousser.js"
  )
}
