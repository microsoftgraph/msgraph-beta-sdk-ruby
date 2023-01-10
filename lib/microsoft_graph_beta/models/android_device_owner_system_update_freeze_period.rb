require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Represents one item in the list of freeze periods for Android Device Owner system updates
    class AndroidDeviceOwnerSystemUpdateFreezePeriod
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The day of the end date of the freeze period. Valid values 1 to 31
        @end_day
        ## 
        # The month of the end date of the freeze period. Valid values 1 to 12
        @end_month
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The day of the start date of the freeze period. Valid values 1 to 31
        @start_day
        ## 
        # The month of the start date of the freeze period. Valid values 1 to 12
        @start_month
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
        ## Instantiates a new androidDeviceOwnerSystemUpdateFreezePeriod and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_device_owner_system_update_freeze_period
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidDeviceOwnerSystemUpdateFreezePeriod.new
        end
        ## 
        ## Gets the endDay property value. The day of the end date of the freeze period. Valid values 1 to 31
        ## @return a integer
        ## 
        def end_day
            return @end_day
        end
        ## 
        ## Sets the endDay property value. The day of the end date of the freeze period. Valid values 1 to 31
        ## @param value Value to set for the endDay property.
        ## @return a void
        ## 
        def end_day=(value)
            @end_day = value
        end
        ## 
        ## Gets the endMonth property value. The month of the end date of the freeze period. Valid values 1 to 12
        ## @return a integer
        ## 
        def end_month
            return @end_month
        end
        ## 
        ## Sets the endMonth property value. The month of the end date of the freeze period. Valid values 1 to 12
        ## @param value Value to set for the endMonth property.
        ## @return a void
        ## 
        def end_month=(value)
            @end_month = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "endDay" => lambda {|n| @end_day = n.get_number_value() },
                "endMonth" => lambda {|n| @end_month = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "startDay" => lambda {|n| @start_day = n.get_number_value() },
                "startMonth" => lambda {|n| @start_month = n.get_number_value() },
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
            writer.write_number_value("endDay", @end_day)
            writer.write_number_value("endMonth", @end_month)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("startDay", @start_day)
            writer.write_number_value("startMonth", @start_month)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the startDay property value. The day of the start date of the freeze period. Valid values 1 to 31
        ## @return a integer
        ## 
        def start_day
            return @start_day
        end
        ## 
        ## Sets the startDay property value. The day of the start date of the freeze period. Valid values 1 to 31
        ## @param value Value to set for the startDay property.
        ## @return a void
        ## 
        def start_day=(value)
            @start_day = value
        end
        ## 
        ## Gets the startMonth property value. The month of the start date of the freeze period. Valid values 1 to 12
        ## @return a integer
        ## 
        def start_month
            return @start_month
        end
        ## 
        ## Sets the startMonth property value. The month of the start date of the freeze period. Valid values 1 to 12
        ## @param value Value to set for the startMonth property.
        ## @return a void
        ## 
        def start_month=(value)
            @start_month = value
        end
    end
end
