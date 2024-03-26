require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RoleManagement
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The cloudPC property
            @cloud_p_c
            ## 
            # The RbacApplication for Device Management
            @device_management
            ## 
            # The directory property
            @directory
            ## 
            # The enterpriseApps property
            @enterprise_apps
            ## 
            # The RbacApplication for Entitlement Management
            @entitlement_management
            ## 
            # The exchange property
            @exchange
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the cloudPC property value. The cloudPC property
            ## @return a rbac_application_multiple
            ## 
            def cloud_p_c
                return @cloud_p_c
            end
            ## 
            ## Sets the cloudPC property value. The cloudPC property
            ## @param value Value to set for the cloudPC property.
            ## @return a void
            ## 
            def cloud_p_c=(value)
                @cloud_p_c = value
            end
            ## 
            ## Instantiates a new RoleManagement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a role_management
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RoleManagement.new
            end
            ## 
            ## Gets the deviceManagement property value. The RbacApplication for Device Management
            ## @return a rbac_application_multiple
            ## 
            def device_management
                return @device_management
            end
            ## 
            ## Sets the deviceManagement property value. The RbacApplication for Device Management
            ## @param value Value to set for the deviceManagement property.
            ## @return a void
            ## 
            def device_management=(value)
                @device_management = value
            end
            ## 
            ## Gets the directory property value. The directory property
            ## @return a rbac_application
            ## 
            def directory
                return @directory
            end
            ## 
            ## Sets the directory property value. The directory property
            ## @param value Value to set for the directory property.
            ## @return a void
            ## 
            def directory=(value)
                @directory = value
            end
            ## 
            ## Gets the enterpriseApps property value. The enterpriseApps property
            ## @return a rbac_application
            ## 
            def enterprise_apps
                return @enterprise_apps
            end
            ## 
            ## Sets the enterpriseApps property value. The enterpriseApps property
            ## @param value Value to set for the enterpriseApps property.
            ## @return a void
            ## 
            def enterprise_apps=(value)
                @enterprise_apps = value
            end
            ## 
            ## Gets the entitlementManagement property value. The RbacApplication for Entitlement Management
            ## @return a rbac_application
            ## 
            def entitlement_management
                return @entitlement_management
            end
            ## 
            ## Sets the entitlementManagement property value. The RbacApplication for Entitlement Management
            ## @param value Value to set for the entitlementManagement property.
            ## @return a void
            ## 
            def entitlement_management=(value)
                @entitlement_management = value
            end
            ## 
            ## Gets the exchange property value. The exchange property
            ## @return a unified_rbac_application
            ## 
            def exchange
                return @exchange
            end
            ## 
            ## Sets the exchange property value. The exchange property
            ## @param value Value to set for the exchange property.
            ## @return a void
            ## 
            def exchange=(value)
                @exchange = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "cloudPC" => lambda {|n| @cloud_p_c = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RbacApplicationMultiple.create_from_discriminator_value(pn) }) },
                    "deviceManagement" => lambda {|n| @device_management = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RbacApplicationMultiple.create_from_discriminator_value(pn) }) },
                    "directory" => lambda {|n| @directory = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RbacApplication.create_from_discriminator_value(pn) }) },
                    "enterpriseApps" => lambda {|n| @enterprise_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RbacApplication.create_from_discriminator_value(pn) }) },
                    "entitlementManagement" => lambda {|n| @entitlement_management = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RbacApplication.create_from_discriminator_value(pn) }) },
                    "exchange" => lambda {|n| @exchange = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRbacApplication.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("cloudPC", @cloud_p_c)
                writer.write_object_value("deviceManagement", @device_management)
                writer.write_object_value("directory", @directory)
                writer.write_collection_of_object_values("enterpriseApps", @enterprise_apps)
                writer.write_object_value("entitlementManagement", @entitlement_management)
                writer.write_object_value("exchange", @exchange)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
