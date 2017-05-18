/**
 * GraphHopper Directions API
 * With the GraphHopper Directions API you get reliable and fast web services for routing and more with world wide coverage. We offer A-to-B routing via the Routing API optionally with turn instructions and elevation data as well as route optimization with various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API. 
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package io.swagger.client.api

import io.swagger.client.model.JobId
import io.swagger.client.model.Request
import io.swagger.client.model.Response
import io.swagger.client.ApiInvoker
import io.swagger.client.ApiException

import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart

import javax.ws.rs.core.MediaType

import java.io.File
import java.util.Date

import scala.collection.mutable.HashMap

class RouteOptimizationApi(val defBasePath: String = "https://graphhopper.com/api/1",
                        defApiInvoker: ApiInvoker = ApiInvoker) {
  var basePath = defBasePath
  var apiInvoker = defApiInvoker

  def addHeader(key: String, value: String) = apiInvoker.defaultHeaders += key -> value 

  /**
   * Return the solution associated to the jobId
   * This endpoint returns the solution of a large problems. You can fetch it with the job_id, you have been sent. 
   * @param key your API key 
   * @param jobId Request solution with jobId 
   * @return Response
   */
  def getSolution(key: String, jobId: String): Option[Response] = {
    // create path and map variables
    val path = "/vrp/solution/{jobId}".replaceAll("\\{format\\}", "json").replaceAll("\\{" + "jobId" + "\\}",apiInvoker.escape(jobId))

    val contentTypes = List("application/json")
    val contentType = contentTypes(0)

    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    if (key == null) throw new Exception("Missing required parameter 'key' when calling RouteOptimizationApi->getSolution")

    if (jobId == null) throw new Exception("Missing required parameter 'jobId' when calling RouteOptimizationApi->getSolution")

    queryParams += "key" -> key.toString
    

    var postBody: AnyRef = null

    if (contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart
      postBody = mp
    } else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(apiInvoker.deserialize(s, "", classOf[Response]).asInstanceOf[Response])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

  /**
   * Solves vehicle routing problems
   * This endpoint for solving vehicle routing problems, i.e. traveling salesman or vehicle routing problems, and returns the solution. 
   * @param key your API key 
   * @param body Request object that contains the problem to be solved 
   * @return JobId
   */
  def postVrp(key: String, body: Request): Option[JobId] = {
    // create path and map variables
    val path = "/vrp/optimize".replaceAll("\\{format\\}", "json")

    val contentTypes = List("application/json")
    val contentType = contentTypes(0)

    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    if (key == null) throw new Exception("Missing required parameter 'key' when calling RouteOptimizationApi->postVrp")

    if (body == null) throw new Exception("Missing required parameter 'body' when calling RouteOptimizationApi->postVrp")

    queryParams += "key" -> key.toString
    

    var postBody: AnyRef = body

    if (contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart
      postBody = mp
    } else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "POST", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(apiInvoker.deserialize(s, "", classOf[JobId]).asInstanceOf[JobId])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

}