require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class WorkloadAction
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # The unique identifier for the workload action. Required. Read-only.
                @action_id
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The category for the workload action. Possible values are: automated, manual, unknownFutureValue. Optional. Read-only.
                @category
                ## 
                # The description for the workload action. Optional. Read-only.
                @description
                ## 
                # The display name for the workload action. Optional. Read-only.
                @display_name
                ## 
                # The licenses property
                @licenses
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The service associated with workload action. Optional. Read-only.
                @service
                ## 
                # The collection of settings associated with the workload action. Optional. Read-only.
                @settings
                ## 
                ## Gets the actionId property value. The unique identifier for the workload action. Required. Read-only.
                ## @return a string
                ## 
                def action_id
                    return @action_id
                end
                ## 
                ## Sets the actionId property value. The unique identifier for the workload action. Required. Read-only.
                ## @param value Value to set for the action_id property.
                ## @return a void
                ## 
                def action_id=(value)
                    @action_id = value
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
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the category property value. The category for the workload action. Possible values are: automated, manual, unknownFutureValue. Optional. Read-only.
                ## @return a workload_action_category
                ## 
                def category
                    return @category
                end
                ## 
                ## Sets the category property value. The category for the workload action. Possible values are: automated, manual, unknownFutureValue. Optional. Read-only.
                ## @param value Value to set for the category property.
                ## @return a void
                ## 
                def category=(value)
                    @category = value
                end
                ## 
                ## Instantiates a new workloadAction and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a workload_action
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WorkloadAction.new
                end
                ## 
                ## Gets the description property value. The description for the workload action. Optional. Read-only.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description for the workload action. Optional. Read-only.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the displayName property value. The display name for the workload action. Optional. Read-only.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name for the workload action. Optional. Read-only.
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
                    return {
                        "actionId" => lambda {|n| @action_id = n.get_string_value() },
                        "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenants::WorkloadActionCategory) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "licenses" => lambda {|n| @licenses = n.get_collection_of_primitive_values(String) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "service" => lambda {|n| @service = n.get_string_value() },
                        "settings" => lambda {|n| @settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::Setting.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the licenses property value. The licenses property
                ## @return a string
                ## 
                def licenses
                    return @licenses
                end
                ## 
                ## Sets the licenses property value. The licenses property
                ## @param value Value to set for the licenses property.
                ## @return a void
                ## 
                def licenses=(value)
                    @licenses = value
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
                ## @param value Value to set for the odata_type property.
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
                    writer.write_string_value("actionId", @action_id)
                    writer.write_enum_value("category", @category)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_collection_of_primitive_values("licenses", @licenses)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("service", @service)
                    writer.write_collection_of_object_values("settings", @settings)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the service property value. The service associated with workload action. Optional. Read-only.
                ## @return a string
                ## 
                def service
                    return @service
                end
                ## 
                ## Sets the service property value. The service associated with workload action. Optional. Read-only.
                ## @param value Value to set for the service property.
                ## @return a void
                ## 
                def service=(value)
                    @service = value
                end
                ## 
                ## Gets the settings property value. The collection of settings associated with the workload action. Optional. Read-only.
                ## @return a setting
                ## 
                def settings
                    return @settings
                end
                ## 
                ## Sets the settings property value. The collection of settings associated with the workload action. Optional. Read-only.
                ## @param value Value to set for the settings property.
                ## @return a void
                ## 
                def settings=(value)
                    @settings = value
                end
            end
        end
    end
end
