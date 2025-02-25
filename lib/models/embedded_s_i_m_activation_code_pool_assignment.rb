require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The embedded SIM activation code pool assignment entity assigns a specific embeddedSIMActivationCodePool to an AAD device group.
        class EmbeddedSIMActivationCodePoolAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Base type for assignment targets.
            @target
            ## 
            ## Instantiates a new EmbeddedSIMActivationCodePoolAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a embedded_s_i_m_activation_code_pool_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmbeddedSIMActivationCodePoolAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("target", @target)
            end
            ## 
            ## Gets the target property value. Base type for assignment targets.
            ## @return a device_and_app_management_assignment_target
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. Base type for assignment targets.
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
