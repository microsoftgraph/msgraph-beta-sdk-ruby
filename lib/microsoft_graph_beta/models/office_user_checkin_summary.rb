require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OfficeUserCheckinSummary
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Total failed user check ins for the last 3 months.
        @failed_user_count
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Total successful user check ins for the last 3 months.
        @succeeded_user_count
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
        ## Instantiates a new officeUserCheckinSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a office_user_checkin_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OfficeUserCheckinSummary.new
        end
        ## 
        ## Gets the failedUserCount property value. Total failed user check ins for the last 3 months.
        ## @return a integer
        ## 
        def failed_user_count
            return @failed_user_count
        end
        ## 
        ## Sets the failedUserCount property value. Total failed user check ins for the last 3 months.
        ## @param value Value to set for the failedUserCount property.
        ## @return a void
        ## 
        def failed_user_count=(value)
            @failed_user_count = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "failedUserCount" => lambda {|n| @failed_user_count = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "succeededUserCount" => lambda {|n| @succeeded_user_count = n.get_number_value() },
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_number_value("failedUserCount", @failed_user_count)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("succeededUserCount", @succeeded_user_count)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the succeededUserCount property value. Total successful user check ins for the last 3 months.
        ## @return a integer
        ## 
        def succeeded_user_count
            return @succeeded_user_count
        end
        ## 
        ## Sets the succeededUserCount property value. Total successful user check ins for the last 3 months.
        ## @param value Value to set for the succeededUserCount property.
        ## @return a void
        ## 
        def succeeded_user_count=(value)
            @succeeded_user_count = value
        end
    end
end
