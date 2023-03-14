require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Base type for assignment targets.
        class DeviceAndAppManagementAssignmentTarget
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The Id of the filter for the target assignment.
            @device_and_app_management_assignment_filter_id
            ## 
            # Represents type of the assignment filter.
            @device_and_app_management_assignment_filter_type
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new deviceAndAppManagementAssignmentTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_and_app_management_assignment_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.allDevicesAssignmentTarget"
                            return AllDevicesAssignmentTarget.new
                        when "#microsoft.graph.allLicensedUsersAssignmentTarget"
                            return AllLicensedUsersAssignmentTarget.new
                        when "#microsoft.graph.configurationManagerCollectionAssignmentTarget"
                            return ConfigurationManagerCollectionAssignmentTarget.new
                        when "#microsoft.graph.exclusionGroupAssignmentTarget"
                            return ExclusionGroupAssignmentTarget.new
                        when "#microsoft.graph.groupAssignmentTarget"
                            return GroupAssignmentTarget.new
                    end
                end
                return DeviceAndAppManagementAssignmentTarget.new
            end
            ## 
            ## Gets the deviceAndAppManagementAssignmentFilterId property value. The Id of the filter for the target assignment.
            ## @return a string
            ## 
            def device_and_app_management_assignment_filter_id
                return @device_and_app_management_assignment_filter_id
            end
            ## 
            ## Sets the deviceAndAppManagementAssignmentFilterId property value. The Id of the filter for the target assignment.
            ## @param value Value to set for the device_and_app_management_assignment_filter_id property.
            ## @return a void
            ## 
            def device_and_app_management_assignment_filter_id=(value)
                @device_and_app_management_assignment_filter_id = value
            end
            ## 
            ## Gets the deviceAndAppManagementAssignmentFilterType property value. Represents type of the assignment filter.
            ## @return a device_and_app_management_assignment_filter_type
            ## 
            def device_and_app_management_assignment_filter_type
                return @device_and_app_management_assignment_filter_type
            end
            ## 
            ## Sets the deviceAndAppManagementAssignmentFilterType property value. Represents type of the assignment filter.
            ## @param value Value to set for the device_and_app_management_assignment_filter_type property.
            ## @return a void
            ## 
            def device_and_app_management_assignment_filter_type=(value)
                @device_and_app_management_assignment_filter_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceAndAppManagementAssignmentFilterId" => lambda {|n| @device_and_app_management_assignment_filter_id = n.get_string_value() },
                    "deviceAndAppManagementAssignmentFilterType" => lambda {|n| @device_and_app_management_assignment_filter_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentFilterType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_string_value("deviceAndAppManagementAssignmentFilterId", @device_and_app_management_assignment_filter_id)
                writer.write_enum_value("deviceAndAppManagementAssignmentFilterType", @device_and_app_management_assignment_filter_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
