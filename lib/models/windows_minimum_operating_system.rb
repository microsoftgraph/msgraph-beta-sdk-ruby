require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The minimum operating system required for a Windows mobile app.
        class WindowsMinimumOperatingSystem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Windows version 10.0 or later.
            @v10_0
            ## 
            # Windows 10 1607 or later.
            @v10_1607
            ## 
            # Windows 10 1703 or later.
            @v10_1703
            ## 
            # Windows 10 1709 or later.
            @v10_1709
            ## 
            # Windows 10 1803 or later.
            @v10_1803
            ## 
            # Windows 10 1809 or later.
            @v10_1809
            ## 
            # Windows 10 1903 or later.
            @v10_1903
            ## 
            # Windows 10 1909 or later.
            @v10_1909
            ## 
            # Windows 10 2H20 or later.
            @v10_2_h20
            ## 
            # Windows 10 2004 or later.
            @v10_2004
            ## 
            # Windows 10 21H1 or later.
            @v10_21_h1
            ## 
            # Windows version 8.0 or later.
            @v8_0
            ## 
            # Windows version 8.1 or later.
            @v8_1
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
            ## Instantiates a new windowsMinimumOperatingSystem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_minimum_operating_system
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsMinimumOperatingSystem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "v10_0" => lambda {|n| @v10_0 = n.get_boolean_value() },
                    "v10_1607" => lambda {|n| @v10_1607 = n.get_boolean_value() },
                    "v10_1703" => lambda {|n| @v10_1703 = n.get_boolean_value() },
                    "v10_1709" => lambda {|n| @v10_1709 = n.get_boolean_value() },
                    "v10_1803" => lambda {|n| @v10_1803 = n.get_boolean_value() },
                    "v10_1809" => lambda {|n| @v10_1809 = n.get_boolean_value() },
                    "v10_1903" => lambda {|n| @v10_1903 = n.get_boolean_value() },
                    "v10_1909" => lambda {|n| @v10_1909 = n.get_boolean_value() },
                    "v10_2H20" => lambda {|n| @v10_2_h20 = n.get_boolean_value() },
                    "v10_2004" => lambda {|n| @v10_2004 = n.get_boolean_value() },
                    "v10_21H1" => lambda {|n| @v10_21_h1 = n.get_boolean_value() },
                    "v8_0" => lambda {|n| @v8_0 = n.get_boolean_value() },
                    "v8_1" => lambda {|n| @v8_1 = n.get_boolean_value() },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("v10_0", @v10_0)
                writer.write_boolean_value("v10_1607", @v10_1607)
                writer.write_boolean_value("v10_1703", @v10_1703)
                writer.write_boolean_value("v10_1709", @v10_1709)
                writer.write_boolean_value("v10_1803", @v10_1803)
                writer.write_boolean_value("v10_1809", @v10_1809)
                writer.write_boolean_value("v10_1903", @v10_1903)
                writer.write_boolean_value("v10_1909", @v10_1909)
                writer.write_boolean_value("v10_2H20", @v10_2_h20)
                writer.write_boolean_value("v10_2004", @v10_2004)
                writer.write_boolean_value("v10_21H1", @v10_21_h1)
                writer.write_boolean_value("v8_0", @v8_0)
                writer.write_boolean_value("v8_1", @v8_1)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the v10_0 property value. Windows version 10.0 or later.
            ## @return a boolean
            ## 
            def v10_0
                return @v10_0
            end
            ## 
            ## Sets the v10_0 property value. Windows version 10.0 or later.
            ## @param value Value to set for the v10_0 property.
            ## @return a void
            ## 
            def v10_0=(value)
                @v10_0 = value
            end
            ## 
            ## Gets the v10_1607 property value. Windows 10 1607 or later.
            ## @return a boolean
            ## 
            def v10_1607
                return @v10_1607
            end
            ## 
            ## Sets the v10_1607 property value. Windows 10 1607 or later.
            ## @param value Value to set for the v10_1607 property.
            ## @return a void
            ## 
            def v10_1607=(value)
                @v10_1607 = value
            end
            ## 
            ## Gets the v10_1703 property value. Windows 10 1703 or later.
            ## @return a boolean
            ## 
            def v10_1703
                return @v10_1703
            end
            ## 
            ## Sets the v10_1703 property value. Windows 10 1703 or later.
            ## @param value Value to set for the v10_1703 property.
            ## @return a void
            ## 
            def v10_1703=(value)
                @v10_1703 = value
            end
            ## 
            ## Gets the v10_1709 property value. Windows 10 1709 or later.
            ## @return a boolean
            ## 
            def v10_1709
                return @v10_1709
            end
            ## 
            ## Sets the v10_1709 property value. Windows 10 1709 or later.
            ## @param value Value to set for the v10_1709 property.
            ## @return a void
            ## 
            def v10_1709=(value)
                @v10_1709 = value
            end
            ## 
            ## Gets the v10_1803 property value. Windows 10 1803 or later.
            ## @return a boolean
            ## 
            def v10_1803
                return @v10_1803
            end
            ## 
            ## Sets the v10_1803 property value. Windows 10 1803 or later.
            ## @param value Value to set for the v10_1803 property.
            ## @return a void
            ## 
            def v10_1803=(value)
                @v10_1803 = value
            end
            ## 
            ## Gets the v10_1809 property value. Windows 10 1809 or later.
            ## @return a boolean
            ## 
            def v10_1809
                return @v10_1809
            end
            ## 
            ## Sets the v10_1809 property value. Windows 10 1809 or later.
            ## @param value Value to set for the v10_1809 property.
            ## @return a void
            ## 
            def v10_1809=(value)
                @v10_1809 = value
            end
            ## 
            ## Gets the v10_1903 property value. Windows 10 1903 or later.
            ## @return a boolean
            ## 
            def v10_1903
                return @v10_1903
            end
            ## 
            ## Sets the v10_1903 property value. Windows 10 1903 or later.
            ## @param value Value to set for the v10_1903 property.
            ## @return a void
            ## 
            def v10_1903=(value)
                @v10_1903 = value
            end
            ## 
            ## Gets the v10_1909 property value. Windows 10 1909 or later.
            ## @return a boolean
            ## 
            def v10_1909
                return @v10_1909
            end
            ## 
            ## Sets the v10_1909 property value. Windows 10 1909 or later.
            ## @param value Value to set for the v10_1909 property.
            ## @return a void
            ## 
            def v10_1909=(value)
                @v10_1909 = value
            end
            ## 
            ## Gets the v10_2H20 property value. Windows 10 2H20 or later.
            ## @return a boolean
            ## 
            def v10_2_h20
                return @v10_2_h20
            end
            ## 
            ## Sets the v10_2H20 property value. Windows 10 2H20 or later.
            ## @param value Value to set for the v10_2_h20 property.
            ## @return a void
            ## 
            def v10_2_h20=(value)
                @v10_2_h20 = value
            end
            ## 
            ## Gets the v10_2004 property value. Windows 10 2004 or later.
            ## @return a boolean
            ## 
            def v10_2004
                return @v10_2004
            end
            ## 
            ## Sets the v10_2004 property value. Windows 10 2004 or later.
            ## @param value Value to set for the v10_2004 property.
            ## @return a void
            ## 
            def v10_2004=(value)
                @v10_2004 = value
            end
            ## 
            ## Gets the v10_21H1 property value. Windows 10 21H1 or later.
            ## @return a boolean
            ## 
            def v10_21_h1
                return @v10_21_h1
            end
            ## 
            ## Sets the v10_21H1 property value. Windows 10 21H1 or later.
            ## @param value Value to set for the v10_21_h1 property.
            ## @return a void
            ## 
            def v10_21_h1=(value)
                @v10_21_h1 = value
            end
            ## 
            ## Gets the v8_0 property value. Windows version 8.0 or later.
            ## @return a boolean
            ## 
            def v8_0
                return @v8_0
            end
            ## 
            ## Sets the v8_0 property value. Windows version 8.0 or later.
            ## @param value Value to set for the v8_0 property.
            ## @return a void
            ## 
            def v8_0=(value)
                @v8_0 = value
            end
            ## 
            ## Gets the v8_1 property value. Windows version 8.1 or later.
            ## @return a boolean
            ## 
            def v8_1
                return @v8_1
            end
            ## 
            ## Sets the v8_1 property value. Windows version 8.1 or later.
            ## @param value Value to set for the v8_1 property.
            ## @return a void
            ## 
            def v8_1=(value)
                @v8_1 = value
            end
        end
    end
end
