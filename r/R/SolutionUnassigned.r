# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SolutionUnassigned Class
#'
#' @field services 
#' @field shipments 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SolutionUnassigned <- R6::R6Class(
  'SolutionUnassigned',
  public = list(
    `services` = NULL,
    `shipments` = NULL,
    initialize = function(`services`, `shipments`){
      if (!missing(`services`)) {
        stopifnot(is.list(`services`), length(`services`) != 0)
        lapply(`services`, function(x) stopifnot(is.character(x)))
        self$`services` <- `services`
      }
      if (!missing(`shipments`)) {
        stopifnot(is.list(`shipments`), length(`shipments`) != 0)
        lapply(`shipments`, function(x) stopifnot(is.character(x)))
        self$`shipments` <- `shipments`
      }
    },
    toJSON = function() {
      SolutionUnassignedObject <- list()
      if (!is.null(self$`services`)) {
        SolutionUnassignedObject[['services']] <- self$`services`
      }
      if (!is.null(self$`shipments`)) {
        SolutionUnassignedObject[['shipments']] <- self$`shipments`
      }

      SolutionUnassignedObject
    },
    fromJSON = function(SolutionUnassignedJson) {
      SolutionUnassignedObject <- jsonlite::fromJSON(SolutionUnassignedJson)
      if (!is.null(SolutionUnassignedObject$`services`)) {
        self$`services` <- SolutionUnassignedObject$`services`
      }
      if (!is.null(SolutionUnassignedObject$`shipments`)) {
        self$`shipments` <- SolutionUnassignedObject$`shipments`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "services": [%s],
           "shipments": [%s]
        }',
        lapply(self$`services`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`shipments`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(SolutionUnassignedJson) {
      SolutionUnassignedObject <- jsonlite::fromJSON(SolutionUnassignedJson)
      self$`services` <- SolutionUnassignedObject$`services`
      self$`shipments` <- SolutionUnassignedObject$`shipments`
    }
  )
)
