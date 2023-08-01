require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class HostPair < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The childHost property
                @child_host
                ## 
                # The firstSeenDateTime property
                @first_seen_date_time
                ## 
                # The lastSeenDateTime property
                @last_seen_date_time
                ## 
                # The linkKind property
                @link_kind
                ## 
                # The parentHost property
                @parent_host
                ## 
                ## Gets the childHost property value. The childHost property
                ## @return a host
                ## 
                def child_host
                    return @child_host
                end
                ## 
                ## Sets the childHost property value. The childHost property
                ## @param value Value to set for the childHost property.
                ## @return a void
                ## 
                def child_host=(value)
                    @child_host = value
                end
                ## 
                ## Instantiates a new hostPair and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a host_pair
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return HostPair.new
                end
                ## 
                ## Gets the firstSeenDateTime property value. The firstSeenDateTime property
                ## @return a date_time
                ## 
                def first_seen_date_time
                    return @first_seen_date_time
                end
                ## 
                ## Sets the firstSeenDateTime property value. The firstSeenDateTime property
                ## @param value Value to set for the firstSeenDateTime property.
                ## @return a void
                ## 
                def first_seen_date_time=(value)
                    @first_seen_date_time = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "childHost" => lambda {|n| @child_host = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::Host.create_from_discriminator_value(pn) }) },
                        "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                        "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                        "linkKind" => lambda {|n| @link_kind = n.get_string_value() },
                        "parentHost" => lambda {|n| @parent_host = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::Host.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the lastSeenDateTime property value. The lastSeenDateTime property
                ## @return a date_time
                ## 
                def last_seen_date_time
                    return @last_seen_date_time
                end
                ## 
                ## Sets the lastSeenDateTime property value. The lastSeenDateTime property
                ## @param value Value to set for the lastSeenDateTime property.
                ## @return a void
                ## 
                def last_seen_date_time=(value)
                    @last_seen_date_time = value
                end
                ## 
                ## Gets the linkKind property value. The linkKind property
                ## @return a string
                ## 
                def link_kind
                    return @link_kind
                end
                ## 
                ## Sets the linkKind property value. The linkKind property
                ## @param value Value to set for the linkKind property.
                ## @return a void
                ## 
                def link_kind=(value)
                    @link_kind = value
                end
                ## 
                ## Gets the parentHost property value. The parentHost property
                ## @return a host
                ## 
                def parent_host
                    return @parent_host
                end
                ## 
                ## Sets the parentHost property value. The parentHost property
                ## @param value Value to set for the parentHost property.
                ## @return a void
                ## 
                def parent_host=(value)
                    @parent_host = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("childHost", @child_host)
                    writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                    writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                    writer.write_string_value("linkKind", @link_kind)
                    writer.write_object_value("parentHost", @parent_host)
                end
            end
        end
    end
end
