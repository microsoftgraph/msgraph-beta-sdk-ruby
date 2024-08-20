require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataOutboundProvisioningFlowSet < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the flowSet was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The display name of the flowSet provided by the caller.
            @display_name
            ## 
            # The collection of provisioning filters applicable to all the flows under the given flowSet.
            @filter
            ## 
            # The date and time when the flowSet was most recently changed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # A flow that provisions relevant records of a given entity type in the Microsoft 365 tenant.
            @provisioning_flows
            ## 
            ## Instantiates a new IndustryDataOutboundProvisioningFlowSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the flowSet was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the flowSet was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_outbound_provisioning_flow_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataOutboundProvisioningFlowSet.new
            end
            ## 
            ## Gets the displayName property value. The display name of the flowSet provided by the caller.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the flowSet provided by the caller.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the filter property value. The collection of provisioning filters applicable to all the flows under the given flowSet.
            ## @return a industry_data_filter
            ## 
            def filter
                return @filter
            end
            ## 
            ## Sets the filter property value. The collection of provisioning filters applicable to all the flows under the given flowSet.
            ## @param value Value to set for the filter property.
            ## @return a void
            ## 
            def filter=(value)
                @filter = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "filter" => lambda {|n| @filter = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataFilter.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "provisioningFlows" => lambda {|n| @provisioning_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataProvisioningFlow.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the flowSet was most recently changed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the flowSet was most recently changed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the provisioningFlows property value. A flow that provisions relevant records of a given entity type in the Microsoft 365 tenant.
            ## @return a industry_data_provisioning_flow
            ## 
            def provisioning_flows
                return @provisioning_flows
            end
            ## 
            ## Sets the provisioningFlows property value. A flow that provisions relevant records of a given entity type in the Microsoft 365 tenant.
            ## @param value Value to set for the provisioningFlows property.
            ## @return a void
            ## 
            def provisioning_flows=(value)
                @provisioning_flows = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("filter", @filter)
                writer.write_collection_of_object_values("provisioningFlows", @provisioning_flows)
            end
        end
    end
end
