/**
 * (C) Copyright IBM Corp. 2019, 2020.
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

/** DialogSuggestionResponseGeneric. */
public struct DialogSuggestionResponseGeneric: Codable, Equatable {

    /**
     The type of response returned by the dialog node. The specified response type must be supported by the client
     application or channel.
     **Note:** The **search_skill** response type is is used only by the v2 runtime API.
     */
    public enum ResponseType: String {
        case text = "text"
        case pause = "pause"
        case image = "image"
        case option = "option"
        case connectToAgent = "connect_to_agent"
        case searchSkill = "search_skill"
    }

    /**
     The preferred type of control to display.
     */
    public enum Preference: String {
        case dropdown = "dropdown"
        case button = "button"
    }

    /**
     The type of response returned by the dialog node. The specified response type must be supported by the client
     application or channel.
     **Note:** The **search_skill** response type is is used only by the v2 runtime API.
     */
    public var responseType: String

    /**
     The text of the response.
     */
    public var text: String?

    /**
     How long to pause, in milliseconds.
     */
    public var time: Int?

    /**
     Whether to send a "user is typing" event during the pause.
     */
    public var typing: Bool?

    /**
     The URL of the image.
     */
    public var source: String?

    /**
     The title or introductory text to show before the response.
     */
    public var title: String?

    /**
     The description to show with the the response.
     */
    public var description: String?

    /**
     The preferred type of control to display.
     */
    public var preference: String?

    /**
     An array of objects describing the options from which the user can choose.
     */
    public var options: [DialogNodeOutputOptionsElement]?

    /**
     A message to be sent to the human agent who will be taking over the conversation.
     */
    public var messageToHumanAgent: String?

    /**
     A label identifying the topic of the conversation, derived from the **title** property of the relevant node.
     */
    public var topic: String?

    /**
     The ID of the dialog node that the **topic** property is taken from. The **topic** property is populated using the
     value of the dialog node's **title** property.
     */
    public var dialogNode: String?

    // Map each property name to the key that shall be used for encoding/decoding.
    private enum CodingKeys: String, CodingKey {
        case responseType = "response_type"
        case text = "text"
        case time = "time"
        case typing = "typing"
        case source = "source"
        case title = "title"
        case description = "description"
        case preference = "preference"
        case options = "options"
        case messageToHumanAgent = "message_to_human_agent"
        case topic = "topic"
        case dialogNode = "dialog_node"
    }

    /**
      Initialize a `DialogSuggestionResponseGeneric` with member variables.

      - parameter responseType: The type of response returned by the dialog node. The specified response type must be
        supported by the client application or channel.
        **Note:** The **search_skill** response type is is used only by the v2 runtime API.
      - parameter text: The text of the response.
      - parameter time: How long to pause, in milliseconds.
      - parameter typing: Whether to send a "user is typing" event during the pause.
      - parameter source: The URL of the image.
      - parameter title: The title or introductory text to show before the response.
      - parameter description: The description to show with the the response.
      - parameter preference: The preferred type of control to display.
      - parameter options: An array of objects describing the options from which the user can choose.
      - parameter messageToHumanAgent: A message to be sent to the human agent who will be taking over the
        conversation.
      - parameter topic: A label identifying the topic of the conversation, derived from the **title** property of the
        relevant node.
      - parameter dialogNode: The ID of the dialog node that the **topic** property is taken from. The **topic**
        property is populated using the value of the dialog node's **title** property.

      - returns: An initialized `DialogSuggestionResponseGeneric`.
     */
    public init(
        responseType: String,
        text: String? = nil,
        time: Int? = nil,
        typing: Bool? = nil,
        source: String? = nil,
        title: String? = nil,
        description: String? = nil,
        preference: String? = nil,
        options: [DialogNodeOutputOptionsElement]? = nil,
        messageToHumanAgent: String? = nil,
        topic: String? = nil,
        dialogNode: String? = nil
    )
    {
        self.responseType = responseType
        self.text = text
        self.time = time
        self.typing = typing
        self.source = source
        self.title = title
        self.description = description
        self.preference = preference
        self.options = options
        self.messageToHumanAgent = messageToHumanAgent
        self.topic = topic
        self.dialogNode = dialogNode
    }

}
