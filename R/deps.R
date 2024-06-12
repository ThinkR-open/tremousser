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
    version = "3.17.2",
    package = "tremousser",
    src = "www/tremousser",
    script = "tremousser.js"
  )
}
