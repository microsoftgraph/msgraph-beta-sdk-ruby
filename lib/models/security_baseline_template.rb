require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The security baseline template of the account
        class SecurityBaselineTemplate < MicrosoftGraphBeta::Models::DeviceManagementTemplate
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The security baseline per category device state summary
            @category_device_state_summaries
            ## 
            # The security baseline device state summary
            @device_state_summary
            ## 
            # The security baseline device states
            @device_states
            ## 
            ## Gets the categoryDeviceStateSummaries property value. The security baseline per category device state summary
            ## @return a security_baseline_category_state_summary
            ## 
            def category_device_state_summaries
                return @category_device_state_summaries
            end
            ## 
            ## Sets the categoryDeviceStateSummaries property value. The security baseline per category device state summary
            ## @param value Value to set for the categoryDeviceStateSummaries property.
            ## @return a void
            ## 
            def category_device_state_summaries=(value)
                @category_device_state_summaries = value
            end
            ## 
            ## Instantiates a new SecurityBaselineTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.securityBaselineTemplate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_baseline_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityBaselineTemplate.new
            end
            ## 
            ## Gets the deviceStateSummary property value. The security baseline device state summary
            ## @return a security_baseline_state_summary
            ## 
            def device_state_summary
                return @device_state_summary
            end
            ## 
            ## Sets the deviceStateSummary property value. The security baseline device state summary
            ## @param value Value to set for the deviceStateSummary property.
            ## @return a void
            ## 
            def device_state_summary=(value)
                @device_state_summary = value
            end
            ## 
            ## Gets the deviceStates property value. The security baseline device states
            ## @return a security_baseline_device_state
            ## 
            def device_states
                return @device_states
            end
            ## 
            ## Sets the deviceStates property value. The security baseline device states
            ## @param value Value to set for the deviceStates property.
            ## @return a void
            ## 
            def device_states=(value)
                @device_states = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "categoryDeviceStateSummaries" => lambda {|n| @category_device_state_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityBaselineCategoryStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceStateSummary" => lambda {|n| @device_state_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityBaselineStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceStates" => lambda {|n| @device_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityBaselineDeviceState.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("categoryDeviceStateSummaries", @category_device_state_summaries)
                writer.write_object_value("deviceStateSummary", @device_state_summary)
                writer.write_collection_of_object_values("deviceStates", @device_states)
            end
        end
    end
end
