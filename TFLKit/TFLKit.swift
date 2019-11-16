//
//  TFLKit.swift
//  TFLKit
//
//  Created by Jeevan Thandi on 16/11/2019.
//  Copyright © 2019 Airla Tech Ltd. All rights reserved.
//

import Foundation
internal let tflRoot = "https://api.tfl.gov.uk/"

public class TFLKit {

    public init() {}
    

    public func arrivalsAtStop(stopIdCode: String) -> APICall<[BusResponse]> {
        let endpoint = Endpoint(path: tflRoot + "StopPoint/\(stopIdCode)/Arrivals?mode=bus")

        return APICall<[BusResponse]>(endpoint: endpoint)
    }
}

public struct BusResponse: APIModel {

    let expectedArrival: String
    let lineName: String
    enum CodingKeys: String, CodingKey {
        case expectedArrival
        case lineName
    }
}

extension Array: APIModel where Element: APIModel {}
