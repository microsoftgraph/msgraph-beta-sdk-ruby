require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivilegedAccessRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The group property
            @group
            ## 
            ## Instantiates a new PrivilegedAccessRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedAccessRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedAccessGroup.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the group property value. The group property
            ## @return a privileged_access_group
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The group property
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("group", @group)
            end
        end
    end
end
