require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../android_managed_store_account_enterprise_settings'
require_relative './approve_apps'

module MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::ApproveApps
    class ApproveAppsPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The approveAllPermissions property
        @approve_all_permissions
        ## 
        # The packageIds property
        @package_ids
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
        ## Gets the approveAllPermissions property value. The approveAllPermissions property
        ## @return a boolean
        ## 
        def approve_all_permissions
            return @approve_all_permissions
        end
        ## 
        ## Sets the approveAllPermissions property value. The approveAllPermissions property
        ## @param value Value to set for the approveAllPermissions property.
        ## @return a void
        ## 
        def approve_all_permissions=(value)
            @approve_all_permissions = value
        end
        ## 
        ## Instantiates a new approveAppsPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a approve_apps_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ApproveAppsPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "approveAllPermissions" => lambda {|n| @approve_all_permissions = n.get_boolean_value() },
                "packageIds" => lambda {|n| @package_ids = n.get_collection_of_primitive_values(String) },
            }
        end
        ## 
        ## Gets the packageIds property value. The packageIds property
        ## @return a string
        ## 
        def package_ids
            return @package_ids
        end
        ## 
        ## Sets the packageIds property value. The packageIds property
        ## @param value Value to set for the packageIds property.
        ## @return a void
        ## 
        def package_ids=(value)
            @package_ids = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("approveAllPermissions", @approve_all_permissions)
            writer.write_collection_of_primitive_values("packageIds", @package_ids)
            writer.write_additional_data(@additional_data)
        end
    end
end
