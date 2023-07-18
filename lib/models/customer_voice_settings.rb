require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomerVoiceSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Controls whether phishing protection is run on forms created by users, blocking the creation of forms if common phishing questions are detected.
            @is_in_org_forms_phishing_scan_enabled
            ## 
            # Controls whether the names of users who fill out forms are recorded.
            @is_record_identity_by_default_enabled
            ## 
            # Controls whether only users inside your organization can submit a response.
            @is_restricted_survey_access_enabled
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
            ## Instantiates a new customerVoiceSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a customer_voice_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomerVoiceSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isInOrgFormsPhishingScanEnabled" => lambda {|n| @is_in_org_forms_phishing_scan_enabled = n.get_boolean_value() },
                    "isRecordIdentityByDefaultEnabled" => lambda {|n| @is_record_identity_by_default_enabled = n.get_boolean_value() },
                    "isRestrictedSurveyAccessEnabled" => lambda {|n| @is_restricted_survey_access_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isInOrgFormsPhishingScanEnabled property value. Controls whether phishing protection is run on forms created by users, blocking the creation of forms if common phishing questions are detected.
            ## @return a boolean
            ## 
            def is_in_org_forms_phishing_scan_enabled
                return @is_in_org_forms_phishing_scan_enabled
            end
            ## 
            ## Sets the isInOrgFormsPhishingScanEnabled property value. Controls whether phishing protection is run on forms created by users, blocking the creation of forms if common phishing questions are detected.
            ## @param value Value to set for the is_in_org_forms_phishing_scan_enabled property.
            ## @return a void
            ## 
            def is_in_org_forms_phishing_scan_enabled=(value)
                @is_in_org_forms_phishing_scan_enabled = value
            end
            ## 
            ## Gets the isRecordIdentityByDefaultEnabled property value. Controls whether the names of users who fill out forms are recorded.
            ## @return a boolean
            ## 
            def is_record_identity_by_default_enabled
                return @is_record_identity_by_default_enabled
            end
            ## 
            ## Sets the isRecordIdentityByDefaultEnabled property value. Controls whether the names of users who fill out forms are recorded.
            ## @param value Value to set for the is_record_identity_by_default_enabled property.
            ## @return a void
            ## 
            def is_record_identity_by_default_enabled=(value)
                @is_record_identity_by_default_enabled = value
            end
            ## 
            ## Gets the isRestrictedSurveyAccessEnabled property value. Controls whether only users inside your organization can submit a response.
            ## @return a boolean
            ## 
            def is_restricted_survey_access_enabled
                return @is_restricted_survey_access_enabled
            end
            ## 
            ## Sets the isRestrictedSurveyAccessEnabled property value. Controls whether only users inside your organization can submit a response.
            ## @param value Value to set for the is_restricted_survey_access_enabled property.
            ## @return a void
            ## 
            def is_restricted_survey_access_enabled=(value)
                @is_restricted_survey_access_enabled = value
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
                writer.write_boolean_value("isInOrgFormsPhishingScanEnabled", @is_in_org_forms_phishing_scan_enabled)
                writer.write_boolean_value("isRecordIdentityByDefaultEnabled", @is_record_identity_by_default_enabled)
                writer.write_boolean_value("isRestrictedSurveyAccessEnabled", @is_restricted_survey_access_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
