require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class ContainerEvidence < MicrosoftGraphBeta::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The args property
                @args
                ## 
                # The command property
                @command
                ## 
                # The containerId property
                @container_id
                ## 
                # The image property
                @image
                ## 
                # The isPrivileged property
                @is_privileged
                ## 
                # The name property
                @name
                ## 
                # The pod property
                @pod
                ## 
                ## Gets the args property value. The args property
                ## @return a string
                ## 
                def args
                    return @args
                end
                ## 
                ## Sets the args property value. The args property
                ## @param value Value to set for the args property.
                ## @return a void
                ## 
                def args=(value)
                    @args = value
                end
                ## 
                ## Gets the command property value. The command property
                ## @return a string
                ## 
                def command
                    return @command
                end
                ## 
                ## Sets the command property value. The command property
                ## @param value Value to set for the command property.
                ## @return a void
                ## 
                def command=(value)
                    @command = value
                end
                ## 
                ## Instantiates a new containerEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.containerEvidence"
                end
                ## 
                ## Gets the containerId property value. The containerId property
                ## @return a string
                ## 
                def container_id
                    return @container_id
                end
                ## 
                ## Sets the containerId property value. The containerId property
                ## @param value Value to set for the containerId property.
                ## @return a void
                ## 
                def container_id=(value)
                    @container_id = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a container_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ContainerEvidence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "args" => lambda {|n| @args = n.get_collection_of_primitive_values(String) },
                        "command" => lambda {|n| @command = n.get_collection_of_primitive_values(String) },
                        "containerId" => lambda {|n| @container_id = n.get_string_value() },
                        "image" => lambda {|n| @image = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::ContainerImageEvidence.create_from_discriminator_value(pn) }) },
                        "isPrivileged" => lambda {|n| @is_privileged = n.get_boolean_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "pod" => lambda {|n| @pod = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::KubernetesPodEvidence.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the image property value. The image property
                ## @return a container_image_evidence
                ## 
                def image
                    return @image
                end
                ## 
                ## Sets the image property value. The image property
                ## @param value Value to set for the image property.
                ## @return a void
                ## 
                def image=(value)
                    @image = value
                end
                ## 
                ## Gets the isPrivileged property value. The isPrivileged property
                ## @return a boolean
                ## 
                def is_privileged
                    return @is_privileged
                end
                ## 
                ## Sets the isPrivileged property value. The isPrivileged property
                ## @param value Value to set for the isPrivileged property.
                ## @return a void
                ## 
                def is_privileged=(value)
                    @is_privileged = value
                end
                ## 
                ## Gets the name property value. The name property
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name property
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the pod property value. The pod property
                ## @return a kubernetes_pod_evidence
                ## 
                def pod
                    return @pod
                end
                ## 
                ## Sets the pod property value. The pod property
                ## @param value Value to set for the pod property.
                ## @return a void
                ## 
                def pod=(value)
                    @pod = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_primitive_values("args", @args)
                    writer.write_collection_of_primitive_values("command", @command)
                    writer.write_string_value("containerId", @container_id)
                    writer.write_object_value("image", @image)
                    writer.write_boolean_value("isPrivileged", @is_privileged)
                    writer.write_string_value("name", @name)
                    writer.write_object_value("pod", @pod)
                end
            end
        end
    end
end
