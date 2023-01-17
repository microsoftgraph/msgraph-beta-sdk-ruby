require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ConnectorGroup < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The applications property
        @applications
        ## 
        # The connectorGroupType property
        @connector_group_type
        ## 
        # Indicates if the connectorGroup is the default connectorGroup. Only a single connector group can be the default connectorGroup and this is pre-set by the system. Read-only.
        @is_default
        ## 
        # The members property
        @members
        ## 
        # The name associated with the connectorGroup.
        @name
        ## 
        # The region the connectorGroup is assigned to and will optimize traffic for. This region can only be set if no connectors or applications are assigned to the connectorGroup. The possible values are: nam (for North America), eur (for Europe), aus (for Australia), asia (for Asia), ind (for India), and unknownFutureValue.
        @region
        ## 
        ## Gets the applications property value. The applications property
        ## @return a application
        ## 
        def applications
            return @applications
        end
        ## 
        ## Sets the applications property value. The applications property
        ## @param value Value to set for the applications property.
        ## @return a void
        ## 
        def applications=(value)
            @applications = value
        end
        ## 
        ## Gets the connectorGroupType property value. The connectorGroupType property
        ## @return a connector_group_type
        ## 
        def connector_group_type
            return @connector_group_type
        end
        ## 
        ## Sets the connectorGroupType property value. The connectorGroupType property
        ## @param value Value to set for the connectorGroupType property.
        ## @return a void
        ## 
        def connector_group_type=(value)
            @connector_group_type = value
        end
        ## 
        ## Instantiates a new connectorGroup and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a connector_group
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ConnectorGroup.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "applications" => lambda {|n| @applications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Application.create_from_discriminator_value(pn) }) },
                "connectorGroupType" => lambda {|n| @connector_group_type = n.get_enum_value(MicrosoftGraphBeta::Models::ConnectorGroupType) },
                "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Connector.create_from_discriminator_value(pn) }) },
                "name" => lambda {|n| @name = n.get_string_value() },
                "region" => lambda {|n| @region = n.get_enum_value(MicrosoftGraphBeta::Models::ConnectorGroupRegion) },
            })
        end
        ## 
        ## Gets the isDefault property value. Indicates if the connectorGroup is the default connectorGroup. Only a single connector group can be the default connectorGroup and this is pre-set by the system. Read-only.
        ## @return a boolean
        ## 
        def is_default
            return @is_default
        end
        ## 
        ## Sets the isDefault property value. Indicates if the connectorGroup is the default connectorGroup. Only a single connector group can be the default connectorGroup and this is pre-set by the system. Read-only.
        ## @param value Value to set for the isDefault property.
        ## @return a void
        ## 
        def is_default=(value)
            @is_default = value
        end
        ## 
        ## Gets the members property value. The members property
        ## @return a connector
        ## 
        def members
            return @members
        end
        ## 
        ## Sets the members property value. The members property
        ## @param value Value to set for the members property.
        ## @return a void
        ## 
        def members=(value)
            @members = value
        end
        ## 
        ## Gets the name property value. The name associated with the connectorGroup.
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. The name associated with the connectorGroup.
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
        end
        ## 
        ## Gets the region property value. The region the connectorGroup is assigned to and will optimize traffic for. This region can only be set if no connectors or applications are assigned to the connectorGroup. The possible values are: nam (for North America), eur (for Europe), aus (for Australia), asia (for Asia), ind (for India), and unknownFutureValue.
        ## @return a connector_group_region
        ## 
        def region
            return @region
        end
        ## 
        ## Sets the region property value. The region the connectorGroup is assigned to and will optimize traffic for. This region can only be set if no connectors or applications are assigned to the connectorGroup. The possible values are: nam (for North America), eur (for Europe), aus (for Australia), asia (for Asia), ind (for India), and unknownFutureValue.
        ## @param value Value to set for the region property.
        ## @return a void
        ## 
        def region=(value)
            @region = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("applications", @applications)
            writer.write_enum_value("connectorGroupType", @connector_group_type)
            writer.write_boolean_value("isDefault", @is_default)
            writer.write_collection_of_object_values("members", @members)
            writer.write_string_value("name", @name)
            writer.write_enum_value("region", @region)
        end
    end
end
