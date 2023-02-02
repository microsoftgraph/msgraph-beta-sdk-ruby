require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Operating System version range.
    class OperatingSystemVersionRange
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The description of this range (e.g. Valid 1702 builds)
        @description
        ## 
        # The highest inclusive version that this range contains.
        @highest_version
        ## 
        # The lowest inclusive version that this range contains.
        @lowest_version
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
        ## Instantiates a new operatingSystemVersionRange and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a operating_system_version_range
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OperatingSystemVersionRange.new
        end
        ## 
        ## Gets the description property value. The description of this range (e.g. Valid 1702 builds)
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description of this range (e.g. Valid 1702 builds)
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "description" => lambda {|n| @description = n.get_string_value() },
                "highestVersion" => lambda {|n| @highest_version = n.get_string_value() },
                "lowestVersion" => lambda {|n| @lowest_version = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the highestVersion property value. The highest inclusive version that this range contains.
        ## @return a string
        ## 
        def highest_version
            return @highest_version
        end
        ## 
        ## Sets the highestVersion property value. The highest inclusive version that this range contains.
        ## @param value Value to set for the highest_version property.
        ## @return a void
        ## 
        def highest_version=(value)
            @highest_version = value
        end
        ## 
        ## Gets the lowestVersion property value. The lowest inclusive version that this range contains.
        ## @return a string
        ## 
        def lowest_version
            return @lowest_version
        end
        ## 
        ## Sets the lowestVersion property value. The lowest inclusive version that this range contains.
        ## @param value Value to set for the lowest_version property.
        ## @return a void
        ## 
        def lowest_version=(value)
            @lowest_version = value
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
        ## @param value Value to set for the odata_type property.
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
            writer.write_string_value("description", @description)
            writer.write_string_value("highestVersion", @highest_version)
            writer.write_string_value("lowestVersion", @lowest_version)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
