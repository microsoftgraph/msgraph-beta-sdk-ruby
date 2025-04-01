require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServiceTagNamedLocation < MicrosoftGraphBeta::Models::NamedLocation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The isTrusted property
            @is_trusted
            ## 
            # The serviceTags property
            @service_tags
            ## 
            ## Instantiates a new ServiceTagNamedLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_tag_named_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceTagNamedLocation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isTrusted" => lambda {|n| @is_trusted = n.get_boolean_value() },
                    "serviceTags" => lambda {|n| @service_tags = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the isTrusted property value. The isTrusted property
            ## @return a boolean
            ## 
            def is_trusted
                return @is_trusted
            end
            ## 
            ## Sets the isTrusted property value. The isTrusted property
            ## @param value Value to set for the isTrusted property.
            ## @return a void
            ## 
            def is_trusted=(value)
                @is_trusted = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isTrusted", @is_trusted)
                writer.write_collection_of_primitive_values("serviceTags", @service_tags)
            end
            ## 
            ## Gets the serviceTags property value. The serviceTags property
            ## @return a string
            ## 
            def service_tags
                return @service_tags
            end
            ## 
            ## Sets the serviceTags property value. The serviceTags property
            ## @param value Value to set for the serviceTags property.
            ## @return a void
            ## 
            def service_tags=(value)
                @service_tags = value
            end
        end
    end
end
