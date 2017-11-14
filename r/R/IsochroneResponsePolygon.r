# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' IsochroneResponsePolygon Class
#'
#' @field properties 
#' @field type 
#' @field geometry 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IsochroneResponsePolygon <- R6::R6Class(
  'IsochroneResponsePolygon',
  public = list(
    `properties` = NULL,
    `type` = NULL,
    `geometry` = NULL,
    initialize = function(`properties`, `type`, `geometry`){
      if (!missing(`properties`)) {
        stopifnot(R6::is.R6(`properties`))
        self$`properties` <- `properties`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`geometry`)) {
        stopifnot(R6::is.R6(`geometry`))
        self$`geometry` <- `geometry`
      }
    },
    toJSON = function() {
      IsochroneResponsePolygonObject <- list()
      if (!is.null(self$`properties`)) {
        IsochroneResponsePolygonObject[['properties']] <- self$`properties`$toJSON()
      }
      if (!is.null(self$`type`)) {
        IsochroneResponsePolygonObject[['type']] <- self$`type`
      }
      if (!is.null(self$`geometry`)) {
        IsochroneResponsePolygonObject[['geometry']] <- self$`geometry`$toJSON()
      }

      IsochroneResponsePolygonObject
    },
    fromJSON = function(IsochroneResponsePolygonJson) {
      IsochroneResponsePolygonObject <- jsonlite::fromJSON(IsochroneResponsePolygonJson)
      if (!is.null(IsochroneResponsePolygonObject$`properties`)) {
        propertiesObject <- IsochroneResponsePolygonProperties$new()
        propertiesObject$fromJSON(jsonlite::toJSON(IsochroneResponsePolygonObject$properties, auto_unbox = TRUE))
        self$`properties` <- propertiesObject
      }
      if (!is.null(IsochroneResponsePolygonObject$`type`)) {
        self$`type` <- IsochroneResponsePolygonObject$`type`
      }
      if (!is.null(IsochroneResponsePolygonObject$`geometry`)) {
        geometryObject <- IsochroneResponsePolygonGeometry$new()
        geometryObject$fromJSON(jsonlite::toJSON(IsochroneResponsePolygonObject$geometry, auto_unbox = TRUE))
        self$`geometry` <- geometryObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "properties": %s,
           "type": %s,
           "geometry": %s
        }',
        self$`properties`$toJSON(),
        self$`type`,
        self$`geometry`$toJSON()
      )
    },
    fromJSONString = function(IsochroneResponsePolygonJson) {
      IsochroneResponsePolygonObject <- jsonlite::fromJSON(IsochroneResponsePolygonJson)
      IsochroneResponsePolygonPropertiesObject -> IsochroneResponsePolygonProperties$new()
      self$`properties` <- IsochroneResponsePolygonPropertiesObject$fromJSON(jsonlite::toJSON(IsochroneResponsePolygonObject$properties, auto_unbox = TRUE))
      self$`type` <- IsochroneResponsePolygonObject$`type`
      IsochroneResponsePolygonGeometryObject -> IsochroneResponsePolygonGeometry$new()
      self$`geometry` <- IsochroneResponsePolygonGeometryObject$fromJSON(jsonlite::toJSON(IsochroneResponsePolygonObject$geometry, auto_unbox = TRUE))
    }
  )
)
