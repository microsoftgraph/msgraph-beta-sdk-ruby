require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Describes deployment security group to assign a deployment to. The backend will expand the security Group ID to extract device serial numbers prior sending a create deployment request to Zebra.
        class AndroidFotaDeploymentAssignment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The Azure Active Directory (Azure AD) we are deploying firmware updates to (e.g.: d93c8f48-bd42-4514-ba40-bc6b84780930). NOTE: Use this property moving forward because the existing property, target, is deprecated.
            @assignment_target
            ## 
            # The display name of the Azure AD security group used for the assignment.
            @display_name
            ## 
            # A unique identifier assigned to each Android FOTA Assignment entity
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The AAD Group we are deploying firmware updates to
            @target
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
            ## Gets the assignmentTarget property value. The Azure Active Directory (Azure AD) we are deploying firmware updates to (e.g.: d93c8f48-bd42-4514-ba40-bc6b84780930). NOTE: Use this property moving forward because the existing property, target, is deprecated.
            ## @return a device_and_app_management_assignment_target
            ## 
            def assignment_target
                return @assignment_target
            end
            ## 
            ## Sets the assignmentTarget property value. The Azure Active Directory (Azure AD) we are deploying firmware updates to (e.g.: d93c8f48-bd42-4514-ba40-bc6b84780930). NOTE: Use this property moving forward because the existing property, target, is deprecated.
            ## @param value Value to set for the assignmentTarget property.
            ## @return a void
            ## 
            def assignment_target=(value)
                @assignment_target = value
            end
            ## 
            ## Instantiates a new androidFotaDeploymentAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_fota_deployment_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidFotaDeploymentAssignment.new
            end
            ## 
            ## Gets the displayName property value. The display name of the Azure AD security group used for the assignment.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the Azure AD security group used for the assignment.
            ## @param value Value to set for the displayName property.
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
                    "assignmentTarget" => lambda {|n| @assignment_target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidFotaDeploymentAssignmentTarget.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the id property value. A unique identifier assigned to each Android FOTA Assignment entity
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. A unique identifier assigned to each Android FOTA Assignment entity
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
                writer.write_object_value("assignmentTarget", @assignment_target)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("target", @target)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the target property value. The AAD Group we are deploying firmware updates to
            ## @return a android_fota_deployment_assignment_target
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. The AAD Group we are deploying firmware updates to
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
