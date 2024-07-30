require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CompliantNetworkNamedLocation < MicrosoftGraphBeta::Models::NamedLocation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The compliantNetworkType property
            @compliant_network_type
            ## 
            # true if this location is explicitly trusted. Optional. Default value is false.
            @is_trusted
            ## 
            ## Gets the compliantNetworkType property value. The compliantNetworkType property
            ## @return a compliant_network_type
            ## 
            def compliant_network_type
                return @compliant_network_type
            end
            ## 
            ## Sets the compliantNetworkType property value. The compliantNetworkType property
            ## @param value Value to set for the compliantNetworkType property.
            ## @return a void
            ## 
            def compliant_network_type=(value)
                @compliant_network_type = value
            end
            ## 
            ## Instantiates a new CompliantNetworkNamedLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a compliant_network_named_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CompliantNetworkNamedLocation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "compliantNetworkType" => lambda {|n| @compliant_network_type = n.get_enum_value(MicrosoftGraphBeta::Models::CompliantNetworkType) },
                    "isTrusted" => lambda {|n| @is_trusted = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isTrusted property value. true if this location is explicitly trusted. Optional. Default value is false.
            ## @return a boolean
            ## 
            def is_trusted
                return @is_trusted
            end
            ## 
            ## Sets the isTrusted property value. true if this location is explicitly trusted. Optional. Default value is false.
            ## @param value Value to set for the isTrusted property.
            ## @return a void
            ## 
            def is_trusted=(value)
                @is_trusted = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("compliantNetworkType", @compliant_network_type)
                writer.write_boolean_value("isTrusted", @is_trusted)
            end
        end
    end
end
