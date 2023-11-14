require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityTenantAllowBlockListEntryResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The tenant allow-block list entry type. The possible values are: url, fileHash, sender, recipient and unkownFutureValue.
            @entry_type
            ## 
            # Specifies the date and time when the entry expires.
            @expiration_date_time
            ## 
            # Specifies the identity of the entry generated by the tenant allow block list system.
            @identity
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies whether the tenant allow block list entry creation operation was successful. The possible values are: notStarted, running, succeeded, failed, skipped and unkownFutureValue.
            @status
            ## 
            # Specifies the value of the created tenant allow block list entry.
            @value
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
            ## Instantiates a new securityTenantAllowBlockListEntryResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_tenant_allow_block_list_entry_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityTenantAllowBlockListEntryResult.new
            end
            ## 
            ## Gets the entryType property value. The tenant allow-block list entry type. The possible values are: url, fileHash, sender, recipient and unkownFutureValue.
            ## @return a security_tenant_allow_block_list_entry_type
            ## 
            def entry_type
                return @entry_type
            end
            ## 
            ## Sets the entryType property value. The tenant allow-block list entry type. The possible values are: url, fileHash, sender, recipient and unkownFutureValue.
            ## @param value Value to set for the entryType property.
            ## @return a void
            ## 
            def entry_type=(value)
                @entry_type = value
            end
            ## 
            ## Gets the expirationDateTime property value. Specifies the date and time when the entry expires.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Specifies the date and time when the entry expires.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "entryType" => lambda {|n| @entry_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityTenantAllowBlockListEntryType) },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "identity" => lambda {|n| @identity = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityLongRunningOperationStatus) },
                    "value" => lambda {|n| @value = n.get_string_value() },
                }
            end
            ## 
            ## Gets the identity property value. Specifies the identity of the entry generated by the tenant allow block list system.
            ## @return a string
            ## 
            def identity
                return @identity
            end
            ## 
            ## Sets the identity property value. Specifies the identity of the entry generated by the tenant allow block list system.
            ## @param value Value to set for the identity property.
            ## @return a void
            ## 
            def identity=(value)
                @identity = value
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
                writer.write_enum_value("entryType", @entry_type)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_string_value("identity", @identity)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("status", @status)
                writer.write_string_value("value", @value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. Specifies whether the tenant allow block list entry creation operation was successful. The possible values are: notStarted, running, succeeded, failed, skipped and unkownFutureValue.
            ## @return a security_long_running_operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Specifies whether the tenant allow block list entry creation operation was successful. The possible values are: notStarted, running, succeeded, failed, skipped and unkownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the value property value. Specifies the value of the created tenant allow block list entry.
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Specifies the value of the created tenant allow block list entry.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
