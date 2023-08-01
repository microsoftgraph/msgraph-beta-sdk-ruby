require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class KubernetesServiceEvidence < MicrosoftGraphBeta::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The clusterIP property
                @cluster_i_p
                ## 
                # The externalIPs property
                @external_i_ps
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
                # The selector property
                @selector
                ## 
                # The servicePorts property
                @service_ports
                ## 
                # The serviceType property
                @service_type
                ## 
                ## Gets the clusterIP property value. The clusterIP property
                ## @return a ip_evidence
                ## 
                def cluster_i_p
                    return @cluster_i_p
                end
                ## 
                ## Sets the clusterIP property value. The clusterIP property
                ## @param value Value to set for the clusterIP property.
                ## @return a void
                ## 
                def cluster_i_p=(value)
                    @cluster_i_p = value
                end
                ## 
                ## Instantiates a new kubernetesServiceEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.kubernetesServiceEvidence"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a kubernetes_service_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return KubernetesServiceEvidence.new
                end
                ## 
                ## Gets the externalIPs property value. The externalIPs property
                ## @return a ip_evidence
                ## 
                def external_i_ps
                    return @external_i_ps
                end
                ## 
                ## Sets the externalIPs property value. The externalIPs property
                ## @param value Value to set for the externalIPs property.
                ## @return a void
                ## 
                def external_i_ps=(value)
                    @external_i_ps = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "clusterIP" => lambda {|n| @cluster_i_p = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::IpEvidence.create_from_discriminator_value(pn) }) },
                        "externalIPs" => lambda {|n| @external_i_ps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::IpEvidence.create_from_discriminator_value(pn) }) },
                        "labels" => lambda {|n| @labels = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::Dictionary.create_from_discriminator_value(pn) }) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "namespace" => lambda {|n| @namespace = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::KubernetesNamespaceEvidence.create_from_discriminator_value(pn) }) },
                        "selector" => lambda {|n| @selector = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::Dictionary.create_from_discriminator_value(pn) }) },
                        "servicePorts" => lambda {|n| @service_ports = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::KubernetesServicePort.create_from_discriminator_value(pn) }) },
                        "serviceType" => lambda {|n| @service_type = n.get_enum_value(MicrosoftGraphBeta::Models::Security::KubernetesServiceType) },
                    })
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
                ## Gets the selector property value. The selector property
                ## @return a dictionary
                ## 
                def selector
                    return @selector
                end
                ## 
                ## Sets the selector property value. The selector property
                ## @param value Value to set for the selector property.
                ## @return a void
                ## 
                def selector=(value)
                    @selector = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("clusterIP", @cluster_i_p)
                    writer.write_collection_of_object_values("externalIPs", @external_i_ps)
                    writer.write_object_value("labels", @labels)
                    writer.write_string_value("name", @name)
                    writer.write_object_value("namespace", @namespace)
                    writer.write_object_value("selector", @selector)
                    writer.write_collection_of_object_values("servicePorts", @service_ports)
                    writer.write_enum_value("serviceType", @service_type)
                end
                ## 
                ## Gets the servicePorts property value. The servicePorts property
                ## @return a kubernetes_service_port
                ## 
                def service_ports
                    return @service_ports
                end
                ## 
                ## Sets the servicePorts property value. The servicePorts property
                ## @param value Value to set for the servicePorts property.
                ## @return a void
                ## 
                def service_ports=(value)
                    @service_ports = value
                end
                ## 
                ## Gets the serviceType property value. The serviceType property
                ## @return a kubernetes_service_type
                ## 
                def service_type
                    return @service_type
                end
                ## 
                ## Sets the serviceType property value. The serviceType property
                ## @param value Value to set for the serviceType property.
                ## @return a void
                ## 
                def service_type=(value)
                    @service_type = value
                end
            end
        end
    end
end
