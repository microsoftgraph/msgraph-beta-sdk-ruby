require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ConfigurationManagerActionResult < MicrosoftGraphBeta::Models::DeviceActionResult
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Delivery state of Configuration Manager device action
        @action_delivery_status
        ## 
        # Error code of Configuration Manager action from client
        @error_code
        ## 
        ## Gets the actionDeliveryStatus property value. Delivery state of Configuration Manager device action
        ## @return a configuration_manager_action_delivery_status
        ## 
        def action_delivery_status
            return @action_delivery_status
        end
        ## 
        ## Sets the actionDeliveryStatus property value. Delivery state of Configuration Manager device action
        ## @param value Value to set for the action_delivery_status property.
        ## @return a void
        ## 
        def action_delivery_status=(value)
            @action_delivery_status = value
        end
        ## 
        ## Instantiates a new ConfigurationManagerActionResult and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a configuration_manager_action_result
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ConfigurationManagerActionResult.new
        end
        ## 
        ## Gets the errorCode property value. Error code of Configuration Manager action from client
        ## @return a integer
        ## 
        def error_code
            return @error_code
        end
        ## 
        ## Sets the errorCode property value. Error code of Configuration Manager action from client
        ## @param value Value to set for the error_code property.
        ## @return a void
        ## 
        def error_code=(value)
            @error_code = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "actionDeliveryStatus" => lambda {|n| @action_delivery_status = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationManagerActionDeliveryStatus) },
                "errorCode" => lambda {|n| @error_code = n.get_number_value() },
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
            writer.write_enum_value("actionDeliveryStatus", @action_delivery_status)
            writer.write_number_value("errorCode", @error_code)
        end
    end
end
