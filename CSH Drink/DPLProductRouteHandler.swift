//
//  DPLProductRouteHandler.swift
//  CSH Drink
//
//  Created by Stuart Olivera on 8/22/15.
//  Copyright (c) 2015 Stuart Olivera. All rights reserved.
//

import Foundation
import DeepLinkKit

public class DPLProductRouteHandler: DPLRouteHandler {
    public override func shouldHandleDeepLink(deepLink: DPLDeepLink!) -> Bool {
        if let apikey = deepLink.routeParameters["apikey"] as?  String  {
            CurrentUser.setApiKey(apikey)
            return true
        }
        return false
    }
}