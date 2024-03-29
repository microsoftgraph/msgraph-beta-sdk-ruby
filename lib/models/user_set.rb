require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserSet
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # For a user in an approval stage, this property indicates whether the user is a backup fallback approver.
            @is_backup
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
            ## Instantiates a new userSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.connectedOrganizationMembers"
                            return ConnectedOrganizationMembers.new
                        when "#microsoft.graph.externalSponsors"
                            return ExternalSponsors.new
                        when "#microsoft.graph.groupMembers"
                            return GroupMembers.new
                        when "#microsoft.graph.internalSponsors"
                            return InternalSponsors.new
                        when "#microsoft.graph.requestorManager"
                            return RequestorManager.new
                        when "#microsoft.graph.singleUser"
                            return SingleUser.new
                        when "#microsoft.graph.targetUserSponsors"
                            return TargetUserSponsors.new
                    end
                end
                return UserSet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isBackup" => lambda {|n| @is_backup = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isBackup property value. For a user in an approval stage, this property indicates whether the user is a backup fallback approver.
            ## @return a boolean
            ## 
            def is_backup
                return @is_backup
            end
            ## 
            ## Sets the isBackup property value. For a user in an approval stage, this property indicates whether the user is a backup fallback approver.
            ## @param value Value to set for the isBackup property.
            ## @return a void
            ## 
            def is_backup=(value)
                @is_backup = value
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
                writer.write_boolean_value("isBackup", @is_backup)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
