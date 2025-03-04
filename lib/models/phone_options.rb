require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PhoneOptions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A read-only, Microsoft-defined list of regions that already enable MFA. For more information, see the following list of countries.
            @default_regions
            ## 
            # A numbers-only set representing the region telecom codes to prevent or disable the telephony service. Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be non-null.
            @exclude_regions
            ## 
            # A numbers-only set representing the country codes that can be manually added to enable telephony service in those regions, in addition to the list of countries that are already enabled. For more information about regions that require opt in, see Regions that need to opt in for MFA telephony verification. Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be positive integers and can't overlap with 'excludeRegions'.
            @include_additional_regions
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new PhoneOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a phone_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PhoneOptions.new
            end
            ## 
            ## Gets the defaultRegions property value. A read-only, Microsoft-defined list of regions that already enable MFA. For more information, see the following list of countries.
            ## @return a integer
            ## 
            def default_regions
                return @default_regions
            end
            ## 
            ## Sets the defaultRegions property value. A read-only, Microsoft-defined list of regions that already enable MFA. For more information, see the following list of countries.
            ## @param value Value to set for the defaultRegions property.
            ## @return a void
            ## 
            def default_regions=(value)
                @default_regions = value
            end
            ## 
            ## Gets the excludeRegions property value. A numbers-only set representing the region telecom codes to prevent or disable the telephony service. Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be non-null.
            ## @return a integer
            ## 
            def exclude_regions
                return @exclude_regions
            end
            ## 
            ## Sets the excludeRegions property value. A numbers-only set representing the region telecom codes to prevent or disable the telephony service. Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be non-null.
            ## @param value Value to set for the excludeRegions property.
            ## @return a void
            ## 
            def exclude_regions=(value)
                @exclude_regions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultRegions" => lambda {|n| @default_regions = n.get_collection_of_primitive_values(Integer) },
                    "excludeRegions" => lambda {|n| @exclude_regions = n.get_collection_of_primitive_values(Integer) },
                    "includeAdditionalRegions" => lambda {|n| @include_additional_regions = n.get_collection_of_primitive_values(Integer) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the includeAdditionalRegions property value. A numbers-only set representing the country codes that can be manually added to enable telephony service in those regions, in addition to the list of countries that are already enabled. For more information about regions that require opt in, see Regions that need to opt in for MFA telephony verification. Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be positive integers and can't overlap with 'excludeRegions'.
            ## @return a integer
            ## 
            def include_additional_regions
                return @include_additional_regions
            end
            ## 
            ## Sets the includeAdditionalRegions property value. A numbers-only set representing the country codes that can be manually added to enable telephony service in those regions, in addition to the list of countries that are already enabled. For more information about regions that require opt in, see Regions that need to opt in for MFA telephony verification. Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be positive integers and can't overlap with 'excludeRegions'.
            ## @param value Value to set for the includeAdditionalRegions property.
            ## @return a void
            ## 
            def include_additional_regions=(value)
                @include_additional_regions = value
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
                writer.write_collection_of_primitive_values("defaultRegions", @default_regions)
                writer.write_collection_of_primitive_values("excludeRegions", @exclude_regions)
                writer.write_collection_of_primitive_values("includeAdditionalRegions", @include_additional_regions)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
