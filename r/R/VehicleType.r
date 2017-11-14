# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' VehicleType Class
#'
#' @field type_id 
#' @field profile 
#' @field capacity 
#' @field speed_factor 
#' @field service_time_factor 
#' @field cost_per_meter 
#' @field cost_per_second 
#' @field cost_per_activation 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VehicleType <- R6::R6Class(
  'VehicleType',
  public = list(
    `type_id` = NULL,
    `profile` = NULL,
    `capacity` = NULL,
    `speed_factor` = NULL,
    `service_time_factor` = NULL,
    `cost_per_meter` = NULL,
    `cost_per_second` = NULL,
    `cost_per_activation` = NULL,
    initialize = function(`type_id`, `profile`, `capacity`, `speed_factor`, `service_time_factor`, `cost_per_meter`, `cost_per_second`, `cost_per_activation`){
      if (!missing(`type_id`)) {
        stopifnot(is.character(`type_id`), length(`type_id`) == 1)
        self$`type_id` <- `type_id`
      }
      if (!missing(`profile`)) {
        stopifnot(is.character(`profile`), length(`profile`) == 1)
        self$`profile` <- `profile`
      }
      if (!missing(`capacity`)) {
        stopifnot(is.list(`capacity`), length(`capacity`) != 0)
        lapply(`capacity`, function(x) stopifnot(is.character(x)))
        self$`capacity` <- `capacity`
      }
      if (!missing(`speed_factor`)) {
        stopifnot(is.numeric(`speed_factor`), length(`speed_factor`) == 1)
        self$`speed_factor` <- `speed_factor`
      }
      if (!missing(`service_time_factor`)) {
        stopifnot(is.numeric(`service_time_factor`), length(`service_time_factor`) == 1)
        self$`service_time_factor` <- `service_time_factor`
      }
      if (!missing(`cost_per_meter`)) {
        stopifnot(is.numeric(`cost_per_meter`), length(`cost_per_meter`) == 1)
        self$`cost_per_meter` <- `cost_per_meter`
      }
      if (!missing(`cost_per_second`)) {
        stopifnot(is.numeric(`cost_per_second`), length(`cost_per_second`) == 1)
        self$`cost_per_second` <- `cost_per_second`
      }
      if (!missing(`cost_per_activation`)) {
        stopifnot(is.numeric(`cost_per_activation`), length(`cost_per_activation`) == 1)
        self$`cost_per_activation` <- `cost_per_activation`
      }
    },
    toJSON = function() {
      VehicleTypeObject <- list()
      if (!is.null(self$`type_id`)) {
        VehicleTypeObject[['type_id']] <- self$`type_id`
      }
      if (!is.null(self$`profile`)) {
        VehicleTypeObject[['profile']] <- self$`profile`
      }
      if (!is.null(self$`capacity`)) {
        VehicleTypeObject[['capacity']] <- self$`capacity`
      }
      if (!is.null(self$`speed_factor`)) {
        VehicleTypeObject[['speed_factor']] <- self$`speed_factor`
      }
      if (!is.null(self$`service_time_factor`)) {
        VehicleTypeObject[['service_time_factor']] <- self$`service_time_factor`
      }
      if (!is.null(self$`cost_per_meter`)) {
        VehicleTypeObject[['cost_per_meter']] <- self$`cost_per_meter`
      }
      if (!is.null(self$`cost_per_second`)) {
        VehicleTypeObject[['cost_per_second']] <- self$`cost_per_second`
      }
      if (!is.null(self$`cost_per_activation`)) {
        VehicleTypeObject[['cost_per_activation']] <- self$`cost_per_activation`
      }

      VehicleTypeObject
    },
    fromJSON = function(VehicleTypeJson) {
      VehicleTypeObject <- jsonlite::fromJSON(VehicleTypeJson)
      if (!is.null(VehicleTypeObject$`type_id`)) {
        self$`type_id` <- VehicleTypeObject$`type_id`
      }
      if (!is.null(VehicleTypeObject$`profile`)) {
        self$`profile` <- VehicleTypeObject$`profile`
      }
      if (!is.null(VehicleTypeObject$`capacity`)) {
        self$`capacity` <- VehicleTypeObject$`capacity`
      }
      if (!is.null(VehicleTypeObject$`speed_factor`)) {
        self$`speed_factor` <- VehicleTypeObject$`speed_factor`
      }
      if (!is.null(VehicleTypeObject$`service_time_factor`)) {
        self$`service_time_factor` <- VehicleTypeObject$`service_time_factor`
      }
      if (!is.null(VehicleTypeObject$`cost_per_meter`)) {
        self$`cost_per_meter` <- VehicleTypeObject$`cost_per_meter`
      }
      if (!is.null(VehicleTypeObject$`cost_per_second`)) {
        self$`cost_per_second` <- VehicleTypeObject$`cost_per_second`
      }
      if (!is.null(VehicleTypeObject$`cost_per_activation`)) {
        self$`cost_per_activation` <- VehicleTypeObject$`cost_per_activation`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "type_id": %s,
           "profile": %s,
           "capacity": [%s],
           "speed_factor": %d,
           "service_time_factor": %d,
           "cost_per_meter": %d,
           "cost_per_second": %d,
           "cost_per_activation": %d
        }',
        self$`type_id`,
        self$`profile`,
        lapply(self$`capacity`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`speed_factor`,
        self$`service_time_factor`,
        self$`cost_per_meter`,
        self$`cost_per_second`,
        self$`cost_per_activation`
      )
    },
    fromJSONString = function(VehicleTypeJson) {
      VehicleTypeObject <- jsonlite::fromJSON(VehicleTypeJson)
      self$`type_id` <- VehicleTypeObject$`type_id`
      self$`profile` <- VehicleTypeObject$`profile`
      self$`capacity` <- VehicleTypeObject$`capacity`
      self$`speed_factor` <- VehicleTypeObject$`speed_factor`
      self$`service_time_factor` <- VehicleTypeObject$`service_time_factor`
      self$`cost_per_meter` <- VehicleTypeObject$`cost_per_meter`
      self$`cost_per_second` <- VehicleTypeObject$`cost_per_second`
      self$`cost_per_activation` <- VehicleTypeObject$`cost_per_activation`
    }
  )
)
