require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class Security < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The informationProtection property
                @information_protection
                ## 
                ## Instantiates a new security and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a security
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Security.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "informationProtection" => lambda {|n| @information_protection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::InformationProtection.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the informationProtection property value. The informationProtection property
                ## @return a information_protection
                ## 
                def information_protection
                    return @information_protection
                end
                ## 
                ## Sets the informationProtection property value. The informationProtection property
                ## @param value Value to set for the information_protection property.
                ## @return a void
                ## 
                def information_protection=(value)
                    @information_protection = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("informationProtection", @information_protection)
                end
            end
        end
    end
end
