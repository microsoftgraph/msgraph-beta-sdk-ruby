require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PermissionsAnalytics < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The output of the permissions usage data analysis performed by Permissions Management to assess risk with identities and resources.
            @findings
            ## 
            # Represents the Permissions Creep Index (PCI) for the authorization system. PCI distribution chart shows the classification of human and nonhuman identities based on the PCI score in three buckets (low, medium, high).
            @permissions_creep_index_distributions
            ## 
            ## Instantiates a new PermissionsAnalytics and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a permissions_analytics
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionsAnalytics.new
            end
            ## 
            ## Gets the findings property value. The output of the permissions usage data analysis performed by Permissions Management to assess risk with identities and resources.
            ## @return a finding
            ## 
            def findings
                return @findings
            end
            ## 
            ## Sets the findings property value. The output of the permissions usage data analysis performed by Permissions Management to assess risk with identities and resources.
            ## @param value Value to set for the findings property.
            ## @return a void
            ## 
            def findings=(value)
                @findings = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "findings" => lambda {|n| @findings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Finding.create_from_discriminator_value(pn) }) },
                    "permissionsCreepIndexDistributions" => lambda {|n| @permissions_creep_index_distributions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsCreepIndexDistribution.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the permissionsCreepIndexDistributions property value. Represents the Permissions Creep Index (PCI) for the authorization system. PCI distribution chart shows the classification of human and nonhuman identities based on the PCI score in three buckets (low, medium, high).
            ## @return a permissions_creep_index_distribution
            ## 
            def permissions_creep_index_distributions
                return @permissions_creep_index_distributions
            end
            ## 
            ## Sets the permissionsCreepIndexDistributions property value. Represents the Permissions Creep Index (PCI) for the authorization system. PCI distribution chart shows the classification of human and nonhuman identities based on the PCI score in three buckets (low, medium, high).
            ## @param value Value to set for the permissionsCreepIndexDistributions property.
            ## @return a void
            ## 
            def permissions_creep_index_distributions=(value)
                @permissions_creep_index_distributions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("findings", @findings)
                writer.write_collection_of_object_values("permissionsCreepIndexDistributions", @permissions_creep_index_distributions)
            end
        end
    end
end
