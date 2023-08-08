require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class ContentApprovalRule < MicrosoftGraphBeta::Models::WindowsUpdates::ComplianceChangeRule
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # A filter to determine which content matches the rule on an ongoing basis.
                @content_filter
                ## 
                # The time before the deployment starts represented in ISO 8601 format for durations.
                @duration_before_deployment_start
                ## 
                ## Instantiates a new contentApprovalRule and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.windowsUpdates.contentApprovalRule"
                end
                ## 
                ## Gets the contentFilter property value. A filter to determine which content matches the rule on an ongoing basis.
                ## @return a content_filter
                ## 
                def content_filter
                    return @content_filter
                end
                ## 
                ## Sets the contentFilter property value. A filter to determine which content matches the rule on an ongoing basis.
                ## @param value Value to set for the contentFilter property.
                ## @return a void
                ## 
                def content_filter=(value)
                    @content_filter = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a content_approval_rule
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ContentApprovalRule.new
                end
                ## 
                ## Gets the durationBeforeDeploymentStart property value. The time before the deployment starts represented in ISO 8601 format for durations.
                ## @return a microsoft_kiota_abstractions::_i_s_o_duration
                ## 
                def duration_before_deployment_start
                    return @duration_before_deployment_start
                end
                ## 
                ## Sets the durationBeforeDeploymentStart property value. The time before the deployment starts represented in ISO 8601 format for durations.
                ## @param value Value to set for the durationBeforeDeploymentStart property.
                ## @return a void
                ## 
                def duration_before_deployment_start=(value)
                    @duration_before_deployment_start = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "contentFilter" => lambda {|n| @content_filter = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::ContentFilter.create_from_discriminator_value(pn) }) },
                        "durationBeforeDeploymentStart" => lambda {|n| @duration_before_deployment_start = n.get_duration_value() },
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
                    writer.write_object_value("contentFilter", @content_filter)
                    writer.write_duration_value("durationBeforeDeploymentStart", @duration_before_deployment_start)
                end
            end
        end
    end
end
