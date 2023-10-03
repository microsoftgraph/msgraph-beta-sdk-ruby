require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsAssociatedIdentities
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The all property
            @all
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The roles property
            @roles
            ## 
            # The users property
            @users
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
            ## Gets the all property value. The all property
            ## @return a aws_identity
            ## 
            def all
                return @all
            end
            ## 
            ## Sets the all property value. The all property
            ## @param value Value to set for the all property.
            ## @return a void
            ## 
            def all=(value)
                @all = value
            end
            ## 
            ## Instantiates a new awsAssociatedIdentities and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_associated_identities
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsAssociatedIdentities.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "all" => lambda {|n| @all = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AwsIdentity.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "roles" => lambda {|n| @roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AwsRole.create_from_discriminator_value(pn) }) },
                    "users" => lambda {|n| @users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AwsUser.create_from_discriminator_value(pn) }) },
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
            ## Gets the roles property value. The roles property
            ## @return a aws_role
            ## 
            def roles
                return @roles
            end
            ## 
            ## Sets the roles property value. The roles property
            ## @param value Value to set for the roles property.
            ## @return a void
            ## 
            def roles=(value)
                @roles = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("all", @all)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("roles", @roles)
                writer.write_collection_of_object_values("users", @users)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the users property value. The users property
            ## @return a aws_user
            ## 
            def users
                return @users
            end
            ## 
            ## Sets the users property value. The users property
            ## @param value Value to set for the users property.
            ## @return a void
            ## 
            def users=(value)
                @users = value
            end
        end
    end
end
