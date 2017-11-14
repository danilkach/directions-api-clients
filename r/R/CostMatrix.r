# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CostMatrix Class
#'
#' @field type 
#' @field url 
#' @field location_ids 
#' @field data 
#' @field profile 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CostMatrix <- R6::R6Class(
  'CostMatrix',
  public = list(
    `type` = NULL,
    `url` = NULL,
    `location_ids` = NULL,
    `data` = NULL,
    `profile` = NULL,
    initialize = function(`type`, `url`, `location_ids`, `data`, `profile`){
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`location_ids`)) {
        stopifnot(is.list(`location_ids`), length(`location_ids`) != 0)
        lapply(`location_ids`, function(x) stopifnot(is.character(x)))
        self$`location_ids` <- `location_ids`
      }
      if (!missing(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
      }
      if (!missing(`profile`)) {
        stopifnot(is.character(`profile`), length(`profile`) == 1)
        self$`profile` <- `profile`
      }
    },
    toJSON = function() {
      CostMatrixObject <- list()
      if (!is.null(self$`type`)) {
        CostMatrixObject[['type']] <- self$`type`
      }
      if (!is.null(self$`url`)) {
        CostMatrixObject[['url']] <- self$`url`
      }
      if (!is.null(self$`location_ids`)) {
        CostMatrixObject[['location_ids']] <- self$`location_ids`
      }
      if (!is.null(self$`data`)) {
        CostMatrixObject[['data']] <- self$`data`$toJSON()
      }
      if (!is.null(self$`profile`)) {
        CostMatrixObject[['profile']] <- self$`profile`
      }

      CostMatrixObject
    },
    fromJSON = function(CostMatrixJson) {
      CostMatrixObject <- jsonlite::fromJSON(CostMatrixJson)
      if (!is.null(CostMatrixObject$`type`)) {
        self$`type` <- CostMatrixObject$`type`
      }
      if (!is.null(CostMatrixObject$`url`)) {
        self$`url` <- CostMatrixObject$`url`
      }
      if (!is.null(CostMatrixObject$`location_ids`)) {
        self$`location_ids` <- CostMatrixObject$`location_ids`
      }
      if (!is.null(CostMatrixObject$`data`)) {
        dataObject <- CostMatrixData$new()
        dataObject$fromJSON(jsonlite::toJSON(CostMatrixObject$data, auto_unbox = TRUE))
        self$`data` <- dataObject
      }
      if (!is.null(CostMatrixObject$`profile`)) {
        self$`profile` <- CostMatrixObject$`profile`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "type": %s,
           "url": %s,
           "location_ids": [%s],
           "data": %s,
           "profile": %s
        }',
        self$`type`,
        self$`url`,
        lapply(self$`location_ids`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`data`$toJSON(),
        self$`profile`
      )
    },
    fromJSONString = function(CostMatrixJson) {
      CostMatrixObject <- jsonlite::fromJSON(CostMatrixJson)
      self$`type` <- CostMatrixObject$`type`
      self$`url` <- CostMatrixObject$`url`
      self$`location_ids` <- CostMatrixObject$`location_ids`
      CostMatrixDataObject -> CostMatrixData$new()
      self$`data` <- CostMatrixDataObject$fromJSON(jsonlite::toJSON(CostMatrixObject$data, auto_unbox = TRUE))
      self$`profile` <- CostMatrixObject$`profile`
    }
  )
)
