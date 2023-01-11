require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CloudPcOrganizationSettings < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies whether new Cloud PCs will be automatically enrolled in Microsoft Endpoint Manager(MEM). The default value is false.
        @enable_m_e_m_auto_enroll
        ## 
        # The enableSingleSignOn property
        @enable_single_sign_on
        ## 
        # The version of the operating system (OS) to provision on Cloud PCs. The possible values are: windows10, windows11, unknownFutureValue.
        @os_version
        ## 
        # The account type of the user on provisioned Cloud PCs. The possible values are: standardUser, administrator, unknownFutureValue.
        @user_account_type
        ## 
        # Represents the Cloud PC organization settings for a tenant. A tenant has only one cloudPcOrganizationSettings object. The default language value en-US.
        @windows_settings
        ## 
        ## Instantiates a new CloudPcOrganizationSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_pc_organization_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudPcOrganizationSettings.new
        end
        ## 
        ## Gets the enableMEMAutoEnroll property value. Specifies whether new Cloud PCs will be automatically enrolled in Microsoft Endpoint Manager(MEM). The default value is false.
        ## @return a boolean
        ## 
        def enable_m_e_m_auto_enroll
            return @enable_m_e_m_auto_enroll
        end
        ## 
        ## Sets the enableMEMAutoEnroll property value. Specifies whether new Cloud PCs will be automatically enrolled in Microsoft Endpoint Manager(MEM). The default value is false.
        ## @param value Value to set for the enableMEMAutoEnroll property.
        ## @return a void
        ## 
        def enable_m_e_m_auto_enroll=(value)
            @enable_m_e_m_auto_enroll = value
        end
        ## 
        ## Gets the enableSingleSignOn property value. The enableSingleSignOn property
        ## @return a boolean
        ## 
        def enable_single_sign_on
            return @enable_single_sign_on
        end
        ## 
        ## Sets the enableSingleSignOn property value. The enableSingleSignOn property
        ## @param value Value to set for the enableSingleSignOn property.
        ## @return a void
        ## 
        def enable_single_sign_on=(value)
            @enable_single_sign_on = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "enableMEMAutoEnroll" => lambda {|n| @enable_m_e_m_auto_enroll = n.get_boolean_value() },
                "enableSingleSignOn" => lambda {|n| @enable_single_sign_on = n.get_boolean_value() },
                "osVersion" => lambda {|n| @os_version = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcOperatingSystem) },
                "userAccountType" => lambda {|n| @user_account_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcUserAccountType) },
                "windowsSettings" => lambda {|n| @windows_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcWindowsSettings.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the osVersion property value. The version of the operating system (OS) to provision on Cloud PCs. The possible values are: windows10, windows11, unknownFutureValue.
        ## @return a cloud_pc_operating_system
        ## 
        def os_version
            return @os_version
        end
        ## 
        ## Sets the osVersion property value. The version of the operating system (OS) to provision on Cloud PCs. The possible values are: windows10, windows11, unknownFutureValue.
        ## @param value Value to set for the osVersion property.
        ## @return a void
        ## 
        def os_version=(value)
            @os_version = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("enableMEMAutoEnroll", @enable_m_e_m_auto_enroll)
            writer.write_boolean_value("enableSingleSignOn", @enable_single_sign_on)
            writer.write_enum_value("osVersion", @os_version)
            writer.write_enum_value("userAccountType", @user_account_type)
            writer.write_object_value("windowsSettings", @windows_settings)
        end
        ## 
        ## Gets the userAccountType property value. The account type of the user on provisioned Cloud PCs. The possible values are: standardUser, administrator, unknownFutureValue.
        ## @return a cloud_pc_user_account_type
        ## 
        def user_account_type
            return @user_account_type
        end
        ## 
        ## Sets the userAccountType property value. The account type of the user on provisioned Cloud PCs. The possible values are: standardUser, administrator, unknownFutureValue.
        ## @param value Value to set for the userAccountType property.
        ## @return a void
        ## 
        def user_account_type=(value)
            @user_account_type = value
        end
        ## 
        ## Gets the windowsSettings property value. Represents the Cloud PC organization settings for a tenant. A tenant has only one cloudPcOrganizationSettings object. The default language value en-US.
        ## @return a cloud_pc_windows_settings
        ## 
        def windows_settings
            return @windows_settings
        end
        ## 
        ## Sets the windowsSettings property value. Represents the Cloud PC organization settings for a tenant. A tenant has only one cloudPcOrganizationSettings object. The default language value en-US.
        ## @param value Value to set for the windowsSettings property.
        ## @return a void
        ## 
        def windows_settings=(value)
            @windows_settings = value
        end
    end
end
