require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents one item in the list of managed apps with app details and its associated delegated scope(s).
        class AndroidDeviceOwnerDelegatedScopeAppSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents an app in the list of managed applications
            @app_detail
            ## 
            # List of scopes an app has been assigned.
            @app_scopes
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
            ## Gets the appDetail property value. Represents an app in the list of managed applications
            ## @return a app_list_item
            ## 
            def app_detail
                return @app_detail
            end
            ## 
            ## Sets the appDetail property value. Represents an app in the list of managed applications
            ## @param value Value to set for the appDetail property.
            ## @return a void
            ## 
            def app_detail=(value)
                @app_detail = value
            end
            ## 
            ## Gets the appScopes property value. List of scopes an app has been assigned.
            ## @return a android_device_owner_delegated_app_scope_type
            ## 
            def app_scopes
                return @app_scopes
            end
            ## 
            ## Sets the appScopes property value. List of scopes an app has been assigned.
            ## @param value Value to set for the appScopes property.
            ## @return a void
            ## 
            def app_scopes=(value)
                @app_scopes = value
            end
            ## 
            ## Instantiates a new AndroidDeviceOwnerDelegatedScopeAppSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_owner_delegated_scope_app_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceOwnerDelegatedScopeAppSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appDetail" => lambda {|n| @app_detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "appScopes" => lambda {|n| @app_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerDelegatedAppScopeType.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("appDetail", @app_detail)
                writer.write_collection_of_object_values("appScopes", @app_scopes)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
