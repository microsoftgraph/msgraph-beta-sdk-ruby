require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class TenantAllowOrBlockListAction
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies whether the tenant allow block list is an allow or block. The possible values are: allow, block, and unkownFutureValue.
        @action
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Specifies when the tenant allow-block-list expires in date time.
        @expiration_date_time
        ## 
        # Specifies the note added to the tenant allow block list entry in the format of string.
        @note
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Contains the result of the submission that lead to the tenant allow-block-list entry creation.
        @results
        ## 
        ## Gets the action property value. Specifies whether the tenant allow block list is an allow or block. The possible values are: allow, block, and unkownFutureValue.
        ## @return a tenant_allow_block_list_action
        ## 
        def action
            return @action
        end
        ## 
        ## Sets the action property value. Specifies whether the tenant allow block list is an allow or block. The possible values are: allow, block, and unkownFutureValue.
        ## @param value Value to set for the action property.
        ## @return a void
        ## 
        def action=(value)
            @action = value
        end
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
        ## Instantiates a new tenantAllowOrBlockListAction and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a tenant_allow_or_block_list_action
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TenantAllowOrBlockListAction.new
        end
        ## 
        ## Gets the expirationDateTime property value. Specifies when the tenant allow-block-list expires in date time.
        ## @return a date_time
        ## 
        def expiration_date_time
            return @expiration_date_time
        end
        ## 
        ## Sets the expirationDateTime property value. Specifies when the tenant allow-block-list expires in date time.
        ## @param value Value to set for the expiration_date_time property.
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
                "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::Security::TenantAllowBlockListAction) },
                "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                "note" => lambda {|n| @note = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "results" => lambda {|n| @results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::TenantAllowBlockListEntryResult.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the note property value. Specifies the note added to the tenant allow block list entry in the format of string.
        ## @return a string
        ## 
        def note
            return @note
        end
        ## 
        ## Sets the note property value. Specifies the note added to the tenant allow block list entry in the format of string.
        ## @param value Value to set for the note property.
        ## @return a void
        ## 
        def note=(value)
            @note = value
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
        ## Gets the results property value. Contains the result of the submission that lead to the tenant allow-block-list entry creation.
        ## @return a tenant_allow_block_list_entry_result
        ## 
        def results
            return @results
        end
        ## 
        ## Sets the results property value. Contains the result of the submission that lead to the tenant allow-block-list entry creation.
        ## @param value Value to set for the results property.
        ## @return a void
        ## 
        def results=(value)
            @results = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("action", @action)
            writer.write_date_time_value("expirationDateTime", @expiration_date_time)
            writer.write_string_value("note", @note)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_object_values("results", @results)
            writer.write_additional_data(@additional_data)
        end
    end
end
