require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Configuration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The authorizedAppIds property
            @authorized_app_ids
            ## 
            # The authorizedApps property
            @authorized_apps
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
            ## Gets the authorizedAppIds property value. The authorizedAppIds property
            ## @return a string
            ## 
            def authorized_app_ids
                return @authorized_app_ids
            end
            ## 
            ## Sets the authorizedAppIds property value. The authorizedAppIds property
            ## @param value Value to set for the authorizedAppIds property.
            ## @return a void
            ## 
            def authorized_app_ids=(value)
                @authorized_app_ids = value
            end
            ## 
            ## Gets the authorizedApps property value. The authorizedApps property
            ## @return a string
            ## 
            def authorized_apps
                return @authorized_apps
            end
            ## 
            ## Sets the authorizedApps property value. The authorizedApps property
            ## @param value Value to set for the authorizedApps property.
            ## @return a void
            ## 
            def authorized_apps=(value)
                @authorized_apps = value
            end
            ## 
            ## Instantiates a new configuration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Configuration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authorizedAppIds" => lambda {|n| @authorized_app_ids = n.get_collection_of_primitive_values(String) },
                    "authorizedApps" => lambda {|n| @authorized_apps = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("authorizedAppIds", @authorized_app_ids)
                writer.write_collection_of_primitive_values("authorizedApps", @authorized_apps)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
