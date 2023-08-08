require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class IpRange < MicrosoftGraphBeta::Models::Networkaccess::RuleDestination
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Specifies the starting IP address of the IP range.
                @begin_address
                ## 
                # Specifies the ending IP address of the IP range.
                @end_address
                ## 
                ## Gets the beginAddress property value. Specifies the starting IP address of the IP range.
                ## @return a string
                ## 
                def begin_address
                    return @begin_address
                end
                ## 
                ## Sets the beginAddress property value. Specifies the starting IP address of the IP range.
                ## @param value Value to set for the beginAddress property.
                ## @return a void
                ## 
                def begin_address=(value)
                    @begin_address = value
                end
                ## 
                ## Instantiates a new ipRange and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.networkaccess.ipRange"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a ip_range
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return IpRange.new
                end
                ## 
                ## Gets the endAddress property value. Specifies the ending IP address of the IP range.
                ## @return a string
                ## 
                def end_address
                    return @end_address
                end
                ## 
                ## Sets the endAddress property value. Specifies the ending IP address of the IP range.
                ## @param value Value to set for the endAddress property.
                ## @return a void
                ## 
                def end_address=(value)
                    @end_address = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "beginAddress" => lambda {|n| @begin_address = n.get_string_value() },
                        "endAddress" => lambda {|n| @end_address = n.get_string_value() },
                    })
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("beginAddress", @begin_address)
                    writer.write_string_value("endAddress", @end_address)
                end
            end
        end
    end
end
