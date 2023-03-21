require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../intents'
require_relative '../item'
require_relative './migrate_to_template'

module MicrosoftGraphBeta
    module DeviceManagement
        module Intents
            module Item
                module MigrateToTemplate
                    class MigrateToTemplatePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The newTemplateId property
                        @new_template_id
                        ## 
                        # The preserveCustomValues property
                        @preserve_custom_values
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
                        ## Instantiates a new migrateToTemplatePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a migrate_to_template_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return MigrateToTemplatePostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "newTemplateId" => lambda {|n| @new_template_id = n.get_string_value() },
                                "preserveCustomValues" => lambda {|n| @preserve_custom_values = n.get_boolean_value() },
                            }
                        end
                        ## 
                        ## Gets the newTemplateId property value. The newTemplateId property
                        ## @return a string
                        ## 
                        def new_template_id
                            return @new_template_id
                        end
                        ## 
                        ## Sets the newTemplateId property value. The newTemplateId property
                        ## @param value Value to set for the new_template_id property.
                        ## @return a void
                        ## 
                        def new_template_id=(value)
                            @new_template_id = value
                        end
                        ## 
                        ## Gets the preserveCustomValues property value. The preserveCustomValues property
                        ## @return a boolean
                        ## 
                        def preserve_custom_values
                            return @preserve_custom_values
                        end
                        ## 
                        ## Sets the preserveCustomValues property value. The preserveCustomValues property
                        ## @param value Value to set for the preserve_custom_values property.
                        ## @return a void
                        ## 
                        def preserve_custom_values=(value)
                            @preserve_custom_values = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("newTemplateId", @new_template_id)
                            writer.write_boolean_value("preserveCustomValues", @preserve_custom_values)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
