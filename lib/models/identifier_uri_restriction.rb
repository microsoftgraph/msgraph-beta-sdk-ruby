require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IdentifierUriRestriction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The excludeAppsReceivingV2Tokens property
            @exclude_apps_receiving_v2_tokens
            ## 
            # The excludeSaml property
            @exclude_saml
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The restrictForAppsCreatedAfterDateTime property
            @restrict_for_apps_created_after_date_time
            ## 
            # The state property
            @state
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
            ## Instantiates a new IdentifierUriRestriction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identifier_uri_restriction
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentifierUriRestriction.new
            end
            ## 
            ## Gets the excludeAppsReceivingV2Tokens property value. The excludeAppsReceivingV2Tokens property
            ## @return a boolean
            ## 
            def exclude_apps_receiving_v2_tokens
                return @exclude_apps_receiving_v2_tokens
            end
            ## 
            ## Sets the excludeAppsReceivingV2Tokens property value. The excludeAppsReceivingV2Tokens property
            ## @param value Value to set for the excludeAppsReceivingV2Tokens property.
            ## @return a void
            ## 
            def exclude_apps_receiving_v2_tokens=(value)
                @exclude_apps_receiving_v2_tokens = value
            end
            ## 
            ## Gets the excludeSaml property value. The excludeSaml property
            ## @return a boolean
            ## 
            def exclude_saml
                return @exclude_saml
            end
            ## 
            ## Sets the excludeSaml property value. The excludeSaml property
            ## @param value Value to set for the excludeSaml property.
            ## @return a void
            ## 
            def exclude_saml=(value)
                @exclude_saml = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "excludeAppsReceivingV2Tokens" => lambda {|n| @exclude_apps_receiving_v2_tokens = n.get_boolean_value() },
                    "excludeSaml" => lambda {|n| @exclude_saml = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "restrictForAppsCreatedAfterDateTime" => lambda {|n| @restrict_for_apps_created_after_date_time = n.get_date_time_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::AppManagementRestrictionState) },
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
            ## Gets the restrictForAppsCreatedAfterDateTime property value. The restrictForAppsCreatedAfterDateTime property
            ## @return a date_time
            ## 
            def restrict_for_apps_created_after_date_time
                return @restrict_for_apps_created_after_date_time
            end
            ## 
            ## Sets the restrictForAppsCreatedAfterDateTime property value. The restrictForAppsCreatedAfterDateTime property
            ## @param value Value to set for the restrictForAppsCreatedAfterDateTime property.
            ## @return a void
            ## 
            def restrict_for_apps_created_after_date_time=(value)
                @restrict_for_apps_created_after_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("excludeAppsReceivingV2Tokens", @exclude_apps_receiving_v2_tokens)
                writer.write_boolean_value("excludeSaml", @exclude_saml)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("restrictForAppsCreatedAfterDateTime", @restrict_for_apps_created_after_date_time)
                writer.write_enum_value("state", @state)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a app_management_restriction_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
