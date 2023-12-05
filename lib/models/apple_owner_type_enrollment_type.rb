require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AppleOwnerTypeEnrollmentType
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The enrollmentType property
            @enrollment_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Owner type of device.
            @owner_type
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
            ## Instantiates a new appleOwnerTypeEnrollmentType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a apple_owner_type_enrollment_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppleOwnerTypeEnrollmentType.new
            end
            ## 
            ## Gets the enrollmentType property value. The enrollmentType property
            ## @return a apple_user_initiated_enrollment_type
            ## 
            def enrollment_type
                return @enrollment_type
            end
            ## 
            ## Sets the enrollmentType property value. The enrollmentType property
            ## @param value Value to set for the enrollmentType property.
            ## @return a void
            ## 
            def enrollment_type=(value)
                @enrollment_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "enrollmentType" => lambda {|n| @enrollment_type = n.get_enum_value(MicrosoftGraphBeta::Models::AppleUserInitiatedEnrollmentType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "ownerType" => lambda {|n| @owner_type = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedDeviceOwnerType) },
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
            ## Gets the ownerType property value. Owner type of device.
            ## @return a managed_device_owner_type
            ## 
            def owner_type
                return @owner_type
            end
            ## 
            ## Sets the ownerType property value. Owner type of device.
            ## @param value Value to set for the ownerType property.
            ## @return a void
            ## 
            def owner_type=(value)
                @owner_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("enrollmentType", @enrollment_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("ownerType", @owner_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
