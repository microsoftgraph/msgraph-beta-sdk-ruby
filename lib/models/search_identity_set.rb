require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SearchIdentitySet
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The application property
            @application
            ## 
            # The device property
            @device
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The user property
            @user
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
            ## Gets the application property value. The application property
            ## @return a search_identity
            ## 
            def application
                return @application
            end
            ## 
            ## Sets the application property value. The application property
            ## @param value Value to set for the application property.
            ## @return a void
            ## 
            def application=(value)
                @application = value
            end
            ## 
            ## Instantiates a new searchIdentitySet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a search_identity_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchIdentitySet.new
            end
            ## 
            ## Gets the device property value. The device property
            ## @return a search_identity
            ## 
            def device
                return @device
            end
            ## 
            ## Sets the device property value. The device property
            ## @param value Value to set for the device property.
            ## @return a void
            ## 
            def device=(value)
                @device = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "application" => lambda {|n| @application = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SearchIdentity.create_from_discriminator_value(pn) }) },
                    "device" => lambda {|n| @device = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SearchIdentity.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SearchIdentity.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("application", @application)
                writer.write_object_value("device", @device)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("user", @user)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the user property value. The user property
            ## @return a search_identity
            ## 
            def user
                return @user
            end
            ## 
            ## Sets the user property value. The user property
            ## @param value Value to set for the user property.
            ## @return a void
            ## 
            def user=(value)
                @user = value
            end
        end
    end
end
