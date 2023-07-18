require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SequentialActivationRenewalsAlertConfiguration < MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The minimum number of activations within the timeIntervalBetweenActivations period to trigger an alert.
            @sequential_activation_counter_threshold
            ## 
            # Time interval between activations to trigger an alert.
            @time_interval_between_activations
            ## 
            ## Instantiates a new sequentialActivationRenewalsAlertConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sequentialActivationRenewalsAlertConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sequential_activation_renewals_alert_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SequentialActivationRenewalsAlertConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "sequentialActivationCounterThreshold" => lambda {|n| @sequential_activation_counter_threshold = n.get_number_value() },
                    "timeIntervalBetweenActivations" => lambda {|n| @time_interval_between_activations = n.get_duration_value() },
                })
            end
            ## 
            ## Gets the sequentialActivationCounterThreshold property value. The minimum number of activations within the timeIntervalBetweenActivations period to trigger an alert.
            ## @return a integer
            ## 
            def sequential_activation_counter_threshold
                return @sequential_activation_counter_threshold
            end
            ## 
            ## Sets the sequentialActivationCounterThreshold property value. The minimum number of activations within the timeIntervalBetweenActivations period to trigger an alert.
            ## @param value Value to set for the sequential_activation_counter_threshold property.
            ## @return a void
            ## 
            def sequential_activation_counter_threshold=(value)
                @sequential_activation_counter_threshold = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("sequentialActivationCounterThreshold", @sequential_activation_counter_threshold)
                writer.write_duration_value("timeIntervalBetweenActivations", @time_interval_between_activations)
            end
            ## 
            ## Gets the timeIntervalBetweenActivations property value. Time interval between activations to trigger an alert.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def time_interval_between_activations
                return @time_interval_between_activations
            end
            ## 
            ## Sets the timeIntervalBetweenActivations property value. Time interval between activations to trigger an alert.
            ## @param value Value to set for the time_interval_between_activations property.
            ## @return a void
            ## 
            def time_interval_between_activations=(value)
                @time_interval_between_activations = value
            end
        end
    end
end
