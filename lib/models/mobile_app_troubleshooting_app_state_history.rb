require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # History Item contained in the Mobile App Troubleshooting Event.
        class MobileAppTroubleshootingAppStateHistory < MicrosoftGraphBeta::Models::MobileAppTroubleshootingHistoryItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines the Action Types for an Intune Application.
            @action_type
            ## 
            # Error code for the failure, empty if no failure.
            @error_code
            ## 
            # Indicates the type of execution status of the device management script.
            @run_state
            ## 
            ## Gets the actionType property value. Defines the Action Types for an Intune Application.
            ## @return a mobile_app_action_type
            ## 
            def action_type
                return @action_type
            end
            ## 
            ## Sets the actionType property value. Defines the Action Types for an Intune Application.
            ## @param value Value to set for the actionType property.
            ## @return a void
            ## 
            def action_type=(value)
                @action_type = value
            end
            ## 
            ## Instantiates a new MobileAppTroubleshootingAppStateHistory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_troubleshooting_app_state_history
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppTroubleshootingAppStateHistory.new
            end
            ## 
            ## Gets the errorCode property value. Error code for the failure, empty if no failure.
            ## @return a string
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. Error code for the failure, empty if no failure.
            ## @param value Value to set for the errorCode property.
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
                    "actionType" => lambda {|n| @action_type = n.get_enum_value(MicrosoftGraphBeta::Models::MobileAppActionType) },
                    "errorCode" => lambda {|n| @error_code = n.get_string_value() },
                    "runState" => lambda {|n| @run_state = n.get_enum_value(MicrosoftGraphBeta::Models::RunState) },
                })
            end
            ## 
            ## Gets the runState property value. Indicates the type of execution status of the device management script.
            ## @return a run_state
            ## 
            def run_state
                return @run_state
            end
            ## 
            ## Sets the runState property value. Indicates the type of execution status of the device management script.
            ## @param value Value to set for the runState property.
            ## @return a void
            ## 
            def run_state=(value)
                @run_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("actionType", @action_type)
                writer.write_string_value("errorCode", @error_code)
                writer.write_enum_value("runState", @run_state)
            end
        end
    end
end
