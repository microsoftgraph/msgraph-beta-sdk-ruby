require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessForwardingProfile < MicrosoftGraphBeta::Models::NetworkaccessProfile
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the users, groups, devices, and branch locations whose traffic is associated with the given traffic forwarding profile.
            @associations
            ## 
            # Profile priority.
            @priority
            ## 
            # The servicePrincipal property
            @service_principal
            ## 
            # The trafficForwardingType property
            @traffic_forwarding_type
            ## 
            ## Gets the associations property value. Specifies the users, groups, devices, and branch locations whose traffic is associated with the given traffic forwarding profile.
            ## @return a networkaccess_association
            ## 
            def associations
                return @associations
            end
            ## 
            ## Sets the associations property value. Specifies the users, groups, devices, and branch locations whose traffic is associated with the given traffic forwarding profile.
            ## @param value Value to set for the associations property.
            ## @return a void
            ## 
            def associations=(value)
                @associations = value
            end
            ## 
            ## Instantiates a new NetworkaccessForwardingProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.forwardingProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_forwarding_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessForwardingProfile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "associations" => lambda {|n| @associations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessAssociation.create_from_discriminator_value(pn) }) },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "servicePrincipal" => lambda {|n| @service_principal = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ServicePrincipal.create_from_discriminator_value(pn) }) },
                    "trafficForwardingType" => lambda {|n| @traffic_forwarding_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessTrafficForwardingType) },
                })
            end
            ## 
            ## Gets the priority property value. Profile priority.
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. Profile priority.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("associations", @associations)
                writer.write_number_value("priority", @priority)
                writer.write_object_value("servicePrincipal", @service_principal)
                writer.write_enum_value("trafficForwardingType", @traffic_forwarding_type)
            end
            ## 
            ## Gets the servicePrincipal property value. The servicePrincipal property
            ## @return a service_principal
            ## 
            def service_principal
                return @service_principal
            end
            ## 
            ## Sets the servicePrincipal property value. The servicePrincipal property
            ## @param value Value to set for the servicePrincipal property.
            ## @return a void
            ## 
            def service_principal=(value)
                @service_principal = value
            end
            ## 
            ## Gets the trafficForwardingType property value. The trafficForwardingType property
            ## @return a networkaccess_traffic_forwarding_type
            ## 
            def traffic_forwarding_type
                return @traffic_forwarding_type
            end
            ## 
            ## Sets the trafficForwardingType property value. The trafficForwardingType property
            ## @param value Value to set for the trafficForwardingType property.
            ## @return a void
            ## 
            def traffic_forwarding_type=(value)
                @traffic_forwarding_type = value
            end
        end
    end
end
