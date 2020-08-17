/**
 * (C) Copyright IBM Corp. 2020.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

/**
 Object containing an array of XPaths.
 */
public struct XPathPatterns: Codable, Equatable {

    /**
     An array to XPaths.
     */
    public var xpaths: [String]?

    // Map each property name to the key that shall be used for encoding/decoding.
    private enum CodingKeys: String, CodingKey {
        case xpaths = "xpaths"
    }

    /**
      Initialize a `XPathPatterns` with member variables.

      - parameter xpaths: An array to XPaths.

      - returns: An initialized `XPathPatterns`.
     */
    public init(
        xpaths: [String]? = nil
    )
    {
        self.xpaths = xpaths
    }

}
