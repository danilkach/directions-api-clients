//
// IsochroneResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct IsochroneResponse: Codable {


    /** The list of polygons in GeoJson format. It can be used e.g. in the Leaflet framework:  &#x60;&#x60;&#x60; L.geoJson(json.polygons).addTo(map) &#x60;&#x60;&#x60;  The number of polygon is identical to the specified buckets in the query. Every polygon contains the bucket number in the properties section of the GeoJson.  */
    public var polygons: [IsochroneResponsePolygon]?

    public var copyrights: [String]?
    public init(polygons: [IsochroneResponsePolygon]?, copyrights: [String]?) { 
        self.polygons = polygons
        self.copyrights = copyrights
    }

}
