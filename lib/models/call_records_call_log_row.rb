require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CallRecordsCallLogRow
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The administrativeUnitInfos property
            @administrative_unit_infos
            ## 
            # The id property
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The otherPartyCountryCode property
            @other_party_country_code
            ## 
            # The userDisplayName property
            @user_display_name
            ## 
            # The userId property
            @user_id
            ## 
            # The userPrincipalName property
            @user_principal_name
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
            ## Gets the administrativeUnitInfos property value. The administrativeUnitInfos property
            ## @return a call_records_administrative_unit_info
            ## 
            def administrative_unit_infos
                return @administrative_unit_infos
            end
            ## 
            ## Sets the administrativeUnitInfos property value. The administrativeUnitInfos property
            ## @param value Value to set for the administrativeUnitInfos property.
            ## @return a void
            ## 
            def administrative_unit_infos=(value)
                @administrative_unit_infos = value
            end
            ## 
            ## Instantiates a new CallRecordsCallLogRow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_call_log_row
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.callRecords.directRoutingLogRow"
                            return CallRecordsDirectRoutingLogRow.new
                        when "#microsoft.graph.callRecords.pstnCallLogRow"
                            return CallRecordsPstnCallLogRow.new
                        when "#microsoft.graph.callRecords.smsLogRow"
                            return CallRecordsSmsLogRow.new
                    end
                end
                return CallRecordsCallLogRow.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "administrativeUnitInfos" => lambda {|n| @administrative_unit_infos = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CallRecordsAdministrativeUnitInfo.create_from_discriminator_value(pn) }) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "otherPartyCountryCode" => lambda {|n| @other_party_country_code = n.get_string_value() },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## Gets the otherPartyCountryCode property value. The otherPartyCountryCode property
            ## @return a string
            ## 
            def other_party_country_code
                return @other_party_country_code
            end
            ## 
            ## Sets the otherPartyCountryCode property value. The otherPartyCountryCode property
            ## @param value Value to set for the otherPartyCountryCode property.
            ## @return a void
            ## 
            def other_party_country_code=(value)
                @other_party_country_code = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("administrativeUnitInfos", @administrative_unit_infos)
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("otherPartyCountryCode", @other_party_country_code)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userDisplayName property value. The userDisplayName property
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. The userDisplayName property
            ## @param value Value to set for the userDisplayName property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userId property value. The userId property
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The userId property
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. The userPrincipalName property
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The userPrincipalName property
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
