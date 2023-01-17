require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class Windows < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Entity that acts as a container for the functionality of the Windows Update for Business deployment service. Read-only.
        @updates
        ## 
        ## Instantiates a new Windows and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Windows.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "updates" => lambda {|n| @updates = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::Updates.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("updates", @updates)
        end
        ## 
        ## Gets the updates property value. Entity that acts as a container for the functionality of the Windows Update for Business deployment service. Read-only.
        ## @return a updates
        ## 
        def updates
            return @updates
        end
        ## 
        ## Sets the updates property value. Entity that acts as a container for the functionality of the Windows Update for Business deployment service. Read-only.
        ## @param value Value to set for the updates property.
        ## @return a void
        ## 
        def updates=(value)
            @updates = value
        end
    end
end
