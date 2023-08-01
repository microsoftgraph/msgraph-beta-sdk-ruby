require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class KubernetesPodEvidence < MicrosoftGraphBeta::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The containers property
                @containers
                ## 
                # The controller property
                @controller
                ## 
                # The ephemeralContainers property
                @ephemeral_containers
                ## 
                # The initContainers property
                @init_containers
                ## 
                # The labels property
                @labels
                ## 
                # The name property
                @name
                ## 
                # The namespace property
                @namespace
                ## 
                # The podIp property
                @pod_ip
                ## 
                # The serviceAccount property
                @service_account
                ## 
                ## Instantiates a new kubernetesPodEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.kubernetesPodEvidence"
                end
                ## 
                ## Gets the containers property value. The containers property
                ## @return a container_evidence
                ## 
                def containers
                    return @containers
                end
                ## 
                ## Sets the containers property value. The containers property
                ## @param value Value to set for the containers property.
                ## @return a void
                ## 
                def containers=(value)
                    @containers = value
                end
                ## 
                ## Gets the controller property value. The controller property
                ## @return a kubernetes_controller_evidence
                ## 
                def controller
                    return @controller
                end
                ## 
                ## Sets the controller property value. The controller property
                ## @param value Value to set for the controller property.
                ## @return a void
                ## 
                def controller=(value)
                    @controller = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a kubernetes_pod_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return KubernetesPodEvidence.new
                end
                ## 
                ## Gets the ephemeralContainers property value. The ephemeralContainers property
                ## @return a container_evidence
                ## 
                def ephemeral_containers
                    return @ephemeral_containers
                end
                ## 
                ## Sets the ephemeralContainers property value. The ephemeralContainers property
                ## @param value Value to set for the ephemeralContainers property.
                ## @return a void
                ## 
                def ephemeral_containers=(value)
                    @ephemeral_containers = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "containers" => lambda {|n| @containers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::ContainerEvidence.create_from_discriminator_value(pn) }) },
                        "controller" => lambda {|n| @controller = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::KubernetesControllerEvidence.create_from_discriminator_value(pn) }) },
                        "ephemeralContainers" => lambda {|n| @ephemeral_containers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::ContainerEvidence.create_from_discriminator_value(pn) }) },
                        "initContainers" => lambda {|n| @init_containers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::ContainerEvidence.create_from_discriminator_value(pn) }) },
                        "labels" => lambda {|n| @labels = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::Dictionary.create_from_discriminator_value(pn) }) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "namespace" => lambda {|n| @namespace = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::KubernetesNamespaceEvidence.create_from_discriminator_value(pn) }) },
                        "podIp" => lambda {|n| @pod_ip = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::IpEvidence.create_from_discriminator_value(pn) }) },
                        "serviceAccount" => lambda {|n| @service_account = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::KubernetesServiceAccountEvidence.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the initContainers property value. The initContainers property
                ## @return a container_evidence
                ## 
                def init_containers
                    return @init_containers
                end
                ## 
                ## Sets the initContainers property value. The initContainers property
                ## @param value Value to set for the initContainers property.
                ## @return a void
                ## 
                def init_containers=(value)
                    @init_containers = value
                end
                ## 
                ## Gets the labels property value. The labels property
                ## @return a dictionary
                ## 
                def labels
                    return @labels
                end
                ## 
                ## Sets the labels property value. The labels property
                ## @param value Value to set for the labels property.
                ## @return a void
                ## 
                def labels=(value)
                    @labels = value
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
                ## Gets the namespace property value. The namespace property
                ## @return a kubernetes_namespace_evidence
                ## 
                def namespace
                    return @namespace
                end
                ## 
                ## Sets the namespace property value. The namespace property
                ## @param value Value to set for the namespace property.
                ## @return a void
                ## 
                def namespace=(value)
                    @namespace = value
                end
                ## 
                ## Gets the podIp property value. The podIp property
                ## @return a ip_evidence
                ## 
                def pod_ip
                    return @pod_ip
                end
                ## 
                ## Sets the podIp property value. The podIp property
                ## @param value Value to set for the podIp property.
                ## @return a void
                ## 
                def pod_ip=(value)
                    @pod_ip = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("containers", @containers)
                    writer.write_object_value("controller", @controller)
                    writer.write_collection_of_object_values("ephemeralContainers", @ephemeral_containers)
                    writer.write_collection_of_object_values("initContainers", @init_containers)
                    writer.write_object_value("labels", @labels)
                    writer.write_string_value("name", @name)
                    writer.write_object_value("namespace", @namespace)
                    writer.write_object_value("podIp", @pod_ip)
                    writer.write_object_value("serviceAccount", @service_account)
                end
                ## 
                ## Gets the serviceAccount property value. The serviceAccount property
                ## @return a kubernetes_service_account_evidence
                ## 
                def service_account
                    return @service_account
                end
                ## 
                ## Sets the serviceAccount property value. The serviceAccount property
                ## @param value Value to set for the serviceAccount property.
                ## @return a void
                ## 
                def service_account=(value)
                    @service_account = value
                end
            end
        end
    end
end
