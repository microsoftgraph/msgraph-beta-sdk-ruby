require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # A configuration entity for MEM features that utilize Data Processor Service for Windows (DPSW) data.
    class DataProcessorServiceForWindowsFeaturesOnboarding
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Indicates whether the tenant has enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. When TRUE, the tenant has enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. When FALSE, the tenant has not enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. Default value is FALSE.
        @are_data_processor_service_for_windows_features_enabled
        ## 
        # Indicates whether the tenant has required Windows license. When TRUE, the tenant has the required Windows license. When FALSE, the tenant does not have the required Windows license. Default value is FALSE.
        @has_valid_windows_license
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
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the areDataProcessorServiceForWindowsFeaturesEnabled property value. Indicates whether the tenant has enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. When TRUE, the tenant has enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. When FALSE, the tenant has not enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. Default value is FALSE.
        ## @return a boolean
        ## 
        def are_data_processor_service_for_windows_features_enabled
            return @are_data_processor_service_for_windows_features_enabled
        end
        ## 
        ## Sets the areDataProcessorServiceForWindowsFeaturesEnabled property value. Indicates whether the tenant has enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. When TRUE, the tenant has enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. When FALSE, the tenant has not enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. Default value is FALSE.
        ## @param value Value to set for the areDataProcessorServiceForWindowsFeaturesEnabled property.
        ## @return a void
        ## 
        def are_data_processor_service_for_windows_features_enabled=(value)
            @are_data_processor_service_for_windows_features_enabled = value
        end
        ## 
        ## Instantiates a new dataProcessorServiceForWindowsFeaturesOnboarding and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a data_processor_service_for_windows_features_onboarding
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DataProcessorServiceForWindowsFeaturesOnboarding.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "areDataProcessorServiceForWindowsFeaturesEnabled" => lambda {|n| @are_data_processor_service_for_windows_features_enabled = n.get_boolean_value() },
                "hasValidWindowsLicense" => lambda {|n| @has_valid_windows_license = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the hasValidWindowsLicense property value. Indicates whether the tenant has required Windows license. When TRUE, the tenant has the required Windows license. When FALSE, the tenant does not have the required Windows license. Default value is FALSE.
        ## @return a boolean
        ## 
        def has_valid_windows_license
            return @has_valid_windows_license
        end
        ## 
        ## Sets the hasValidWindowsLicense property value. Indicates whether the tenant has required Windows license. When TRUE, the tenant has the required Windows license. When FALSE, the tenant does not have the required Windows license. Default value is FALSE.
        ## @param value Value to set for the hasValidWindowsLicense property.
        ## @return a void
        ## 
        def has_valid_windows_license=(value)
            @has_valid_windows_license = value
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
            writer.write_boolean_value("areDataProcessorServiceForWindowsFeaturesEnabled", @are_data_processor_service_for_windows_features_enabled)
            writer.write_boolean_value("hasValidWindowsLicense", @has_valid_windows_license)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
