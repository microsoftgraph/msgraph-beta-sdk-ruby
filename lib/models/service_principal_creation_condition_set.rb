require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServicePrincipalCreationConditionSet < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The applicationIds property
            @application_ids
            ## 
            # The applicationPublisherIds property
            @application_publisher_ids
            ## 
            # The applicationTenantIds property
            @application_tenant_ids
            ## 
            # The applicationsFromVerifiedPublisherOnly property
            @applications_from_verified_publisher_only
            ## 
            # The certifiedApplicationsOnly property
            @certified_applications_only
            ## 
            ## Gets the applicationIds property value. The applicationIds property
            ## @return a string
            ## 
            def application_ids
                return @application_ids
            end
            ## 
            ## Sets the applicationIds property value. The applicationIds property
            ## @param value Value to set for the applicationIds property.
            ## @return a void
            ## 
            def application_ids=(value)
                @application_ids = value
            end
            ## 
            ## Gets the applicationPublisherIds property value. The applicationPublisherIds property
            ## @return a string
            ## 
            def application_publisher_ids
                return @application_publisher_ids
            end
            ## 
            ## Sets the applicationPublisherIds property value. The applicationPublisherIds property
            ## @param value Value to set for the applicationPublisherIds property.
            ## @return a void
            ## 
            def application_publisher_ids=(value)
                @application_publisher_ids = value
            end
            ## 
            ## Gets the applicationTenantIds property value. The applicationTenantIds property
            ## @return a string
            ## 
            def application_tenant_ids
                return @application_tenant_ids
            end
            ## 
            ## Sets the applicationTenantIds property value. The applicationTenantIds property
            ## @param value Value to set for the applicationTenantIds property.
            ## @return a void
            ## 
            def application_tenant_ids=(value)
                @application_tenant_ids = value
            end
            ## 
            ## Gets the applicationsFromVerifiedPublisherOnly property value. The applicationsFromVerifiedPublisherOnly property
            ## @return a boolean
            ## 
            def applications_from_verified_publisher_only
                return @applications_from_verified_publisher_only
            end
            ## 
            ## Sets the applicationsFromVerifiedPublisherOnly property value. The applicationsFromVerifiedPublisherOnly property
            ## @param value Value to set for the applicationsFromVerifiedPublisherOnly property.
            ## @return a void
            ## 
            def applications_from_verified_publisher_only=(value)
                @applications_from_verified_publisher_only = value
            end
            ## 
            ## Gets the certifiedApplicationsOnly property value. The certifiedApplicationsOnly property
            ## @return a boolean
            ## 
            def certified_applications_only
                return @certified_applications_only
            end
            ## 
            ## Sets the certifiedApplicationsOnly property value. The certifiedApplicationsOnly property
            ## @param value Value to set for the certifiedApplicationsOnly property.
            ## @return a void
            ## 
            def certified_applications_only=(value)
                @certified_applications_only = value
            end
            ## 
            ## Instantiates a new servicePrincipalCreationConditionSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_principal_creation_condition_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServicePrincipalCreationConditionSet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationIds" => lambda {|n| @application_ids = n.get_collection_of_primitive_values(String) },
                    "applicationPublisherIds" => lambda {|n| @application_publisher_ids = n.get_collection_of_primitive_values(String) },
                    "applicationTenantIds" => lambda {|n| @application_tenant_ids = n.get_collection_of_primitive_values(String) },
                    "applicationsFromVerifiedPublisherOnly" => lambda {|n| @applications_from_verified_publisher_only = n.get_boolean_value() },
                    "certifiedApplicationsOnly" => lambda {|n| @certified_applications_only = n.get_boolean_value() },
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
                writer.write_collection_of_primitive_values("applicationIds", @application_ids)
                writer.write_collection_of_primitive_values("applicationPublisherIds", @application_publisher_ids)
                writer.write_collection_of_primitive_values("applicationTenantIds", @application_tenant_ids)
                writer.write_boolean_value("applicationsFromVerifiedPublisherOnly", @applications_from_verified_publisher_only)
                writer.write_boolean_value("certifiedApplicationsOnly", @certified_applications_only)
            end
        end
    end
end
