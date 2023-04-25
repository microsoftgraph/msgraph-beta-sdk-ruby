require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './search'

module MicrosoftGraphBeta
    module Models
        module Search
            class Qna < MicrosoftGraphBeta::Models::Search::SearchAnswer
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Timestamp of when the qna will stop to appear as a search result. Set as null for always available.
                @availability_end_date_time
                ## 
                # Timestamp of when the qna will start to appear as a search result. Set as null for always available.
                @availability_start_date_time
                ## 
                # List of security groups able to view this qna.
                @group_ids
                ## 
                # True if this qna was suggested to the admin by a user or was mined and suggested by Microsoft. Read-only.
                @is_suggested
                ## 
                # Keywords that trigger this qna to appear in search results.
                @keywords
                ## 
                # A list of language names that are geographically specific and that this QnA can be viewed in. Each language tag value follows the pattern {language}-{region}. As an example, en-us is English as used in the United States. For the list of possible values, see supported language tags.
                @language_tags
                ## 
                # List of devices and operating systems able to view this qna. Possible values are: unknown, android, androidForWork, ios, macOS, windowsPhone81, windowsPhone81AndLater, windows10AndLater, androidWorkProfile, androidASOP.
                @platforms
                ## 
                # The state property
                @state
                ## 
                # Variations of a qna for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.
                @targeted_variations
                ## 
                ## Gets the availabilityEndDateTime property value. Timestamp of when the qna will stop to appear as a search result. Set as null for always available.
                ## @return a date_time
                ## 
                def availability_end_date_time
                    return @availability_end_date_time
                end
                ## 
                ## Sets the availabilityEndDateTime property value. Timestamp of when the qna will stop to appear as a search result. Set as null for always available.
                ## @param value Value to set for the availability_end_date_time property.
                ## @return a void
                ## 
                def availability_end_date_time=(value)
                    @availability_end_date_time = value
                end
                ## 
                ## Gets the availabilityStartDateTime property value. Timestamp of when the qna will start to appear as a search result. Set as null for always available.
                ## @return a date_time
                ## 
                def availability_start_date_time
                    return @availability_start_date_time
                end
                ## 
                ## Sets the availabilityStartDateTime property value. Timestamp of when the qna will start to appear as a search result. Set as null for always available.
                ## @param value Value to set for the availability_start_date_time property.
                ## @return a void
                ## 
                def availability_start_date_time=(value)
                    @availability_start_date_time = value
                end
                ## 
                ## Instantiates a new Qna and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a qna
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Qna.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "availabilityEndDateTime" => lambda {|n| @availability_end_date_time = n.get_date_time_value() },
                        "availabilityStartDateTime" => lambda {|n| @availability_start_date_time = n.get_date_time_value() },
                        "groupIds" => lambda {|n| @group_ids = n.get_collection_of_primitive_values(String) },
                        "isSuggested" => lambda {|n| @is_suggested = n.get_boolean_value() },
                        "keywords" => lambda {|n| @keywords = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Search::AnswerKeyword.create_from_discriminator_value(pn) }) },
                        "languageTags" => lambda {|n| @language_tags = n.get_collection_of_primitive_values(String) },
                        "platforms" => lambda {|n| @platforms = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DevicePlatformType.create_from_discriminator_value(pn) }) },
                        "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::Search::AnswerState) },
                        "targetedVariations" => lambda {|n| @targeted_variations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Search::AnswerVariant.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the groupIds property value. List of security groups able to view this qna.
                ## @return a string
                ## 
                def group_ids
                    return @group_ids
                end
                ## 
                ## Sets the groupIds property value. List of security groups able to view this qna.
                ## @param value Value to set for the group_ids property.
                ## @return a void
                ## 
                def group_ids=(value)
                    @group_ids = value
                end
                ## 
                ## Gets the isSuggested property value. True if this qna was suggested to the admin by a user or was mined and suggested by Microsoft. Read-only.
                ## @return a boolean
                ## 
                def is_suggested
                    return @is_suggested
                end
                ## 
                ## Sets the isSuggested property value. True if this qna was suggested to the admin by a user or was mined and suggested by Microsoft. Read-only.
                ## @param value Value to set for the is_suggested property.
                ## @return a void
                ## 
                def is_suggested=(value)
                    @is_suggested = value
                end
                ## 
                ## Gets the keywords property value. Keywords that trigger this qna to appear in search results.
                ## @return a answer_keyword
                ## 
                def keywords
                    return @keywords
                end
                ## 
                ## Sets the keywords property value. Keywords that trigger this qna to appear in search results.
                ## @param value Value to set for the keywords property.
                ## @return a void
                ## 
                def keywords=(value)
                    @keywords = value
                end
                ## 
                ## Gets the languageTags property value. A list of language names that are geographically specific and that this QnA can be viewed in. Each language tag value follows the pattern {language}-{region}. As an example, en-us is English as used in the United States. For the list of possible values, see supported language tags.
                ## @return a string
                ## 
                def language_tags
                    return @language_tags
                end
                ## 
                ## Sets the languageTags property value. A list of language names that are geographically specific and that this QnA can be viewed in. Each language tag value follows the pattern {language}-{region}. As an example, en-us is English as used in the United States. For the list of possible values, see supported language tags.
                ## @param value Value to set for the language_tags property.
                ## @return a void
                ## 
                def language_tags=(value)
                    @language_tags = value
                end
                ## 
                ## Gets the platforms property value. List of devices and operating systems able to view this qna. Possible values are: unknown, android, androidForWork, ios, macOS, windowsPhone81, windowsPhone81AndLater, windows10AndLater, androidWorkProfile, androidASOP.
                ## @return a device_platform_type
                ## 
                def platforms
                    return @platforms
                end
                ## 
                ## Sets the platforms property value. List of devices and operating systems able to view this qna. Possible values are: unknown, android, androidForWork, ios, macOS, windowsPhone81, windowsPhone81AndLater, windows10AndLater, androidWorkProfile, androidASOP.
                ## @param value Value to set for the platforms property.
                ## @return a void
                ## 
                def platforms=(value)
                    @platforms = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_date_time_value("availabilityEndDateTime", @availability_end_date_time)
                    writer.write_date_time_value("availabilityStartDateTime", @availability_start_date_time)
                    writer.write_collection_of_primitive_values("groupIds", @group_ids)
                    writer.write_boolean_value("isSuggested", @is_suggested)
                    writer.write_object_value("keywords", @keywords)
                    writer.write_collection_of_primitive_values("languageTags", @language_tags)
                    writer.write_collection_of_object_values("platforms", @platforms)
                    writer.write_enum_value("state", @state)
                    writer.write_collection_of_object_values("targetedVariations", @targeted_variations)
                end
                ## 
                ## Gets the state property value. The state property
                ## @return a answer_state
                ## 
                def state
                    return @state
                end
                ## 
                ## Sets the state property value. The state property
                ## @param value Value to set for the state property.
                ## @return a void
                ## 
                def state=(value)
                    @state = value
                end
                ## 
                ## Gets the targetedVariations property value. Variations of a qna for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.
                ## @return a answer_variant
                ## 
                def targeted_variations
                    return @targeted_variations
                end
                ## 
                ## Sets the targetedVariations property value. Variations of a qna for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.
                ## @param value Value to set for the targeted_variations property.
                ## @return a void
                ## 
                def targeted_variations=(value)
                    @targeted_variations = value
                end
            end
        end
    end
end
