require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class MonitoringRule
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # The action triggered when the threshold for the given signal is met. Possible values are: alertError, pauseDeployment, unknownFutureValue.
                @action
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The signal to monitor. Possible values are: rollback, unknownFutureValue.
                @signal
                ## 
                # The threshold for a signal at which to trigger action. An integer from 1 to 100 (inclusive).
                @threshold
                ## 
                ## Gets the action property value. The action triggered when the threshold for the given signal is met. Possible values are: alertError, pauseDeployment, unknownFutureValue.
                ## @return a monitoring_action
                ## 
                def action
                    return @action
                end
                ## 
                ## Sets the action property value. The action triggered when the threshold for the given signal is met. Possible values are: alertError, pauseDeployment, unknownFutureValue.
                ## @param value Value to set for the action property.
                ## @return a void
                ## 
                def action=(value)
                    @action = value
                end
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the additionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new monitoringRule and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a monitoring_rule
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MonitoringRule.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::MonitoringAction) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "signal" => lambda {|n| @signal = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::MonitoringSignal) },
                        "threshold" => lambda {|n| @threshold = n.get_number_value() },
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
                ## @param value Value to set for the @odata.type property.
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
                    writer.write_enum_value("action", @action)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_enum_value("signal", @signal)
                    writer.write_number_value("threshold", @threshold)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the signal property value. The signal to monitor. Possible values are: rollback, unknownFutureValue.
                ## @return a monitoring_signal
                ## 
                def signal
                    return @signal
                end
                ## 
                ## Sets the signal property value. The signal to monitor. Possible values are: rollback, unknownFutureValue.
                ## @param value Value to set for the signal property.
                ## @return a void
                ## 
                def signal=(value)
                    @signal = value
                end
                ## 
                ## Gets the threshold property value. The threshold for a signal at which to trigger action. An integer from 1 to 100 (inclusive).
                ## @return a integer
                ## 
                def threshold
                    return @threshold
                end
                ## 
                ## Sets the threshold property value. The threshold for a signal at which to trigger action. An integer from 1 to 100 (inclusive).
                ## @param value Value to set for the threshold property.
                ## @return a void
                ## 
                def threshold=(value)
                    @threshold = value
                end
            end
        end
    end
end
