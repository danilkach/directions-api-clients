# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Matrix operations
#' @description GraphHopper.Matrix
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' matrix_get Matrix API 
#'
#'
#' matrix_post Matrix API Post 
#'
#' }
#' 
#' @export
MatrixApi <- R6::R6Class(
  'MatrixApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    matrix_get = function(key, point, from_point, to_point, out_array, vehicle, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`point`)) {
        queryParams['point'] <- point
      }

      if (!missing(`from_point`)) {
        queryParams['from_point'] <- from_point
      }

      if (!missing(`to_point`)) {
        queryParams['to_point'] <- to_point
      }

      if (!missing(`out_array`)) {
        queryParams['out_array'] <- out_array
      }

      if (!missing(`vehicle`)) {
        queryParams['vehicle'] <- vehicle
      }

      if (!missing(`key`)) {
        queryParams['key'] <- key
      }

      urlPath <- "/matrix"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- MatrixResponse$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    matrix_post = function(key, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`key`)) {
        queryParams['key'] <- key
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/matrix"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- MatrixResponse$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
) 
