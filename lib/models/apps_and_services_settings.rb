require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AppsAndServicesSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Controls whether users can start trial subscriptions for apps and services in your organization.
            @is_app_and_services_trial_enabled
            ## 
            # Controls whether users can access the Microsoft Store.
            @is_office_store_enabled
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new appsAndServicesSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a apps_and_services_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppsAndServicesSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isAppAndServicesTrialEnabled" => lambda {|n| @is_app_and_services_trial_enabled = n.get_boolean_value() },
                    "isOfficeStoreEnabled" => lambda {|n| @is_office_store_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isAppAndServicesTrialEnabled property value. Controls whether users can start trial subscriptions for apps and services in your organization.
            ## @return a boolean
            ## 
            def is_app_and_services_trial_enabled
                return @is_app_and_services_trial_enabled
            end
            ## 
            ## Sets the isAppAndServicesTrialEnabled property value. Controls whether users can start trial subscriptions for apps and services in your organization.
            ## @param value Value to set for the isAppAndServicesTrialEnabled property.
            ## @return a void
            ## 
            def is_app_and_services_trial_enabled=(value)
                @is_app_and_services_trial_enabled = value
            end
            ## 
            ## Gets the isOfficeStoreEnabled property value. Controls whether users can access the Microsoft Store.
            ## @return a boolean
            ## 
            def is_office_store_enabled
                return @is_office_store_enabled
            end
            ## 
            ## Sets the isOfficeStoreEnabled property value. Controls whether users can access the Microsoft Store.
            ## @param value Value to set for the isOfficeStoreEnabled property.
            ## @return a void
            ## 
            def is_office_store_enabled=(value)
                @is_office_store_enabled = value
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
                writer.write_boolean_value("isAppAndServicesTrialEnabled", @is_app_and_services_trial_enabled)
                writer.write_boolean_value("isOfficeStoreEnabled", @is_office_store_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
