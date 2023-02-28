require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class EdiscoveryFile < MicrosoftGraphBeta::Models::Security::File
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Custodians associated with the file.
                @custodian
                ## 
                # Tags associated with the file.
                @tags
                ## 
                ## Instantiates a new EdiscoveryFile and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a ediscovery_file
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EdiscoveryFile.new
                end
                ## 
                ## Gets the custodian property value. Custodians associated with the file.
                ## @return a ediscovery_custodian
                ## 
                def custodian
                    return @custodian
                end
                ## 
                ## Sets the custodian property value. Custodians associated with the file.
                ## @param value Value to set for the custodian property.
                ## @return a void
                ## 
                def custodian=(value)
                    @custodian = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "custodian" => lambda {|n| @custodian = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::EdiscoveryCustodian.create_from_discriminator_value(pn) }) },
                        "tags" => lambda {|n| @tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::EdiscoveryReviewTag.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("custodian", @custodian)
                    writer.write_collection_of_object_values("tags", @tags)
                end
                ## 
                ## Gets the tags property value. Tags associated with the file.
                ## @return a ediscovery_review_tag
                ## 
                def tags
                    return @tags
                end
                ## 
                ## Sets the tags property value. Tags associated with the file.
                ## @param value Value to set for the tags property.
                ## @return a void
                ## 
                def tags=(value)
                    @tags = value
                end
            end
        end
    end
end
