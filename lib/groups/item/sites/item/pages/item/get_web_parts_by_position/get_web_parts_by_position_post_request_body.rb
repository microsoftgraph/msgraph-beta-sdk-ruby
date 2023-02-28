require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../groups'
require_relative '../../../../../item'
require_relative '../../../../sites'
require_relative '../../../item'
require_relative '../../pages'
require_relative '../item'
require_relative './get_web_parts_by_position'

module MicrosoftGraphBeta
    module Groups
        module Item
            module Sites
                module Item
                    module Pages
                        module Item
                            module GetWebPartsByPosition
                                class GetWebPartsByPositionPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The columnId property
                                    @column_id
                                    ## 
                                    # The horizontalSectionId property
                                    @horizontal_section_id
                                    ## 
                                    # The isInVerticalSection property
                                    @is_in_vertical_section
                                    ## 
                                    # The webPartIndex property
                                    @web_part_index
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
                                    ## Gets the columnId property value. The columnId property
                                    ## @return a double
                                    ## 
                                    def column_id
                                        return @column_id
                                    end
                                    ## 
                                    ## Sets the columnId property value. The columnId property
                                    ## @param value Value to set for the column_id property.
                                    ## @return a void
                                    ## 
                                    def column_id=(value)
                                        @column_id = value
                                    end
                                    ## 
                                    ## Instantiates a new getWebPartsByPositionPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a get_web_parts_by_position_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return GetWebPartsByPositionPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "columnId" => lambda {|n| @column_id = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                                            "horizontalSectionId" => lambda {|n| @horizontal_section_id = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                                            "isInVerticalSection" => lambda {|n| @is_in_vertical_section = n.get_boolean_value() },
                                            "webPartIndex" => lambda {|n| @web_part_index = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the horizontalSectionId property value. The horizontalSectionId property
                                    ## @return a double
                                    ## 
                                    def horizontal_section_id
                                        return @horizontal_section_id
                                    end
                                    ## 
                                    ## Sets the horizontalSectionId property value. The horizontalSectionId property
                                    ## @param value Value to set for the horizontal_section_id property.
                                    ## @return a void
                                    ## 
                                    def horizontal_section_id=(value)
                                        @horizontal_section_id = value
                                    end
                                    ## 
                                    ## Gets the isInVerticalSection property value. The isInVerticalSection property
                                    ## @return a boolean
                                    ## 
                                    def is_in_vertical_section
                                        return @is_in_vertical_section
                                    end
                                    ## 
                                    ## Sets the isInVerticalSection property value. The isInVerticalSection property
                                    ## @param value Value to set for the is_in_vertical_section property.
                                    ## @return a void
                                    ## 
                                    def is_in_vertical_section=(value)
                                        @is_in_vertical_section = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("columnId", @column_id)
                                        writer.write_object_value("horizontalSectionId", @horizontal_section_id)
                                        writer.write_boolean_value("isInVerticalSection", @is_in_vertical_section)
                                        writer.write_object_value("webPartIndex", @web_part_index)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the webPartIndex property value. The webPartIndex property
                                    ## @return a double
                                    ## 
                                    def web_part_index
                                        return @web_part_index
                                    end
                                    ## 
                                    ## Sets the webPartIndex property value. The webPartIndex property
                                    ## @param value Value to set for the web_part_index property.
                                    ## @return a void
                                    ## 
                                    def web_part_index=(value)
                                        @web_part_index = value
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
