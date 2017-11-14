# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Vehicle Class
#'
#' @field vehicle_id 
#' @field type_id 
#' @field start_address 
#' @field end_address 
#' @field break 
#' @field return_to_depot 
#' @field earliest_start 
#' @field latest_end 
#' @field skills 
#' @field max_distance 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Vehicle <- R6::R6Class(
  'Vehicle',
  public = list(
    `vehicle_id` = NULL,
    `type_id` = NULL,
    `start_address` = NULL,
    `end_address` = NULL,
    `break` = NULL,
    `return_to_depot` = NULL,
    `earliest_start` = NULL,
    `latest_end` = NULL,
    `skills` = NULL,
    `max_distance` = NULL,
    initialize = function(`vehicle_id`, `type_id`, `start_address`, `end_address`, `break`, `return_to_depot`, `earliest_start`, `latest_end`, `skills`, `max_distance`){
      if (!missing(`vehicle_id`)) {
        stopifnot(is.character(`vehicle_id`), length(`vehicle_id`) == 1)
        self$`vehicle_id` <- `vehicle_id`
      }
      if (!missing(`type_id`)) {
        stopifnot(is.character(`type_id`), length(`type_id`) == 1)
        self$`type_id` <- `type_id`
      }
      if (!missing(`start_address`)) {
        stopifnot(R6::is.R6(`start_address`))
        self$`start_address` <- `start_address`
      }
      if (!missing(`end_address`)) {
        stopifnot(R6::is.R6(`end_address`))
        self$`end_address` <- `end_address`
      }
      if (!missing(`break`)) {
        stopifnot(R6::is.R6(`break`))
        self$`break` <- `break`
      }
      if (!missing(`return_to_depot`)) {
        self$`return_to_depot` <- `return_to_depot`
      }
      if (!missing(`earliest_start`)) {
        stopifnot(is.numeric(`earliest_start`), length(`earliest_start`) == 1)
        self$`earliest_start` <- `earliest_start`
      }
      if (!missing(`latest_end`)) {
        stopifnot(is.numeric(`latest_end`), length(`latest_end`) == 1)
        self$`latest_end` <- `latest_end`
      }
      if (!missing(`skills`)) {
        stopifnot(is.list(`skills`), length(`skills`) != 0)
        lapply(`skills`, function(x) stopifnot(is.character(x)))
        self$`skills` <- `skills`
      }
      if (!missing(`max_distance`)) {
        stopifnot(is.numeric(`max_distance`), length(`max_distance`) == 1)
        self$`max_distance` <- `max_distance`
      }
    },
    toJSON = function() {
      VehicleObject <- list()
      if (!is.null(self$`vehicle_id`)) {
        VehicleObject[['vehicle_id']] <- self$`vehicle_id`
      }
      if (!is.null(self$`type_id`)) {
        VehicleObject[['type_id']] <- self$`type_id`
      }
      if (!is.null(self$`start_address`)) {
        VehicleObject[['start_address']] <- self$`start_address`$toJSON()
      }
      if (!is.null(self$`end_address`)) {
        VehicleObject[['end_address']] <- self$`end_address`$toJSON()
      }
      if (!is.null(self$`break`)) {
        VehicleObject[['break']] <- self$`break`$toJSON()
      }
      if (!is.null(self$`return_to_depot`)) {
        VehicleObject[['return_to_depot']] <- self$`return_to_depot`
      }
      if (!is.null(self$`earliest_start`)) {
        VehicleObject[['earliest_start']] <- self$`earliest_start`
      }
      if (!is.null(self$`latest_end`)) {
        VehicleObject[['latest_end']] <- self$`latest_end`
      }
      if (!is.null(self$`skills`)) {
        VehicleObject[['skills']] <- self$`skills`
      }
      if (!is.null(self$`max_distance`)) {
        VehicleObject[['max_distance']] <- self$`max_distance`
      }

      VehicleObject
    },
    fromJSON = function(VehicleJson) {
      VehicleObject <- jsonlite::fromJSON(VehicleJson)
      if (!is.null(VehicleObject$`vehicle_id`)) {
        self$`vehicle_id` <- VehicleObject$`vehicle_id`
      }
      if (!is.null(VehicleObject$`type_id`)) {
        self$`type_id` <- VehicleObject$`type_id`
      }
      if (!is.null(VehicleObject$`start_address`)) {
        start_addressObject <- Address$new()
        start_addressObject$fromJSON(jsonlite::toJSON(VehicleObject$start_address, auto_unbox = TRUE))
        self$`start_address` <- start_addressObject
      }
      if (!is.null(VehicleObject$`end_address`)) {
        end_addressObject <- Address$new()
        end_addressObject$fromJSON(jsonlite::toJSON(VehicleObject$end_address, auto_unbox = TRUE))
        self$`end_address` <- end_addressObject
      }
      if (!is.null(VehicleObject$`break`)) {
        breakObject <- ModelBreak$new()
        breakObject$fromJSON(jsonlite::toJSON(VehicleObject$break, auto_unbox = TRUE))
        self$`break` <- breakObject
      }
      if (!is.null(VehicleObject$`return_to_depot`)) {
        self$`return_to_depot` <- VehicleObject$`return_to_depot`
      }
      if (!is.null(VehicleObject$`earliest_start`)) {
        self$`earliest_start` <- VehicleObject$`earliest_start`
      }
      if (!is.null(VehicleObject$`latest_end`)) {
        self$`latest_end` <- VehicleObject$`latest_end`
      }
      if (!is.null(VehicleObject$`skills`)) {
        self$`skills` <- VehicleObject$`skills`
      }
      if (!is.null(VehicleObject$`max_distance`)) {
        self$`max_distance` <- VehicleObject$`max_distance`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "vehicle_id": %s,
           "type_id": %s,
           "start_address": %s,
           "end_address": %s,
           "break": %s,
           "return_to_depot": %s,
           "earliest_start": %d,
           "latest_end": %d,
           "skills": [%s],
           "max_distance": %d
        }',
        self$`vehicle_id`,
        self$`type_id`,
        self$`start_address`$toJSON(),
        self$`end_address`$toJSON(),
        self$`break`$toJSON(),
        self$`return_to_depot`,
        self$`earliest_start`,
        self$`latest_end`,
        lapply(self$`skills`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`max_distance`
      )
    },
    fromJSONString = function(VehicleJson) {
      VehicleObject <- jsonlite::fromJSON(VehicleJson)
      self$`vehicle_id` <- VehicleObject$`vehicle_id`
      self$`type_id` <- VehicleObject$`type_id`
      AddressObject -> Address$new()
      self$`start_address` <- AddressObject$fromJSON(jsonlite::toJSON(VehicleObject$start_address, auto_unbox = TRUE))
      AddressObject -> Address$new()
      self$`end_address` <- AddressObject$fromJSON(jsonlite::toJSON(VehicleObject$end_address, auto_unbox = TRUE))
      ModelBreakObject -> ModelBreak$new()
      self$`break` <- ModelBreakObject$fromJSON(jsonlite::toJSON(VehicleObject$break, auto_unbox = TRUE))
      self$`return_to_depot` <- VehicleObject$`return_to_depot`
      self$`earliest_start` <- VehicleObject$`earliest_start`
      self$`latest_end` <- VehicleObject$`latest_end`
      self$`skills` <- VehicleObject$`skills`
      self$`max_distance` <- VehicleObject$`max_distance`
    }
  )
)
