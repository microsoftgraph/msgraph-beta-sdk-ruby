require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AdminWindows < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The updates property
        @updates
        ## 
        ## Instantiates a new adminWindows and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a admin_windows
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AdminWindows.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "updates" => lambda {|n| @updates = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminWindowsUpdates.create_from_discriminator_value(pn) }) },
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
        ## Gets the updates property value. The updates property
        ## @return a admin_windows_updates
        ## 
        def updates
            return @updates
        end
        ## 
        ## Sets the updates property value. The updates property
        ## @param value Value to set for the updates property.
        ## @return a void
        ## 
        def updates=(value)
            @updates = value
        end
    end
end
