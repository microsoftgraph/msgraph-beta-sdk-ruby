require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UsageRight < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Product id corresponding to the usage right.
            @catalog_id
            ## 
            # Identifier of the service corresponding to the usage right.
            @service_identifier
            ## 
            # The state property
            @state
            ## 
            ## Gets the catalogId property value. Product id corresponding to the usage right.
            ## @return a string
            ## 
            def catalog_id
                return @catalog_id
            end
            ## 
            ## Sets the catalogId property value. Product id corresponding to the usage right.
            ## @param value Value to set for the catalogId property.
            ## @return a void
            ## 
            def catalog_id=(value)
                @catalog_id = value
            end
            ## 
            ## Instantiates a new usageRight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a usage_right
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UsageRight.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "catalogId" => lambda {|n| @catalog_id = n.get_string_value() },
                    "serviceIdentifier" => lambda {|n| @service_identifier = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::UsageRightState) },
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
                writer.write_string_value("catalogId", @catalog_id)
                writer.write_string_value("serviceIdentifier", @service_identifier)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the serviceIdentifier property value. Identifier of the service corresponding to the usage right.
            ## @return a string
            ## 
            def service_identifier
                return @service_identifier
            end
            ## 
            ## Sets the serviceIdentifier property value. Identifier of the service corresponding to the usage right.
            ## @param value Value to set for the serviceIdentifier property.
            ## @return a void
            ## 
            def service_identifier=(value)
                @service_identifier = value
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a usage_right_state
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
        end
    end
end
