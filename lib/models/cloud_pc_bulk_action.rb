require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcBulkAction < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actionSummary property
            @action_summary
            ## 
            # The cloudPcIds property
            @cloud_pc_ids
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The displayName property
            @display_name
            ## 
            ## Gets the actionSummary property value. The actionSummary property
            ## @return a cloud_pc_bulk_action_summary
            ## 
            def action_summary
                return @action_summary
            end
            ## 
            ## Sets the actionSummary property value. The actionSummary property
            ## @param value Value to set for the action_summary property.
            ## @return a void
            ## 
            def action_summary=(value)
                @action_summary = value
            end
            ## 
            ## Gets the cloudPcIds property value. The cloudPcIds property
            ## @return a string
            ## 
            def cloud_pc_ids
                return @cloud_pc_ids
            end
            ## 
            ## Sets the cloudPcIds property value. The cloudPcIds property
            ## @param value Value to set for the cloud_pc_ids property.
            ## @return a void
            ## 
            def cloud_pc_ids=(value)
                @cloud_pc_ids = value
            end
            ## 
            ## Instantiates a new CloudPcBulkAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_bulk_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.cloudPcBulkPowerOff"
                            return CloudPcBulkPowerOff.new
                        when "#microsoft.graph.cloudPcBulkPowerOn"
                            return CloudPcBulkPowerOn.new
                    end
                end
                return CloudPcBulkAction.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionSummary" => lambda {|n| @action_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcBulkActionSummary.create_from_discriminator_value(pn) }) },
                    "cloudPcIds" => lambda {|n| @cloud_pc_ids = n.get_collection_of_primitive_values(String) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
                writer.write_object_value("actionSummary", @action_summary)
                writer.write_collection_of_primitive_values("cloudPcIds", @cloud_pc_ids)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end
