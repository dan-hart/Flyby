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
    let satCommlinkPortal: SatelliteCommunicationLinkPortal?
    let pcentFltComplete: Int?
    let altVal: String?
    let lon: String?
    let satcommStatus: SatcommStatus?
    let dtzone: String?
    let withinUs: Bool?
    let etad: String?
    let lat: String?
    let gspdVal: String?
    let ttgc: String?
    let distRemain: String?
    let actime24: String?

    enum CodingKeys: String, CodingKey {
        case satCommlinkPortal = "sat_commlink_portal"
        case pcentFltComplete = "pcent_flt_complete"
        case altVal, lon
        case satcommStatus = "satcomm_status"
        case dtzone
        case withinUs = "within_us"
        case etad, lat, gspdVal, ttgc
        case distRemain = "dist_remain"
        case actime24
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
        satCommlinkPortal: SatelliteCommunicationLinkPortal?? = nil,
        pcentFltComplete: Int?? = nil,
        altVal: String?? = nil,
        lon: String?? = nil,
        satcommStatus: SatcommStatus?? = nil,
        dtzone: String?? = nil,
        withinUs: Bool?? = nil,
        etad: String?? = nil,
        lat: String?? = nil,
        gspdVal: String?? = nil,
        ttgc: String?? = nil,
        distRemain: String?? = nil,
        actime24: String?? = nil
    ) -> SouthwestInFlightElement {
        return SouthwestInFlightElement(
            satCommlinkPortal: satCommlinkPortal ?? self.satCommlinkPortal,
            pcentFltComplete: pcentFltComplete ?? self.pcentFltComplete,
            altVal: altVal ?? self.altVal,
            lon: lon ?? self.lon,
            satcommStatus: satcommStatus ?? self.satcommStatus,
            dtzone: dtzone ?? self.dtzone,
            withinUs: withinUs ?? self.withinUs,
            etad: etad ?? self.etad,
            lat: lat ?? self.lat,
            gspdVal: gspdVal ?? self.gspdVal,
            ttgc: ttgc ?? self.ttgc,
            distRemain: distRemain ?? self.distRemain,
            actime24: actime24 ?? self.actime24
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
