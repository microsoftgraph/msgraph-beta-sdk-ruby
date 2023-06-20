require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class NetworkAccessRoot < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The connectivity property
                @connectivity
                ## 
                # The forwardingPolicies property
                @forwarding_policies
                ## 
                # The forwardingProfiles property
                @forwarding_profiles
                ## 
                # The logs property
                @logs
                ## 
                # The reports property
                @reports
                ## 
                # The settings property
                @settings
                ## 
                # The tenantStatus property
                @tenant_status
                ## 
                ## Gets the connectivity property value. The connectivity property
                ## @return a connectivity
                ## 
                def connectivity
                    return @connectivity
                end
                ## 
                ## Sets the connectivity property value. The connectivity property
                ## @param value Value to set for the connectivity property.
                ## @return a void
                ## 
                def connectivity=(value)
                    @connectivity = value
                end
                ## 
                ## Instantiates a new NetworkAccessRoot and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a network_access_root
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return NetworkAccessRoot.new
                end
                ## 
                ## Gets the forwardingPolicies property value. The forwardingPolicies property
                ## @return a forwarding_policy
                ## 
                def forwarding_policies
                    return @forwarding_policies
                end
                ## 
                ## Sets the forwardingPolicies property value. The forwardingPolicies property
                ## @param value Value to set for the forwarding_policies property.
                ## @return a void
                ## 
                def forwarding_policies=(value)
                    @forwarding_policies = value
                end
                ## 
                ## Gets the forwardingProfiles property value. The forwardingProfiles property
                ## @return a forwarding_profile
                ## 
                def forwarding_profiles
                    return @forwarding_profiles
                end
                ## 
                ## Sets the forwardingProfiles property value. The forwardingProfiles property
                ## @param value Value to set for the forwarding_profiles property.
                ## @return a void
                ## 
                def forwarding_profiles=(value)
                    @forwarding_profiles = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "connectivity" => lambda {|n| @connectivity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::Connectivity.create_from_discriminator_value(pn) }) },
                        "forwardingPolicies" => lambda {|n| @forwarding_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::ForwardingPolicy.create_from_discriminator_value(pn) }) },
                        "forwardingProfiles" => lambda {|n| @forwarding_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::ForwardingProfile.create_from_discriminator_value(pn) }) },
                        "logs" => lambda {|n| @logs = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::Logs.create_from_discriminator_value(pn) }) },
                        "reports" => lambda {|n| @reports = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::Reports.create_from_discriminator_value(pn) }) },
                        "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::Settings.create_from_discriminator_value(pn) }) },
                        "tenantStatus" => lambda {|n| @tenant_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::TenantStatus.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the logs property value. The logs property
                ## @return a logs
                ## 
                def logs
                    return @logs
                end
                ## 
                ## Sets the logs property value. The logs property
                ## @param value Value to set for the logs property.
                ## @return a void
                ## 
                def logs=(value)
                    @logs = value
                end
                ## 
                ## Gets the reports property value. The reports property
                ## @return a reports
                ## 
                def reports
                    return @reports
                end
                ## 
                ## Sets the reports property value. The reports property
                ## @param value Value to set for the reports property.
                ## @return a void
                ## 
                def reports=(value)
                    @reports = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("connectivity", @connectivity)
                    writer.write_collection_of_object_values("forwardingPolicies", @forwarding_policies)
                    writer.write_collection_of_object_values("forwardingProfiles", @forwarding_profiles)
                    writer.write_object_value("logs", @logs)
                    writer.write_object_value("reports", @reports)
                    writer.write_object_value("settings", @settings)
                    writer.write_object_value("tenantStatus", @tenant_status)
                end
                ## 
                ## Gets the settings property value. The settings property
                ## @return a settings
                ## 
                def settings
                    return @settings
                end
                ## 
                ## Sets the settings property value. The settings property
                ## @param value Value to set for the settings property.
                ## @return a void
                ## 
                def settings=(value)
                    @settings = value
                end
                ## 
                ## Gets the tenantStatus property value. The tenantStatus property
                ## @return a tenant_status
                ## 
                def tenant_status
                    return @tenant_status
                end
                ## 
                ## Sets the tenantStatus property value. The tenantStatus property
                ## @param value Value to set for the tenant_status property.
                ## @return a void
                ## 
                def tenant_status=(value)
                    @tenant_status = value
                end
            end
        end
    end
end
