require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PersonNamePronounciation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The displayName property
            @display_name
            ## 
            # The first property
            @first
            ## 
            # The last property
            @last
            ## 
            # The maiden property
            @maiden
            ## 
            # The middle property
            @middle
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
            ## Instantiates a new personNamePronounciation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a person_name_pronounciation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PersonNamePronounciation.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the first property value. The first property
            ## @return a string
            ## 
            def first
                return @first
            end
            ## 
            ## Sets the first property value. The first property
            ## @param value Value to set for the first property.
            ## @return a void
            ## 
            def first=(value)
                @first = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "first" => lambda {|n| @first = n.get_string_value() },
                    "last" => lambda {|n| @last = n.get_string_value() },
                    "maiden" => lambda {|n| @maiden = n.get_string_value() },
                    "middle" => lambda {|n| @middle = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the last property value. The last property
            ## @return a string
            ## 
            def last
                return @last
            end
            ## 
            ## Sets the last property value. The last property
            ## @param value Value to set for the last property.
            ## @return a void
            ## 
            def last=(value)
                @last = value
            end
            ## 
            ## Gets the maiden property value. The maiden property
            ## @return a string
            ## 
            def maiden
                return @maiden
            end
            ## 
            ## Sets the maiden property value. The maiden property
            ## @param value Value to set for the maiden property.
            ## @return a void
            ## 
            def maiden=(value)
                @maiden = value
            end
            ## 
            ## Gets the middle property value. The middle property
            ## @return a string
            ## 
            def middle
                return @middle
            end
            ## 
            ## Sets the middle property value. The middle property
            ## @param value Value to set for the middle property.
            ## @return a void
            ## 
            def middle=(value)
                @middle = value
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
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("first", @first)
                writer.write_string_value("last", @last)
                writer.write_string_value("maiden", @maiden)
                writer.write_string_value("middle", @middle)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
