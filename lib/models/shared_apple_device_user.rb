require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SharedAppleDeviceUser
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Data quota
            @data_quota
            ## 
            # Data to sync
            @data_to_sync
            ## 
            # Data quota
            @data_used
            ## 
            # The OdataType property
            @odata_type
            ## 
            # User name
            @user_principal_name
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
            ## Instantiates a new sharedAppleDeviceUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a shared_apple_device_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharedAppleDeviceUser.new
            end
            ## 
            ## Gets the dataQuota property value. Data quota
            ## @return a int64
            ## 
            def data_quota
                return @data_quota
            end
            ## 
            ## Sets the dataQuota property value. Data quota
            ## @param value Value to set for the data_quota property.
            ## @return a void
            ## 
            def data_quota=(value)
                @data_quota = value
            end
            ## 
            ## Gets the dataToSync property value. Data to sync
            ## @return a boolean
            ## 
            def data_to_sync
                return @data_to_sync
            end
            ## 
            ## Sets the dataToSync property value. Data to sync
            ## @param value Value to set for the data_to_sync property.
            ## @return a void
            ## 
            def data_to_sync=(value)
                @data_to_sync = value
            end
            ## 
            ## Gets the dataUsed property value. Data quota
            ## @return a int64
            ## 
            def data_used
                return @data_used
            end
            ## 
            ## Sets the dataUsed property value. Data quota
            ## @param value Value to set for the data_used property.
            ## @return a void
            ## 
            def data_used=(value)
                @data_used = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dataQuota" => lambda {|n| @data_quota = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "dataToSync" => lambda {|n| @data_to_sync = n.get_boolean_value() },
                    "dataUsed" => lambda {|n| @data_used = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("dataQuota", @data_quota)
                writer.write_boolean_value("dataToSync", @data_to_sync)
                writer.write_object_value("dataUsed", @data_used)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userPrincipalName property value. User name
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User name
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
