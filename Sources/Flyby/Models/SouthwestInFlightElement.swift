// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let southwestInFlightElement = try SouthwestInFlightElement(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.southwestInFlightElementTask(with: url) { southwestInFlightElement, response, error in
//     if let southwestInFlightElement = southwestInFlightElement {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - SouthwestInFlightElement
struct SouthwestInFlightElement: Codable {
    /// "sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}
    let satelliteCommunicationLinkPortal: SatelliteCommunicationLinkPortal?
    
    /// 0-100 as an int
    let percentOfFlightCompleteNumber: Int?
    
    /// Altitude in miles above sea level
    let altitudeValue: String?
    
    /// "-90.439"
    let longitudeValue: String?
    
    /// "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}
    let satelliteCommunicationStatus: SatelliteCommunicationStatus?
    
    /// "EDT"
    let destinationTimeZoneValue: String?
    
    /// true / false
    let withinUnitedStates: Bool?
    
    /// "11:58 PM"
    let estimatedTimeOfArrivalInDestinationTimeZoneValue: String?
    
    /// "38.818"
    let latitudeValue: String?
    
    /// I'm not 100% sure what this is... in the JSON it's "gspdVal" = 0-about 500
    let groundSpeedMPHValue: String?
    
    /// I'm not 100% sure what this is... in the JSON it's "ttgc": "1h 27m"
    /// xx h yy m
    let timeToGroundContactHoursMinutesValue: String?
    
    /// "dist_remain": "710"
    let distanceRemainingMilesValue: String?
    
    /// "actime24": "22:31"
    let actualTime24InDestinationTimeZoneValue: String?

    enum CodingKeys: String, CodingKey {
        case satelliteCommunicationLinkPortal = "sat_commlink_portal"
        case percentOfFlightCompleteNumber = "pcent_flt_complete"
        case altitudeValue = "altVal"
        case longitudeValue = "lon"
        case satelliteCommunicationStatus = "satcomm_status"
        case destinationTimeZoneValue = "dtzone"
        case withinUnitedStates = "within_us"
        case estimatedTimeOfArrivalInDestinationTimeZoneValue = "etad"
        case latitudeValue = "lat"
        case groundSpeedMPHValue = "gspdVal"
        case timeToGroundContactHoursMinutesValue = "ttgc"
        case distanceRemainingMilesValue = "dist_remain"
        case actualTime24InDestinationTimeZoneValue = "actime24"
    }
}

// MARK: SouthwestInFlightElement convenience initializers and mutators

extension SouthwestInFlightElement {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SouthwestInFlightElement.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        satelliteCommunicationLinkPortal: SatelliteCommunicationLinkPortal?? = nil,
        percentOfFlightCompleteNumber: Int?? = nil,
        altitudeValue: String?? = nil,
        longitudeValue: String?? = nil,
        satelliteCommunicationStatus: SatelliteCommunicationStatus?? = nil,
        destinationTimeZoneValue: String?? = nil,
        withinUnitedStates: Bool?? = nil,
        estimatedTimeOfArrivalInDestinationTimeZoneValue: String?? = nil,
        latitudeValue: String?? = nil,
        gspdVal: String?? = nil,
        ttgc: String?? = nil,
        distRemain: String?? = nil,
        actime24: String?? = nil
    ) -> SouthwestInFlightElement {
        return SouthwestInFlightElement(
            satelliteCommunicationLinkPortal: satelliteCommunicationLinkPortal ?? self.satelliteCommunicationLinkPortal,
            percentOfFlightCompleteNumber: percentOfFlightCompleteNumber ?? self.percentOfFlightCompleteNumber,
            altitudeValue: altitudeValue ?? self.altitudeValue,
            longitudeValue: longitudeValue ?? self.longitudeValue,
            satelliteCommunicationStatus: satelliteCommunicationStatus ?? self.satelliteCommunicationStatus,
            destinationTimeZoneValue: destinationTimeZoneValue ?? self.destinationTimeZoneValue,
            withinUnitedStates: withinUnitedStates ?? self.withinUnitedStates,
            estimatedTimeOfArrivalInDestinationTimeZoneValue: estimatedTimeOfArrivalInDestinationTimeZoneValue ?? self.estimatedTimeOfArrivalInDestinationTimeZoneValue,
            latitudeValue: latitudeValue ?? self.latitudeValue,
            groundSpeedMPHValue: groundSpeedMPHValue ?? self.groundSpeedMPHValue,
            timeToGroundContactHoursMinutesValue: timeToGroundContactHoursMinutesValue ?? self.timeToGroundContactHoursMinutesValue,
            distanceRemainingMilesValue: distanceRemainingMilesValue ?? self.distanceRemainingMilesValue,
            actualTime24InDestinationTimeZoneValue: actualTime24InDestinationTimeZoneValue ?? self.actualTime24InDestinationTimeZoneValue
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
