require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MobileAppTroubleshootingAppPolicyCreationHistory < MicrosoftGraphBeta::Models::MobileAppTroubleshootingHistoryItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Error code for the failure, empty if no failure.
            @error_code
            ## 
            # Indicates the type of execution status of the device management script.
            @run_state
            ## 
            ## Instantiates a new MobileAppTroubleshootingAppPolicyCreationHistory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_troubleshooting_app_policy_creation_history
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppTroubleshootingAppPolicyCreationHistory.new
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
            ## @param value Value to set for the run_state property.
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
                writer.write_string_value("errorCode", @error_code)
                writer.write_enum_value("runState", @run_state)
            end
        end
    end
end
