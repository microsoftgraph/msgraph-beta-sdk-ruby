require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Describes a relationship between two mobile apps.
        class MobileAppRelationship < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The target mobile app's display name.
            @target_display_name
            ## 
            # The target mobile app's display version.
            @target_display_version
            ## 
            # The target mobile app's app id.
            @target_id
            ## 
            # The target mobile app's publisher.
            @target_publisher
            ## 
            # Indicates whether the target of a relationship is the parent or the child in the relationship.
            @target_type
            ## 
            ## Instantiates a new MobileAppRelationship and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_relationship
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.mobileAppDependency"
                            return MobileAppDependency.new
                        when "#microsoft.graph.mobileAppSupersedence"
                            return MobileAppSupersedence.new
                    end
                end
                return MobileAppRelationship.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "targetDisplayName" => lambda {|n| @target_display_name = n.get_string_value() },
                    "targetDisplayVersion" => lambda {|n| @target_display_version = n.get_string_value() },
                    "targetId" => lambda {|n| @target_id = n.get_string_value() },
                    "targetPublisher" => lambda {|n| @target_publisher = n.get_string_value() },
                    "targetType" => lambda {|n| @target_type = n.get_enum_value(MicrosoftGraphBeta::Models::MobileAppRelationshipType) },
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
                writer.write_string_value("targetDisplayName", @target_display_name)
                writer.write_string_value("targetDisplayVersion", @target_display_version)
                writer.write_string_value("targetId", @target_id)
                writer.write_string_value("targetPublisher", @target_publisher)
                writer.write_enum_value("targetType", @target_type)
            end
            ## 
            ## Gets the targetDisplayName property value. The target mobile app's display name.
            ## @return a string
            ## 
            def target_display_name
                return @target_display_name
            end
            ## 
            ## Sets the targetDisplayName property value. The target mobile app's display name.
            ## @param value Value to set for the targetDisplayName property.
            ## @return a void
            ## 
            def target_display_name=(value)
                @target_display_name = value
            end
            ## 
            ## Gets the targetDisplayVersion property value. The target mobile app's display version.
            ## @return a string
            ## 
            def target_display_version
                return @target_display_version
            end
            ## 
            ## Sets the targetDisplayVersion property value. The target mobile app's display version.
            ## @param value Value to set for the targetDisplayVersion property.
            ## @return a void
            ## 
            def target_display_version=(value)
                @target_display_version = value
            end
            ## 
            ## Gets the targetId property value. The target mobile app's app id.
            ## @return a string
            ## 
            def target_id
                return @target_id
            end
            ## 
            ## Sets the targetId property value. The target mobile app's app id.
            ## @param value Value to set for the targetId property.
            ## @return a void
            ## 
            def target_id=(value)
                @target_id = value
            end
            ## 
            ## Gets the targetPublisher property value. The target mobile app's publisher.
            ## @return a string
            ## 
            def target_publisher
                return @target_publisher
            end
            ## 
            ## Sets the targetPublisher property value. The target mobile app's publisher.
            ## @param value Value to set for the targetPublisher property.
            ## @return a void
            ## 
            def target_publisher=(value)
                @target_publisher = value
            end
            ## 
            ## Gets the targetType property value. Indicates whether the target of a relationship is the parent or the child in the relationship.
            ## @return a mobile_app_relationship_type
            ## 
            def target_type
                return @target_type
            end
            ## 
            ## Sets the targetType property value. Indicates whether the target of a relationship is the parent or the child in the relationship.
            ## @param value Value to set for the targetType property.
            ## @return a void
            ## 
            def target_type=(value)
                @target_type = value
            end
        end
    end
end
