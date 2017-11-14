# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' IsochroneResponse Class
#'
#' @field polygons 
#' @field copyrights 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IsochroneResponse <- R6::R6Class(
  'IsochroneResponse',
  public = list(
    `polygons` = NULL,
    `copyrights` = NULL,
    initialize = function(`polygons`, `copyrights`){
      if (!missing(`polygons`)) {
        stopifnot(is.list(`polygons`), length(`polygons`) != 0)
        lapply(`polygons`, function(x) stopifnot(R6::is.R6(x)))
        self$`polygons` <- `polygons`
      }
      if (!missing(`copyrights`)) {
        stopifnot(is.list(`copyrights`), length(`copyrights`) != 0)
        lapply(`copyrights`, function(x) stopifnot(is.character(x)))
        self$`copyrights` <- `copyrights`
      }
    },
    toJSON = function() {
      IsochroneResponseObject <- list()
      if (!is.null(self$`polygons`)) {
        IsochroneResponseObject[['polygons']] <- lapply(self$`polygons`, function(x) x$toJSON())
      }
      if (!is.null(self$`copyrights`)) {
        IsochroneResponseObject[['copyrights']] <- self$`copyrights`
      }

      IsochroneResponseObject
    },
    fromJSON = function(IsochroneResponseJson) {
      IsochroneResponseObject <- jsonlite::fromJSON(IsochroneResponseJson)
      if (!is.null(IsochroneResponseObject$`polygons`)) {
        self$`polygons` <- lapply(IsochroneResponseObject$`polygons`, function(x) {
          polygonsObject <- IsochroneResponsePolygon$new()
          polygonsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          polygonsObject
        })
      }
      if (!is.null(IsochroneResponseObject$`copyrights`)) {
        self$`copyrights` <- IsochroneResponseObject$`copyrights`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "polygons": [%s],
           "copyrights": [%s]
        }',
        lapply(self$`polygons`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`copyrights`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(IsochroneResponseJson) {
      IsochroneResponseObject <- jsonlite::fromJSON(IsochroneResponseJson)
      self$`polygons` <- lapply(IsochroneResponseObject$`polygons`, function(x) IsochroneResponsePolygon$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`copyrights` <- IsochroneResponseObject$`copyrights`
    }
  )
)
