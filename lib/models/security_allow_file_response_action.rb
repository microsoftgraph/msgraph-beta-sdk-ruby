require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAllowFileResponseAction < MicrosoftGraphBeta::Models::SecurityResponseAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The deviceGroupNames property
            @device_group_names
            ## 
            # The identifier property
            @identifier
            ## 
            ## Instantiates a new securityAllowFileResponseAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.allowFileResponseAction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_allow_file_response_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAllowFileResponseAction.new
            end
            ## 
            ## Gets the deviceGroupNames property value. The deviceGroupNames property
            ## @return a string
            ## 
            def device_group_names
                return @device_group_names
            end
            ## 
            ## Sets the deviceGroupNames property value. The deviceGroupNames property
            ## @param value Value to set for the deviceGroupNames property.
            ## @return a void
            ## 
            def device_group_names=(value)
                @device_group_names = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceGroupNames" => lambda {|n| @device_group_names = n.get_collection_of_primitive_values(String) },
                    "identifier" => lambda {|n| @identifier = n.get_enum_values(MicrosoftGraphBeta::Models::SecurityFileEntityIdentifier) },
                })
            end
            ## 
            ## Gets the identifier property value. The identifier property
            ## @return a security_file_entity_identifier
            ## 
            def identifier
                return @identifier
            end
            ## 
            ## Sets the identifier property value. The identifier property
            ## @param value Value to set for the identifier property.
            ## @return a void
            ## 
            def identifier=(value)
                @identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("deviceGroupNames", @device_group_names)
                writer.write_enum_value("identifier", @identifier)
            end
        end
    end
end
