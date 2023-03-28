require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcSupportedRegion < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name for the supported region. Read-only.
            @display_name
            ## 
            # The regionGroup property
            @region_group
            ## 
            # The status of the supported region. Possible values are: available, restricted, unavailable, unknownFutureValue. Read-only.
            @region_status
            ## 
            # The supportedSolution property
            @supported_solution
            ## 
            ## Instantiates a new CloudPcSupportedRegion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_supported_region
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcSupportedRegion.new
            end
            ## 
            ## Gets the displayName property value. The name for the supported region. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name for the supported region. Read-only.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "regionGroup" => lambda {|n| @region_group = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcRegionGroup) },
                    "regionStatus" => lambda {|n| @region_status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcSupportedRegionStatus) },
                    "supportedSolution" => lambda {|n| @supported_solution = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcManagementService) },
                })
            end
            ## 
            ## Gets the regionGroup property value. The regionGroup property
            ## @return a cloud_pc_region_group
            ## 
            def region_group
                return @region_group
            end
            ## 
            ## Sets the regionGroup property value. The regionGroup property
            ## @param value Value to set for the region_group property.
            ## @return a void
            ## 
            def region_group=(value)
                @region_group = value
            end
            ## 
            ## Gets the regionStatus property value. The status of the supported region. Possible values are: available, restricted, unavailable, unknownFutureValue. Read-only.
            ## @return a cloud_pc_supported_region_status
            ## 
            def region_status
                return @region_status
            end
            ## 
            ## Sets the regionStatus property value. The status of the supported region. Possible values are: available, restricted, unavailable, unknownFutureValue. Read-only.
            ## @param value Value to set for the region_status property.
            ## @return a void
            ## 
            def region_status=(value)
                @region_status = value
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
                writer.write_enum_value("regionGroup", @region_group)
                writer.write_enum_value("regionStatus", @region_status)
                writer.write_enum_value("supportedSolution", @supported_solution)
            end
            ## 
            ## Gets the supportedSolution property value. The supportedSolution property
            ## @return a cloud_pc_management_service
            ## 
            def supported_solution
                return @supported_solution
            end
            ## 
            ## Sets the supportedSolution property value. The supportedSolution property
            ## @param value Value to set for the supported_solution property.
            ## @return a void
            ## 
            def supported_solution=(value)
                @supported_solution = value
            end
        end
    end
end
