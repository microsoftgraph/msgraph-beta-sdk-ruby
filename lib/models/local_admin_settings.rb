require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class LocalAdminSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether global administrators are local administrators on all Microsoft Entra-joined devices. This setting only applies to future registrations. Default is true.
            @enable_global_admins
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Determines the users and groups that become local administrators on Microsoft Entra joined devices that they register.
            @registering_users
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
            ## Instantiates a new LocalAdminSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a local_admin_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LocalAdminSettings.new
            end
            ## 
            ## Gets the enableGlobalAdmins property value. Indicates whether global administrators are local administrators on all Microsoft Entra-joined devices. This setting only applies to future registrations. Default is true.
            ## @return a boolean
            ## 
            def enable_global_admins
                return @enable_global_admins
            end
            ## 
            ## Sets the enableGlobalAdmins property value. Indicates whether global administrators are local administrators on all Microsoft Entra-joined devices. This setting only applies to future registrations. Default is true.
            ## @param value Value to set for the enableGlobalAdmins property.
            ## @return a void
            ## 
            def enable_global_admins=(value)
                @enable_global_admins = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "enableGlobalAdmins" => lambda {|n| @enable_global_admins = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "registeringUsers" => lambda {|n| @registering_users = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceRegistrationMembership.create_from_discriminator_value(pn) }) },
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
            ## Gets the registeringUsers property value. Determines the users and groups that become local administrators on Microsoft Entra joined devices that they register.
            ## @return a device_registration_membership
            ## 
            def registering_users
                return @registering_users
            end
            ## 
            ## Sets the registeringUsers property value. Determines the users and groups that become local administrators on Microsoft Entra joined devices that they register.
            ## @param value Value to set for the registeringUsers property.
            ## @return a void
            ## 
            def registering_users=(value)
                @registering_users = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("enableGlobalAdmins", @enable_global_admins)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("registeringUsers", @registering_users)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
