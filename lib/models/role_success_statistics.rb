require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RoleSuccessStatistics
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The permanentFail property
            @permanent_fail
            ## 
            # The permanentSuccess property
            @permanent_success
            ## 
            # The removeFail property
            @remove_fail
            ## 
            # The removeSuccess property
            @remove_success
            ## 
            # The roleId property
            @role_id
            ## 
            # The roleName property
            @role_name
            ## 
            # The temporaryFail property
            @temporary_fail
            ## 
            # The temporarySuccess property
            @temporary_success
            ## 
            # The unknownFail property
            @unknown_fail
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
            ## Instantiates a new roleSuccessStatistics and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a role_success_statistics
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RoleSuccessStatistics.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "permanentFail" => lambda {|n| @permanent_fail = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "permanentSuccess" => lambda {|n| @permanent_success = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "removeFail" => lambda {|n| @remove_fail = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "removeSuccess" => lambda {|n| @remove_success = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "roleId" => lambda {|n| @role_id = n.get_string_value() },
                    "roleName" => lambda {|n| @role_name = n.get_string_value() },
                    "temporaryFail" => lambda {|n| @temporary_fail = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "temporarySuccess" => lambda {|n| @temporary_success = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "unknownFail" => lambda {|n| @unknown_fail = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the permanentFail property value. The permanentFail property
            ## @return a int64
            ## 
            def permanent_fail
                return @permanent_fail
            end
            ## 
            ## Sets the permanentFail property value. The permanentFail property
            ## @param value Value to set for the permanent_fail property.
            ## @return a void
            ## 
            def permanent_fail=(value)
                @permanent_fail = value
            end
            ## 
            ## Gets the permanentSuccess property value. The permanentSuccess property
            ## @return a int64
            ## 
            def permanent_success
                return @permanent_success
            end
            ## 
            ## Sets the permanentSuccess property value. The permanentSuccess property
            ## @param value Value to set for the permanent_success property.
            ## @return a void
            ## 
            def permanent_success=(value)
                @permanent_success = value
            end
            ## 
            ## Gets the removeFail property value. The removeFail property
            ## @return a int64
            ## 
            def remove_fail
                return @remove_fail
            end
            ## 
            ## Sets the removeFail property value. The removeFail property
            ## @param value Value to set for the remove_fail property.
            ## @return a void
            ## 
            def remove_fail=(value)
                @remove_fail = value
            end
            ## 
            ## Gets the removeSuccess property value. The removeSuccess property
            ## @return a int64
            ## 
            def remove_success
                return @remove_success
            end
            ## 
            ## Sets the removeSuccess property value. The removeSuccess property
            ## @param value Value to set for the remove_success property.
            ## @return a void
            ## 
            def remove_success=(value)
                @remove_success = value
            end
            ## 
            ## Gets the roleId property value. The roleId property
            ## @return a string
            ## 
            def role_id
                return @role_id
            end
            ## 
            ## Sets the roleId property value. The roleId property
            ## @param value Value to set for the role_id property.
            ## @return a void
            ## 
            def role_id=(value)
                @role_id = value
            end
            ## 
            ## Gets the roleName property value. The roleName property
            ## @return a string
            ## 
            def role_name
                return @role_name
            end
            ## 
            ## Sets the roleName property value. The roleName property
            ## @param value Value to set for the role_name property.
            ## @return a void
            ## 
            def role_name=(value)
                @role_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("permanentFail", @permanent_fail)
                writer.write_object_value("permanentSuccess", @permanent_success)
                writer.write_object_value("removeFail", @remove_fail)
                writer.write_object_value("removeSuccess", @remove_success)
                writer.write_string_value("roleId", @role_id)
                writer.write_string_value("roleName", @role_name)
                writer.write_object_value("temporaryFail", @temporary_fail)
                writer.write_object_value("temporarySuccess", @temporary_success)
                writer.write_object_value("unknownFail", @unknown_fail)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the temporaryFail property value. The temporaryFail property
            ## @return a int64
            ## 
            def temporary_fail
                return @temporary_fail
            end
            ## 
            ## Sets the temporaryFail property value. The temporaryFail property
            ## @param value Value to set for the temporary_fail property.
            ## @return a void
            ## 
            def temporary_fail=(value)
                @temporary_fail = value
            end
            ## 
            ## Gets the temporarySuccess property value. The temporarySuccess property
            ## @return a int64
            ## 
            def temporary_success
                return @temporary_success
            end
            ## 
            ## Sets the temporarySuccess property value. The temporarySuccess property
            ## @param value Value to set for the temporary_success property.
            ## @return a void
            ## 
            def temporary_success=(value)
                @temporary_success = value
            end
            ## 
            ## Gets the unknownFail property value. The unknownFail property
            ## @return a int64
            ## 
            def unknown_fail
                return @unknown_fail
            end
            ## 
            ## Sets the unknownFail property value. The unknownFail property
            ## @param value Value to set for the unknown_fail property.
            ## @return a void
            ## 
            def unknown_fail=(value)
                @unknown_fail = value
            end
        end
    end
end
