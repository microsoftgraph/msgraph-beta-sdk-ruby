require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EncryptWithUserDefinedRights < MicrosoftGraphBeta::Models::EncryptContent
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The allowAdHocPermissions property
        @allow_ad_hoc_permissions
        ## 
        # The allowMailForwarding property
        @allow_mail_forwarding
        ## 
        # The decryptionRightsManagementTemplateId property
        @decryption_rights_management_template_id
        ## 
        ## Gets the allowAdHocPermissions property value. The allowAdHocPermissions property
        ## @return a boolean
        ## 
        def allow_ad_hoc_permissions
            return @allow_ad_hoc_permissions
        end
        ## 
        ## Sets the allowAdHocPermissions property value. The allowAdHocPermissions property
        ## @param value Value to set for the allow_ad_hoc_permissions property.
        ## @return a void
        ## 
        def allow_ad_hoc_permissions=(value)
            @allow_ad_hoc_permissions = value
        end
        ## 
        ## Gets the allowMailForwarding property value. The allowMailForwarding property
        ## @return a boolean
        ## 
        def allow_mail_forwarding
            return @allow_mail_forwarding
        end
        ## 
        ## Sets the allowMailForwarding property value. The allowMailForwarding property
        ## @param value Value to set for the allow_mail_forwarding property.
        ## @return a void
        ## 
        def allow_mail_forwarding=(value)
            @allow_mail_forwarding = value
        end
        ## 
        ## Instantiates a new EncryptWithUserDefinedRights and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.encryptWithUserDefinedRights"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a encrypt_with_user_defined_rights
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EncryptWithUserDefinedRights.new
        end
        ## 
        ## Gets the decryptionRightsManagementTemplateId property value. The decryptionRightsManagementTemplateId property
        ## @return a string
        ## 
        def decryption_rights_management_template_id
            return @decryption_rights_management_template_id
        end
        ## 
        ## Sets the decryptionRightsManagementTemplateId property value. The decryptionRightsManagementTemplateId property
        ## @param value Value to set for the decryption_rights_management_template_id property.
        ## @return a void
        ## 
        def decryption_rights_management_template_id=(value)
            @decryption_rights_management_template_id = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowAdHocPermissions" => lambda {|n| @allow_ad_hoc_permissions = n.get_boolean_value() },
                "allowMailForwarding" => lambda {|n| @allow_mail_forwarding = n.get_boolean_value() },
                "decryptionRightsManagementTemplateId" => lambda {|n| @decryption_rights_management_template_id = n.get_string_value() },
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
            writer.write_boolean_value("allowAdHocPermissions", @allow_ad_hoc_permissions)
            writer.write_boolean_value("allowMailForwarding", @allow_mail_forwarding)
            writer.write_string_value("decryptionRightsManagementTemplateId", @decryption_rights_management_template_id)
        end
    end
end
