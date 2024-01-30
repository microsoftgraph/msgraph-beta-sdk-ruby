require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserRegistrationCount
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Provides the registration count for your tenant.
            @registration_count
            ## 
            # The registrationStatus property
            @registration_status
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
            ## Instantiates a new userRegistrationCount and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_registration_count
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserRegistrationCount.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "registrationCount" => lambda {|n| @registration_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "registrationStatus" => lambda {|n| @registration_status = n.get_enum_value(MicrosoftGraphBeta::Models::RegistrationStatusType) },
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
            ## Gets the registrationCount property value. Provides the registration count for your tenant.
            ## @return a int64
            ## 
            def registration_count
                return @registration_count
            end
            ## 
            ## Sets the registrationCount property value. Provides the registration count for your tenant.
            ## @param value Value to set for the registrationCount property.
            ## @return a void
            ## 
            def registration_count=(value)
                @registration_count = value
            end
            ## 
            ## Gets the registrationStatus property value. The registrationStatus property
            ## @return a registration_status_type
            ## 
            def registration_status
                return @registration_status
            end
            ## 
            ## Sets the registrationStatus property value. The registrationStatus property
            ## @param value Value to set for the registrationStatus property.
            ## @return a void
            ## 
            def registration_status=(value)
                @registration_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("registrationCount", @registration_count)
                writer.write_enum_value("registrationStatus", @registration_status)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
