require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GcpRole < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the GCP role. Supports $filter and (eq,contains).
            @display_name
            ## 
            # The ID of the GCP role as defined by GCP. Alternate key.
            @external_id
            ## 
            # The gcpRoleType property
            @gcp_role_type
            ## 
            # Resources that an identity assigned this GCP role can perform actions on. Supports $filter and (eq).
            @scopes
            ## 
            ## Instantiates a new GcpRole and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a gcp_role
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GcpRole.new
            end
            ## 
            ## Gets the displayName property value. The name of the GCP role. Supports $filter and (eq,contains).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the GCP role. Supports $filter and (eq,contains).
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalId property value. The ID of the GCP role as defined by GCP. Alternate key.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The ID of the GCP role as defined by GCP. Alternate key.
            ## @param value Value to set for the externalId property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## Gets the gcpRoleType property value. The gcpRoleType property
            ## @return a gcp_role_type
            ## 
            def gcp_role_type
                return @gcp_role_type
            end
            ## 
            ## Sets the gcpRoleType property value. The gcpRoleType property
            ## @param value Value to set for the gcpRoleType property.
            ## @return a void
            ## 
            def gcp_role_type=(value)
                @gcp_role_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "gcpRoleType" => lambda {|n| @gcp_role_type = n.get_enum_value(MicrosoftGraphBeta::Models::GcpRoleType) },
                    "scopes" => lambda {|n| @scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GcpScope.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the scopes property value. Resources that an identity assigned this GCP role can perform actions on. Supports $filter and (eq).
            ## @return a gcp_scope
            ## 
            def scopes
                return @scopes
            end
            ## 
            ## Sets the scopes property value. Resources that an identity assigned this GCP role can perform actions on. Supports $filter and (eq).
            ## @param value Value to set for the scopes property.
            ## @return a void
            ## 
            def scopes=(value)
                @scopes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("externalId", @external_id)
                writer.write_enum_value("gcpRoleType", @gcp_role_type)
                writer.write_collection_of_object_values("scopes", @scopes)
            end
        end
    end
end
