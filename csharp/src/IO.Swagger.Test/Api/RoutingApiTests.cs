/* 
 * GraphHopper Directions API
 *
 * With the GraphHopper Directions API you get reliable and fast web services for routing and more with world wide coverage. We offer A-to-B routing via the Routing API optionally with turn instructions and elevation data as well as route optimization with various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API. 
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Swagger.Client;
using IO.Swagger.Api;
using IO.Swagger.Model;

namespace IO.Swagger.Test
{
    /// <summary>
    ///  Class for testing RoutingApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class RoutingApiTests
    {
        private RoutingApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new RoutingApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of RoutingApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' RoutingApi
            //Assert.IsInstanceOfType(typeof(RoutingApi), instance, "instance is a RoutingApi");
        }

        
        /// <summary>
        /// Test RouteGet
        /// </summary>
        [Test]
        public void RouteGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //List<string> point = null;
            //bool? pointsEncoded = null;
            //string key = null;
            //string locale = null;
            //bool? instructions = null;
            //string vehicle = null;
            //bool? elevation = null;
            //bool? calcPoints = null;
            //List<string> pointHint = null;
            //bool? chDisable = null;
            //string weighting = null;
            //bool? edgeTraversal = null;
            //string algorithm = null;
            //int? heading = null;
            //int? headingPenalty = null;
            //bool? passThrough = null;
            //int? roundTripDistance = null;
            //long? roundTripSeed = null;
            //int? alternativeRouteMaxPaths = null;
            //int? alternativeRouteMaxWeightFactor = null;
            //int? alternativeRouteMaxShareFactor = null;
            //var response = instance.RouteGet(point, pointsEncoded, key, locale, instructions, vehicle, elevation, calcPoints, pointHint, chDisable, weighting, edgeTraversal, algorithm, heading, headingPenalty, passThrough, roundTripDistance, roundTripSeed, alternativeRouteMaxPaths, alternativeRouteMaxWeightFactor, alternativeRouteMaxShareFactor);
            //Assert.IsInstanceOf<GHRouteResponse> (response, "response is GHRouteResponse");
        }
        
    }

}