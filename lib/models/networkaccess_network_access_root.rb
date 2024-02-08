require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessNetworkAccessRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Connectivity represents all the connectivity components in Global Secure Access.
            @connectivity
            ## 
            # A filtering policy defines the specific traffic that is allowed or blocked through the Global Secure Access services for a filtering profile.
            @filtering_policies
            ## 
            # A filtering profile associates network access policies with Microsoft Entra ID Conditional Access policies, so that access policies can be applied to users and groups.
            @filtering_profiles
            ## 
            # A forwarding policy defines the specific traffic that is routed through the Global Secure Access Service. It's then added to a forwarding profile.
            @forwarding_policies
            ## 
            # A forwarding profile determines which types of traffic are routed through the Global Secure Access services and which ones are skipped. The handling of specific traffic is determined by the forwarding policies that are added to the forwarding profile.
            @forwarding_profiles
            ## 
            # Represents network connections that are routed through Global Secure Access.
            @logs
            ## 
            # Represents the status of the Global Secure Access services for the tenant.
            @reports
            ## 
            # Global Secure Access settings.
            @settings
            ## 
            # Represents the status of the Global Secure Access services for the tenant.
            @tenant_status
            ## 
            ## Gets the connectivity property value. Connectivity represents all the connectivity components in Global Secure Access.
            ## @return a networkaccess_connectivity
            ## 
            def connectivity
                return @connectivity
            end
            ## 
            ## Sets the connectivity property value. Connectivity represents all the connectivity components in Global Secure Access.
            ## @param value Value to set for the connectivity property.
            ## @return a void
            ## 
            def connectivity=(value)
                @connectivity = value
            end
            ## 
            ## Instantiates a new NetworkaccessNetworkAccessRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_network_access_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessNetworkAccessRoot.new
            end
            ## 
            ## Gets the filteringPolicies property value. A filtering policy defines the specific traffic that is allowed or blocked through the Global Secure Access services for a filtering profile.
            ## @return a networkaccess_filtering_policy
            ## 
            def filtering_policies
                return @filtering_policies
            end
            ## 
            ## Sets the filteringPolicies property value. A filtering policy defines the specific traffic that is allowed or blocked through the Global Secure Access services for a filtering profile.
            ## @param value Value to set for the filteringPolicies property.
            ## @return a void
            ## 
            def filtering_policies=(value)
                @filtering_policies = value
            end
            ## 
            ## Gets the filteringProfiles property value. A filtering profile associates network access policies with Microsoft Entra ID Conditional Access policies, so that access policies can be applied to users and groups.
            ## @return a networkaccess_filtering_profile
            ## 
            def filtering_profiles
                return @filtering_profiles
            end
            ## 
            ## Sets the filteringProfiles property value. A filtering profile associates network access policies with Microsoft Entra ID Conditional Access policies, so that access policies can be applied to users and groups.
            ## @param value Value to set for the filteringProfiles property.
            ## @return a void
            ## 
            def filtering_profiles=(value)
                @filtering_profiles = value
            end
            ## 
            ## Gets the forwardingPolicies property value. A forwarding policy defines the specific traffic that is routed through the Global Secure Access Service. It's then added to a forwarding profile.
            ## @return a networkaccess_forwarding_policy
            ## 
            def forwarding_policies
                return @forwarding_policies
            end
            ## 
            ## Sets the forwardingPolicies property value. A forwarding policy defines the specific traffic that is routed through the Global Secure Access Service. It's then added to a forwarding profile.
            ## @param value Value to set for the forwardingPolicies property.
            ## @return a void
            ## 
            def forwarding_policies=(value)
                @forwarding_policies = value
            end
            ## 
            ## Gets the forwardingProfiles property value. A forwarding profile determines which types of traffic are routed through the Global Secure Access services and which ones are skipped. The handling of specific traffic is determined by the forwarding policies that are added to the forwarding profile.
            ## @return a networkaccess_forwarding_profile
            ## 
            def forwarding_profiles
                return @forwarding_profiles
            end
            ## 
            ## Sets the forwardingProfiles property value. A forwarding profile determines which types of traffic are routed through the Global Secure Access services and which ones are skipped. The handling of specific traffic is determined by the forwarding policies that are added to the forwarding profile.
            ## @param value Value to set for the forwardingProfiles property.
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
                    "connectivity" => lambda {|n| @connectivity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessConnectivity.create_from_discriminator_value(pn) }) },
                    "filteringPolicies" => lambda {|n| @filtering_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessFilteringPolicy.create_from_discriminator_value(pn) }) },
                    "filteringProfiles" => lambda {|n| @filtering_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessFilteringProfile.create_from_discriminator_value(pn) }) },
                    "forwardingPolicies" => lambda {|n| @forwarding_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessForwardingPolicy.create_from_discriminator_value(pn) }) },
                    "forwardingProfiles" => lambda {|n| @forwarding_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessForwardingProfile.create_from_discriminator_value(pn) }) },
                    "logs" => lambda {|n| @logs = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessLogs.create_from_discriminator_value(pn) }) },
                    "reports" => lambda {|n| @reports = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessReports.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessSettings.create_from_discriminator_value(pn) }) },
                    "tenantStatus" => lambda {|n| @tenant_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessTenantStatus.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the logs property value. Represents network connections that are routed through Global Secure Access.
            ## @return a networkaccess_logs
            ## 
            def logs
                return @logs
            end
            ## 
            ## Sets the logs property value. Represents network connections that are routed through Global Secure Access.
            ## @param value Value to set for the logs property.
            ## @return a void
            ## 
            def logs=(value)
                @logs = value
            end
            ## 
            ## Gets the reports property value. Represents the status of the Global Secure Access services for the tenant.
            ## @return a networkaccess_reports
            ## 
            def reports
                return @reports
            end
            ## 
            ## Sets the reports property value. Represents the status of the Global Secure Access services for the tenant.
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
                writer.write_collection_of_object_values("filteringPolicies", @filtering_policies)
                writer.write_collection_of_object_values("filteringProfiles", @filtering_profiles)
                writer.write_collection_of_object_values("forwardingPolicies", @forwarding_policies)
                writer.write_collection_of_object_values("forwardingProfiles", @forwarding_profiles)
                writer.write_object_value("logs", @logs)
                writer.write_object_value("reports", @reports)
                writer.write_object_value("settings", @settings)
                writer.write_object_value("tenantStatus", @tenant_status)
            end
            ## 
            ## Gets the settings property value. Global Secure Access settings.
            ## @return a networkaccess_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. Global Secure Access settings.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the tenantStatus property value. Represents the status of the Global Secure Access services for the tenant.
            ## @return a networkaccess_tenant_status
            ## 
            def tenant_status
                return @tenant_status
            end
            ## 
            ## Sets the tenantStatus property value. Represents the status of the Global Secure Access services for the tenant.
            ## @param value Value to set for the tenantStatus property.
            ## @return a void
            ## 
            def tenant_status=(value)
                @tenant_status = value
            end
        end
    end
end
