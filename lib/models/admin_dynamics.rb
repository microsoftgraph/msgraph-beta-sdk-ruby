require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AdminDynamics < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The customerVoice property
            @customer_voice
            ## 
            ## Instantiates a new adminDynamics and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a admin_dynamics
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AdminDynamics.new
            end
            ## 
            ## Gets the customerVoice property value. The customerVoice property
            ## @return a customer_voice_settings
            ## 
            def customer_voice
                return @customer_voice
            end
            ## 
            ## Sets the customerVoice property value. The customerVoice property
            ## @param value Value to set for the customerVoice property.
            ## @return a void
            ## 
            def customer_voice=(value)
                @customer_voice = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "customerVoice" => lambda {|n| @customer_voice = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CustomerVoiceSettings.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("customerVoice", @customer_voice)
            end
        end
    end
end
