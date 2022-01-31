# Source: https://github.com/zakjan/leaflet-lasso
lassoDependency <- function() {
  list(
    # // "leaflet-lasso": "github:zakjan/leaflet-lasso#2.6.6",
    # lasso bindings
    html_dep_prod("lfx-lasso", "2.2.6", has_binding = TRUE)
  )

}

#' Add Lasso Selection Tool to Map
#' @param map map object created by [leaflet::leaflet]
#' @param intersect logical TRUE to select any features intersected by lasso, 
#'   FALSE to select only features entirely within lasso
#' @export
#' @seealso [GitHub: leaflet-lasso](https://github.com/zakjan/leaflet-lasso)
#' @examples
#' leaflet() %>%
#'   addTiles() %>%
#'   addBounceMarkers(49, 11)
addLasso = function(map, intersect = FALSE) {
  map$dependencies <- c(map$dependencies, lassoDependency())
  invokeMethod(map, getMapData(map), 'addLasso', intersect)
}
