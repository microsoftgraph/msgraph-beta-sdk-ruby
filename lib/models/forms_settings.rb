require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class FormsSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The isBingImageSearchEnabled property
            @is_bing_image_search_enabled
            ## 
            # The isExternalSendFormEnabled property
            @is_external_send_form_enabled
            ## 
            # The isExternalShareCollaborationEnabled property
            @is_external_share_collaboration_enabled
            ## 
            # The isExternalShareResultEnabled property
            @is_external_share_result_enabled
            ## 
            # The isExternalShareTemplateEnabled property
            @is_external_share_template_enabled
            ## 
            # The isInOrgFormsPhishingScanEnabled property
            @is_in_org_forms_phishing_scan_enabled
            ## 
            # The isRecordIdentityByDefaultEnabled property
            @is_record_identity_by_default_enabled
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
            ## Instantiates a new FormsSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a forms_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FormsSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isBingImageSearchEnabled" => lambda {|n| @is_bing_image_search_enabled = n.get_boolean_value() },
                    "isExternalSendFormEnabled" => lambda {|n| @is_external_send_form_enabled = n.get_boolean_value() },
                    "isExternalShareCollaborationEnabled" => lambda {|n| @is_external_share_collaboration_enabled = n.get_boolean_value() },
                    "isExternalShareResultEnabled" => lambda {|n| @is_external_share_result_enabled = n.get_boolean_value() },
                    "isExternalShareTemplateEnabled" => lambda {|n| @is_external_share_template_enabled = n.get_boolean_value() },
                    "isInOrgFormsPhishingScanEnabled" => lambda {|n| @is_in_org_forms_phishing_scan_enabled = n.get_boolean_value() },
                    "isRecordIdentityByDefaultEnabled" => lambda {|n| @is_record_identity_by_default_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isBingImageSearchEnabled property value. The isBingImageSearchEnabled property
            ## @return a boolean
            ## 
            def is_bing_image_search_enabled
                return @is_bing_image_search_enabled
            end
            ## 
            ## Sets the isBingImageSearchEnabled property value. The isBingImageSearchEnabled property
            ## @param value Value to set for the is_bing_image_search_enabled property.
            ## @return a void
            ## 
            def is_bing_image_search_enabled=(value)
                @is_bing_image_search_enabled = value
            end
            ## 
            ## Gets the isExternalSendFormEnabled property value. The isExternalSendFormEnabled property
            ## @return a boolean
            ## 
            def is_external_send_form_enabled
                return @is_external_send_form_enabled
            end
            ## 
            ## Sets the isExternalSendFormEnabled property value. The isExternalSendFormEnabled property
            ## @param value Value to set for the is_external_send_form_enabled property.
            ## @return a void
            ## 
            def is_external_send_form_enabled=(value)
                @is_external_send_form_enabled = value
            end
            ## 
            ## Gets the isExternalShareCollaborationEnabled property value. The isExternalShareCollaborationEnabled property
            ## @return a boolean
            ## 
            def is_external_share_collaboration_enabled
                return @is_external_share_collaboration_enabled
            end
            ## 
            ## Sets the isExternalShareCollaborationEnabled property value. The isExternalShareCollaborationEnabled property
            ## @param value Value to set for the is_external_share_collaboration_enabled property.
            ## @return a void
            ## 
            def is_external_share_collaboration_enabled=(value)
                @is_external_share_collaboration_enabled = value
            end
            ## 
            ## Gets the isExternalShareResultEnabled property value. The isExternalShareResultEnabled property
            ## @return a boolean
            ## 
            def is_external_share_result_enabled
                return @is_external_share_result_enabled
            end
            ## 
            ## Sets the isExternalShareResultEnabled property value. The isExternalShareResultEnabled property
            ## @param value Value to set for the is_external_share_result_enabled property.
            ## @return a void
            ## 
            def is_external_share_result_enabled=(value)
                @is_external_share_result_enabled = value
            end
            ## 
            ## Gets the isExternalShareTemplateEnabled property value. The isExternalShareTemplateEnabled property
            ## @return a boolean
            ## 
            def is_external_share_template_enabled
                return @is_external_share_template_enabled
            end
            ## 
            ## Sets the isExternalShareTemplateEnabled property value. The isExternalShareTemplateEnabled property
            ## @param value Value to set for the is_external_share_template_enabled property.
            ## @return a void
            ## 
            def is_external_share_template_enabled=(value)
                @is_external_share_template_enabled = value
            end
            ## 
            ## Gets the isInOrgFormsPhishingScanEnabled property value. The isInOrgFormsPhishingScanEnabled property
            ## @return a boolean
            ## 
            def is_in_org_forms_phishing_scan_enabled
                return @is_in_org_forms_phishing_scan_enabled
            end
            ## 
            ## Sets the isInOrgFormsPhishingScanEnabled property value. The isInOrgFormsPhishingScanEnabled property
            ## @param value Value to set for the is_in_org_forms_phishing_scan_enabled property.
            ## @return a void
            ## 
            def is_in_org_forms_phishing_scan_enabled=(value)
                @is_in_org_forms_phishing_scan_enabled = value
            end
            ## 
            ## Gets the isRecordIdentityByDefaultEnabled property value. The isRecordIdentityByDefaultEnabled property
            ## @return a boolean
            ## 
            def is_record_identity_by_default_enabled
                return @is_record_identity_by_default_enabled
            end
            ## 
            ## Sets the isRecordIdentityByDefaultEnabled property value. The isRecordIdentityByDefaultEnabled property
            ## @param value Value to set for the is_record_identity_by_default_enabled property.
            ## @return a void
            ## 
            def is_record_identity_by_default_enabled=(value)
                @is_record_identity_by_default_enabled = value
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
                writer.write_boolean_value("isBingImageSearchEnabled", @is_bing_image_search_enabled)
                writer.write_boolean_value("isExternalSendFormEnabled", @is_external_send_form_enabled)
                writer.write_boolean_value("isExternalShareCollaborationEnabled", @is_external_share_collaboration_enabled)
                writer.write_boolean_value("isExternalShareResultEnabled", @is_external_share_result_enabled)
                writer.write_boolean_value("isExternalShareTemplateEnabled", @is_external_share_template_enabled)
                writer.write_boolean_value("isInOrgFormsPhishingScanEnabled", @is_in_org_forms_phishing_scan_enabled)
                writer.write_boolean_value("isRecordIdentityByDefaultEnabled", @is_record_identity_by_default_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
