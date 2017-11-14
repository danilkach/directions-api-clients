# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GeocodingLocation Class
#'
#' @field point 
#' @field osm_id 
#' @field osm_type 
#' @field osm_key 
#' @field name 
#' @field country 
#' @field city 
#' @field state 
#' @field street 
#' @field housenumber 
#' @field postcode 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeocodingLocation <- R6::R6Class(
  'GeocodingLocation',
  public = list(
    `point` = NULL,
    `osm_id` = NULL,
    `osm_type` = NULL,
    `osm_key` = NULL,
    `name` = NULL,
    `country` = NULL,
    `city` = NULL,
    `state` = NULL,
    `street` = NULL,
    `housenumber` = NULL,
    `postcode` = NULL,
    initialize = function(`point`, `osm_id`, `osm_type`, `osm_key`, `name`, `country`, `city`, `state`, `street`, `housenumber`, `postcode`){
      if (!missing(`point`)) {
        stopifnot(R6::is.R6(`point`))
        self$`point` <- `point`
      }
      if (!missing(`osm_id`)) {
        stopifnot(is.character(`osm_id`), length(`osm_id`) == 1)
        self$`osm_id` <- `osm_id`
      }
      if (!missing(`osm_type`)) {
        stopifnot(is.character(`osm_type`), length(`osm_type`) == 1)
        self$`osm_type` <- `osm_type`
      }
      if (!missing(`osm_key`)) {
        stopifnot(is.character(`osm_key`), length(`osm_key`) == 1)
        self$`osm_key` <- `osm_key`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`country`)) {
        stopifnot(is.character(`country`), length(`country`) == 1)
        self$`country` <- `country`
      }
      if (!missing(`city`)) {
        stopifnot(is.character(`city`), length(`city`) == 1)
        self$`city` <- `city`
      }
      if (!missing(`state`)) {
        stopifnot(is.character(`state`), length(`state`) == 1)
        self$`state` <- `state`
      }
      if (!missing(`street`)) {
        stopifnot(is.character(`street`), length(`street`) == 1)
        self$`street` <- `street`
      }
      if (!missing(`housenumber`)) {
        stopifnot(is.character(`housenumber`), length(`housenumber`) == 1)
        self$`housenumber` <- `housenumber`
      }
      if (!missing(`postcode`)) {
        stopifnot(is.character(`postcode`), length(`postcode`) == 1)
        self$`postcode` <- `postcode`
      }
    },
    toJSON = function() {
      GeocodingLocationObject <- list()
      if (!is.null(self$`point`)) {
        GeocodingLocationObject[['point']] <- self$`point`$toJSON()
      }
      if (!is.null(self$`osm_id`)) {
        GeocodingLocationObject[['osm_id']] <- self$`osm_id`
      }
      if (!is.null(self$`osm_type`)) {
        GeocodingLocationObject[['osm_type']] <- self$`osm_type`
      }
      if (!is.null(self$`osm_key`)) {
        GeocodingLocationObject[['osm_key']] <- self$`osm_key`
      }
      if (!is.null(self$`name`)) {
        GeocodingLocationObject[['name']] <- self$`name`
      }
      if (!is.null(self$`country`)) {
        GeocodingLocationObject[['country']] <- self$`country`
      }
      if (!is.null(self$`city`)) {
        GeocodingLocationObject[['city']] <- self$`city`
      }
      if (!is.null(self$`state`)) {
        GeocodingLocationObject[['state']] <- self$`state`
      }
      if (!is.null(self$`street`)) {
        GeocodingLocationObject[['street']] <- self$`street`
      }
      if (!is.null(self$`housenumber`)) {
        GeocodingLocationObject[['housenumber']] <- self$`housenumber`
      }
      if (!is.null(self$`postcode`)) {
        GeocodingLocationObject[['postcode']] <- self$`postcode`
      }

      GeocodingLocationObject
    },
    fromJSON = function(GeocodingLocationJson) {
      GeocodingLocationObject <- jsonlite::fromJSON(GeocodingLocationJson)
      if (!is.null(GeocodingLocationObject$`point`)) {
        pointObject <- GeocodingPoint$new()
        pointObject$fromJSON(jsonlite::toJSON(GeocodingLocationObject$point, auto_unbox = TRUE))
        self$`point` <- pointObject
      }
      if (!is.null(GeocodingLocationObject$`osm_id`)) {
        self$`osm_id` <- GeocodingLocationObject$`osm_id`
      }
      if (!is.null(GeocodingLocationObject$`osm_type`)) {
        self$`osm_type` <- GeocodingLocationObject$`osm_type`
      }
      if (!is.null(GeocodingLocationObject$`osm_key`)) {
        self$`osm_key` <- GeocodingLocationObject$`osm_key`
      }
      if (!is.null(GeocodingLocationObject$`name`)) {
        self$`name` <- GeocodingLocationObject$`name`
      }
      if (!is.null(GeocodingLocationObject$`country`)) {
        self$`country` <- GeocodingLocationObject$`country`
      }
      if (!is.null(GeocodingLocationObject$`city`)) {
        self$`city` <- GeocodingLocationObject$`city`
      }
      if (!is.null(GeocodingLocationObject$`state`)) {
        self$`state` <- GeocodingLocationObject$`state`
      }
      if (!is.null(GeocodingLocationObject$`street`)) {
        self$`street` <- GeocodingLocationObject$`street`
      }
      if (!is.null(GeocodingLocationObject$`housenumber`)) {
        self$`housenumber` <- GeocodingLocationObject$`housenumber`
      }
      if (!is.null(GeocodingLocationObject$`postcode`)) {
        self$`postcode` <- GeocodingLocationObject$`postcode`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "point": %s,
           "osm_id": %s,
           "osm_type": %s,
           "osm_key": %s,
           "name": %s,
           "country": %s,
           "city": %s,
           "state": %s,
           "street": %s,
           "housenumber": %s,
           "postcode": %s
        }',
        self$`point`$toJSON(),
        self$`osm_id`,
        self$`osm_type`,
        self$`osm_key`,
        self$`name`,
        self$`country`,
        self$`city`,
        self$`state`,
        self$`street`,
        self$`housenumber`,
        self$`postcode`
      )
    },
    fromJSONString = function(GeocodingLocationJson) {
      GeocodingLocationObject <- jsonlite::fromJSON(GeocodingLocationJson)
      GeocodingPointObject -> GeocodingPoint$new()
      self$`point` <- GeocodingPointObject$fromJSON(jsonlite::toJSON(GeocodingLocationObject$point, auto_unbox = TRUE))
      self$`osm_id` <- GeocodingLocationObject$`osm_id`
      self$`osm_type` <- GeocodingLocationObject$`osm_type`
      self$`osm_key` <- GeocodingLocationObject$`osm_key`
      self$`name` <- GeocodingLocationObject$`name`
      self$`country` <- GeocodingLocationObject$`country`
      self$`city` <- GeocodingLocationObject$`city`
      self$`state` <- GeocodingLocationObject$`state`
      self$`street` <- GeocodingLocationObject$`street`
      self$`housenumber` <- GeocodingLocationObject$`housenumber`
      self$`postcode` <- GeocodingLocationObject$`postcode`
    }
  )
)
