require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WslDistributionConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Linux distribution like Debian, Fedora, Ubuntu etc.
            @distribution
            ## 
            # Maximum supported operating system version of the linux version.
            @maximum_o_s_version
            ## 
            # Minimum supported operating system version of the linux version.
            @minimum_o_s_version
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
            ## Instantiates a new WslDistributionConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a wsl_distribution_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WslDistributionConfiguration.new
            end
            ## 
            ## Gets the distribution property value. Linux distribution like Debian, Fedora, Ubuntu etc.
            ## @return a string
            ## 
            def distribution
                return @distribution
            end
            ## 
            ## Sets the distribution property value. Linux distribution like Debian, Fedora, Ubuntu etc.
            ## @param value Value to set for the distribution property.
            ## @return a void
            ## 
            def distribution=(value)
                @distribution = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "distribution" => lambda {|n| @distribution = n.get_string_value() },
                    "maximumOSVersion" => lambda {|n| @maximum_o_s_version = n.get_string_value() },
                    "minimumOSVersion" => lambda {|n| @minimum_o_s_version = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the maximumOSVersion property value. Maximum supported operating system version of the linux version.
            ## @return a string
            ## 
            def maximum_o_s_version
                return @maximum_o_s_version
            end
            ## 
            ## Sets the maximumOSVersion property value. Maximum supported operating system version of the linux version.
            ## @param value Value to set for the maximumOSVersion property.
            ## @return a void
            ## 
            def maximum_o_s_version=(value)
                @maximum_o_s_version = value
            end
            ## 
            ## Gets the minimumOSVersion property value. Minimum supported operating system version of the linux version.
            ## @return a string
            ## 
            def minimum_o_s_version
                return @minimum_o_s_version
            end
            ## 
            ## Sets the minimumOSVersion property value. Minimum supported operating system version of the linux version.
            ## @param value Value to set for the minimumOSVersion property.
            ## @return a void
            ## 
            def minimum_o_s_version=(value)
                @minimum_o_s_version = value
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
                writer.write_string_value("distribution", @distribution)
                writer.write_string_value("maximumOSVersion", @maximum_o_s_version)
                writer.write_string_value("minimumOSVersion", @minimum_o_s_version)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
