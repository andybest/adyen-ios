//
// Copyright (c) 2021 Adyen N.V.
//
// This file is open source and available under the MIT license. See the LICENSE file for more info.
//

import Foundation

/// Contains details supplied by a component. These details are used to initiate or complete a payment.
public protocol Details: Encodable {}

public extension Details {
    
    /// Provides a concrete encodable object to easily encode any `Details` conforming object.
    var encodable: AnyEncodable { AnyEncodable(value: self) }
    
}

/// Contains the payment details entered by the user to complete payment with chosen payment method.
public protocol PaymentMethodDetails: Details {}

/// Contains additional details that were retrieved to complete a payment.
public protocol AdditionalDetails: Details {}
