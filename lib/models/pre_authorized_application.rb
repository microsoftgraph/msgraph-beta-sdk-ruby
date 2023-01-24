require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PreAuthorizedApplication
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The unique identifier for the client application.
        @app_id
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The unique identifier for the scopes the client application is granted.
        @permission_ids
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
        ## Gets the appId property value. The unique identifier for the client application.
        ## @return a string
        ## 
        def app_id
            return @app_id
        end
        ## 
        ## Sets the appId property value. The unique identifier for the client application.
        ## @param value Value to set for the appId property.
        ## @return a void
        ## 
        def app_id=(value)
            @app_id = value
        end
        ## 
        ## Instantiates a new preAuthorizedApplication and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a pre_authorized_application
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PreAuthorizedApplication.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "appId" => lambda {|n| @app_id = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "permissionIds" => lambda {|n| @permission_ids = n.get_collection_of_primitive_values(String) },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the permissionIds property value. The unique identifier for the scopes the client application is granted.
        ## @return a string
        ## 
        def permission_ids
            return @permission_ids
        end
        ## 
        ## Sets the permissionIds property value. The unique identifier for the scopes the client application is granted.
        ## @param value Value to set for the permissionIds property.
        ## @return a void
        ## 
        def permission_ids=(value)
            @permission_ids = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("appId", @app_id)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_primitive_values("permissionIds", @permission_ids)
            writer.write_additional_data(@additional_data)
        end
    end
end
