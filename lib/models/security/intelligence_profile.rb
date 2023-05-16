require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class IntelligenceProfile < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # A list of commonly-known aliases for the threat intelligence included in the intelligenceProfile.
                @aliases
                ## 
                # The description property
                @description
                ## 
                # The date and time when this intelligenceProfile was first active.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                @first_active_date_time
                ## 
                # Includes an assemblage of high-fidelity network indicators of compromise.
                @indicators
                ## 
                # The kind property
                @kind
                ## 
                # Known states (such as a country or government) who have sponsored threat actors associated with this intelligenceProfile. This is also known as the country/region of origin for the given actor or threat.
                @sponsor_states
                ## 
                # The summary property
                @summary
                ## 
                # Known targets related to this intelligenceProfile.
                @targets
                ## 
                # The title of this intelligenceProfile.
                @title
                ## 
                # Formatted information featuring a description of the distinctive tactics, techniques, and procedures (TTP) of the group, followed by a list of all known custom, commodity, and publicly available implants used by the group.
                @tradecraft
                ## 
                ## Gets the aliases property value. A list of commonly-known aliases for the threat intelligence included in the intelligenceProfile.
                ## @return a string
                ## 
                def aliases
                    return @aliases
                end
                ## 
                ## Sets the aliases property value. A list of commonly-known aliases for the threat intelligence included in the intelligenceProfile.
                ## @param value Value to set for the aliases property.
                ## @return a void
                ## 
                def aliases=(value)
                    @aliases = value
                end
                ## 
                ## Instantiates a new intelligenceProfile and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a intelligence_profile
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return IntelligenceProfile.new
                end
                ## 
                ## Gets the description property value. The description property
                ## @return a formatted_content
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description property
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the firstActiveDateTime property value. The date and time when this intelligenceProfile was first active.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def first_active_date_time
                    return @first_active_date_time
                end
                ## 
                ## Sets the firstActiveDateTime property value. The date and time when this intelligenceProfile was first active.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the first_active_date_time property.
                ## @return a void
                ## 
                def first_active_date_time=(value)
                    @first_active_date_time = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "aliases" => lambda {|n| @aliases = n.get_collection_of_primitive_values(String) },
                        "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::FormattedContent.create_from_discriminator_value(pn) }) },
                        "firstActiveDateTime" => lambda {|n| @first_active_date_time = n.get_date_time_value() },
                        "indicators" => lambda {|n| @indicators = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::IntelligenceProfileIndicator.create_from_discriminator_value(pn) }) },
                        "kind" => lambda {|n| @kind = n.get_enum_value(MicrosoftGraphBeta::Models::Security::IntelligenceProfileKind) },
                        "sponsorStates" => lambda {|n| @sponsor_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::IntelligenceProfileSponsorState.create_from_discriminator_value(pn) }) },
                        "summary" => lambda {|n| @summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::FormattedContent.create_from_discriminator_value(pn) }) },
                        "targets" => lambda {|n| @targets = n.get_collection_of_primitive_values(String) },
                        "title" => lambda {|n| @title = n.get_string_value() },
                        "tradecraft" => lambda {|n| @tradecraft = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::FormattedContent.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the indicators property value. Includes an assemblage of high-fidelity network indicators of compromise.
                ## @return a intelligence_profile_indicator
                ## 
                def indicators
                    return @indicators
                end
                ## 
                ## Sets the indicators property value. Includes an assemblage of high-fidelity network indicators of compromise.
                ## @param value Value to set for the indicators property.
                ## @return a void
                ## 
                def indicators=(value)
                    @indicators = value
                end
                ## 
                ## Gets the kind property value. The kind property
                ## @return a intelligence_profile_kind
                ## 
                def kind
                    return @kind
                end
                ## 
                ## Sets the kind property value. The kind property
                ## @param value Value to set for the kind property.
                ## @return a void
                ## 
                def kind=(value)
                    @kind = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_primitive_values("aliases", @aliases)
                    writer.write_object_value("description", @description)
                    writer.write_date_time_value("firstActiveDateTime", @first_active_date_time)
                    writer.write_collection_of_object_values("indicators", @indicators)
                    writer.write_enum_value("kind", @kind)
                    writer.write_collection_of_object_values("sponsorStates", @sponsor_states)
                    writer.write_object_value("summary", @summary)
                    writer.write_collection_of_primitive_values("targets", @targets)
                    writer.write_string_value("title", @title)
                    writer.write_object_value("tradecraft", @tradecraft)
                end
                ## 
                ## Gets the sponsorStates property value. Known states (such as a country or government) who have sponsored threat actors associated with this intelligenceProfile. This is also known as the country/region of origin for the given actor or threat.
                ## @return a intelligence_profile_sponsor_state
                ## 
                def sponsor_states
                    return @sponsor_states
                end
                ## 
                ## Sets the sponsorStates property value. Known states (such as a country or government) who have sponsored threat actors associated with this intelligenceProfile. This is also known as the country/region of origin for the given actor or threat.
                ## @param value Value to set for the sponsor_states property.
                ## @return a void
                ## 
                def sponsor_states=(value)
                    @sponsor_states = value
                end
                ## 
                ## Gets the summary property value. The summary property
                ## @return a formatted_content
                ## 
                def summary
                    return @summary
                end
                ## 
                ## Sets the summary property value. The summary property
                ## @param value Value to set for the summary property.
                ## @return a void
                ## 
                def summary=(value)
                    @summary = value
                end
                ## 
                ## Gets the targets property value. Known targets related to this intelligenceProfile.
                ## @return a string
                ## 
                def targets
                    return @targets
                end
                ## 
                ## Sets the targets property value. Known targets related to this intelligenceProfile.
                ## @param value Value to set for the targets property.
                ## @return a void
                ## 
                def targets=(value)
                    @targets = value
                end
                ## 
                ## Gets the title property value. The title of this intelligenceProfile.
                ## @return a string
                ## 
                def title
                    return @title
                end
                ## 
                ## Sets the title property value. The title of this intelligenceProfile.
                ## @param value Value to set for the title property.
                ## @return a void
                ## 
                def title=(value)
                    @title = value
                end
                ## 
                ## Gets the tradecraft property value. Formatted information featuring a description of the distinctive tactics, techniques, and procedures (TTP) of the group, followed by a list of all known custom, commodity, and publicly available implants used by the group.
                ## @return a formatted_content
                ## 
                def tradecraft
                    return @tradecraft
                end
                ## 
                ## Sets the tradecraft property value. Formatted information featuring a description of the distinctive tactics, techniques, and procedures (TTP) of the group, followed by a list of all known custom, commodity, and publicly available implants used by the group.
                ## @param value Value to set for the tradecraft property.
                ## @return a void
                ## 
                def tradecraft=(value)
                    @tradecraft = value
                end
            end
        end
    end
end
