require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class HybridAgentUpdaterConfiguration
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Indicates if updater configuration will be skipped and the agent will receive an update when the next version of the agent is available.
        @allow_update_configuration_override
        ## 
        # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @defer_update_date_time
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The updateWindow property
        @update_window
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the allowUpdateConfigurationOverride property value. Indicates if updater configuration will be skipped and the agent will receive an update when the next version of the agent is available.
        ## @return a boolean
        ## 
        def allow_update_configuration_override
            return @allow_update_configuration_override
        end
        ## 
        ## Sets the allowUpdateConfigurationOverride property value. Indicates if updater configuration will be skipped and the agent will receive an update when the next version of the agent is available.
        ## @param value Value to set for the allowUpdateConfigurationOverride property.
        ## @return a void
        ## 
        def allow_update_configuration_override=(value)
            @allow_update_configuration_override = value
        end
        ## 
        ## Instantiates a new hybridAgentUpdaterConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a hybrid_agent_updater_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return HybridAgentUpdaterConfiguration.new
        end
        ## 
        ## Gets the deferUpdateDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def defer_update_date_time
            return @defer_update_date_time
        end
        ## 
        ## Sets the deferUpdateDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the deferUpdateDateTime property.
        ## @return a void
        ## 
        def defer_update_date_time=(value)
            @defer_update_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "allowUpdateConfigurationOverride" => lambda {|n| @allow_update_configuration_override = n.get_boolean_value() },
                "deferUpdateDateTime" => lambda {|n| @defer_update_date_time = n.get_date_time_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "updateWindow" => lambda {|n| @update_window = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UpdateWindow.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("allowUpdateConfigurationOverride", @allow_update_configuration_override)
            writer.write_date_time_value("deferUpdateDateTime", @defer_update_date_time)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("updateWindow", @update_window)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the updateWindow property value. The updateWindow property
        ## @return a update_window
        ## 
        def update_window
            return @update_window
        end
        ## 
        ## Sets the updateWindow property value. The updateWindow property
        ## @param value Value to set for the updateWindow property.
        ## @return a void
        ## 
        def update_window=(value)
            @update_window = value
        end
    end
end
