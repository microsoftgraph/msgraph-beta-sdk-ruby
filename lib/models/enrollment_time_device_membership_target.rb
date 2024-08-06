require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The EnrollmentTimeDeviceMembershipTarget entity represents the targets that devices will become members of when enrolled with the associated profile. The only device membership targets supported at this time is static security groups.
        class EnrollmentTimeDeviceMembershipTarget
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifiers of the targets that devices will become members of when enrolled with the asociated profile.
            @target_id
            ## 
            # Represents the type of the targets that devices will become members of when enrolled with the associated profile. Possible values are staticSecurityGroup.
            @target_type
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
            ## Instantiates a new EnrollmentTimeDeviceMembershipTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a enrollment_time_device_membership_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EnrollmentTimeDeviceMembershipTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "targetId" => lambda {|n| @target_id = n.get_string_value() },
                    "targetType" => lambda {|n| @target_type = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentTimeDeviceMembershipTargetType) },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("targetId", @target_id)
                writer.write_enum_value("targetType", @target_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the targetId property value. The unique identifiers of the targets that devices will become members of when enrolled with the asociated profile.
            ## @return a string
            ## 
            def target_id
                return @target_id
            end
            ## 
            ## Sets the targetId property value. The unique identifiers of the targets that devices will become members of when enrolled with the asociated profile.
            ## @param value Value to set for the targetId property.
            ## @return a void
            ## 
            def target_id=(value)
                @target_id = value
            end
            ## 
            ## Gets the targetType property value. Represents the type of the targets that devices will become members of when enrolled with the associated profile. Possible values are staticSecurityGroup.
            ## @return a enrollment_time_device_membership_target_type
            ## 
            def target_type
                return @target_type
            end
            ## 
            ## Sets the targetType property value. Represents the type of the targets that devices will become members of when enrolled with the associated profile. Possible values are staticSecurityGroup.
            ## @param value Value to set for the targetType property.
            ## @return a void
            ## 
            def target_type=(value)
                @target_type = value
            end
        end
    end
end
