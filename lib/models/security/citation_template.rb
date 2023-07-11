require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class CitationTemplate < MicrosoftGraphBeta::Models::Security::FilePlanDescriptorTemplate
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Represents the jurisdiction or agency that published the citation.
                @citation_jurisdiction
                ## 
                # Represents the URL to the published citation.
                @citation_url
                ## 
                ## Gets the citationJurisdiction property value. Represents the jurisdiction or agency that published the citation.
                ## @return a string
                ## 
                def citation_jurisdiction
                    return @citation_jurisdiction
                end
                ## 
                ## Sets the citationJurisdiction property value. Represents the jurisdiction or agency that published the citation.
                ## @param value Value to set for the citation_jurisdiction property.
                ## @return a void
                ## 
                def citation_jurisdiction=(value)
                    @citation_jurisdiction = value
                end
                ## 
                ## Gets the citationUrl property value. Represents the URL to the published citation.
                ## @return a string
                ## 
                def citation_url
                    return @citation_url
                end
                ## 
                ## Sets the citationUrl property value. Represents the URL to the published citation.
                ## @param value Value to set for the citation_url property.
                ## @return a void
                ## 
                def citation_url=(value)
                    @citation_url = value
                end
                ## 
                ## Instantiates a new citationTemplate and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a citation_template
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CitationTemplate.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "citationJurisdiction" => lambda {|n| @citation_jurisdiction = n.get_string_value() },
                        "citationUrl" => lambda {|n| @citation_url = n.get_string_value() },
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
                    writer.write_string_value("citationJurisdiction", @citation_jurisdiction)
                    writer.write_string_value("citationUrl", @citation_url)
                end
            end
        end
    end
end
