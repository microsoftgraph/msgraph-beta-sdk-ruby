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
            # The display name of the app that is the source of the mobile app relationship entity. For example: Orca. Maximum length is 500 characters. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            @source_display_name
            ## 
            # The display version of the app that is the source of the mobile app relationship entity. For example 1.0.12 or 1.2203.156 or 3. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            @source_display_version
            ## 
            # The unique app identifier of the source of the mobile app relationship entity. For example: 2dbc75b9-e993-4e4d-a071-91ac5a218672. If null during relationship creation, then it will be populated with parent Id. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            @source_id
            ## 
            # The publisher display name of the app that is the source of the mobile app relationship entity. For example: Fabrikam. Maximum length is 500 characters. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            @source_publisher_display_name
            ## 
            # The display name of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.
            @target_display_name
            ## 
            # The display version of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.
            @target_display_version
            ## 
            # App ID of the app that is the target of the mobile app relationship entity. Read-Only
            @target_id
            ## 
            # The publisher of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.
            @target_publisher
            ## 
            # The publisher display name of the app that is the target of the mobile app relationship entity. For example: Fabrikam. Maximum length is 500 characters. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            @target_publisher_display_name
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
                    "sourceDisplayName" => lambda {|n| @source_display_name = n.get_string_value() },
                    "sourceDisplayVersion" => lambda {|n| @source_display_version = n.get_string_value() },
                    "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                    "sourcePublisherDisplayName" => lambda {|n| @source_publisher_display_name = n.get_string_value() },
                    "targetDisplayName" => lambda {|n| @target_display_name = n.get_string_value() },
                    "targetDisplayVersion" => lambda {|n| @target_display_version = n.get_string_value() },
                    "targetId" => lambda {|n| @target_id = n.get_string_value() },
                    "targetPublisher" => lambda {|n| @target_publisher = n.get_string_value() },
                    "targetPublisherDisplayName" => lambda {|n| @target_publisher_display_name = n.get_string_value() },
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
                writer.write_string_value("targetId", @target_id)
                writer.write_enum_value("targetType", @target_type)
            end
            ## 
            ## Gets the sourceDisplayName property value. The display name of the app that is the source of the mobile app relationship entity. For example: Orca. Maximum length is 500 characters. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @return a string
            ## 
            def source_display_name
                return @source_display_name
            end
            ## 
            ## Sets the sourceDisplayName property value. The display name of the app that is the source of the mobile app relationship entity. For example: Orca. Maximum length is 500 characters. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @param value Value to set for the sourceDisplayName property.
            ## @return a void
            ## 
            def source_display_name=(value)
                @source_display_name = value
            end
            ## 
            ## Gets the sourceDisplayVersion property value. The display version of the app that is the source of the mobile app relationship entity. For example 1.0.12 or 1.2203.156 or 3. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @return a string
            ## 
            def source_display_version
                return @source_display_version
            end
            ## 
            ## Sets the sourceDisplayVersion property value. The display version of the app that is the source of the mobile app relationship entity. For example 1.0.12 or 1.2203.156 or 3. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @param value Value to set for the sourceDisplayVersion property.
            ## @return a void
            ## 
            def source_display_version=(value)
                @source_display_version = value
            end
            ## 
            ## Gets the sourceId property value. The unique app identifier of the source of the mobile app relationship entity. For example: 2dbc75b9-e993-4e4d-a071-91ac5a218672. If null during relationship creation, then it will be populated with parent Id. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @return a string
            ## 
            def source_id
                return @source_id
            end
            ## 
            ## Sets the sourceId property value. The unique app identifier of the source of the mobile app relationship entity. For example: 2dbc75b9-e993-4e4d-a071-91ac5a218672. If null during relationship creation, then it will be populated with parent Id. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @param value Value to set for the sourceId property.
            ## @return a void
            ## 
            def source_id=(value)
                @source_id = value
            end
            ## 
            ## Gets the sourcePublisherDisplayName property value. The publisher display name of the app that is the source of the mobile app relationship entity. For example: Fabrikam. Maximum length is 500 characters. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @return a string
            ## 
            def source_publisher_display_name
                return @source_publisher_display_name
            end
            ## 
            ## Sets the sourcePublisherDisplayName property value. The publisher display name of the app that is the source of the mobile app relationship entity. For example: Fabrikam. Maximum length is 500 characters. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @param value Value to set for the sourcePublisherDisplayName property.
            ## @return a void
            ## 
            def source_publisher_display_name=(value)
                @source_publisher_display_name = value
            end
            ## 
            ## Gets the targetDisplayName property value. The display name of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.
            ## @return a string
            ## 
            def target_display_name
                return @target_display_name
            end
            ## 
            ## Sets the targetDisplayName property value. The display name of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.
            ## @param value Value to set for the targetDisplayName property.
            ## @return a void
            ## 
            def target_display_name=(value)
                @target_display_name = value
            end
            ## 
            ## Gets the targetDisplayVersion property value. The display version of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.
            ## @return a string
            ## 
            def target_display_version
                return @target_display_version
            end
            ## 
            ## Sets the targetDisplayVersion property value. The display version of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.
            ## @param value Value to set for the targetDisplayVersion property.
            ## @return a void
            ## 
            def target_display_version=(value)
                @target_display_version = value
            end
            ## 
            ## Gets the targetId property value. App ID of the app that is the target of the mobile app relationship entity. Read-Only
            ## @return a string
            ## 
            def target_id
                return @target_id
            end
            ## 
            ## Sets the targetId property value. App ID of the app that is the target of the mobile app relationship entity. Read-Only
            ## @param value Value to set for the targetId property.
            ## @return a void
            ## 
            def target_id=(value)
                @target_id = value
            end
            ## 
            ## Gets the targetPublisher property value. The publisher of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.
            ## @return a string
            ## 
            def target_publisher
                return @target_publisher
            end
            ## 
            ## Sets the targetPublisher property value. The publisher of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only.
            ## @param value Value to set for the targetPublisher property.
            ## @return a void
            ## 
            def target_publisher=(value)
                @target_publisher = value
            end
            ## 
            ## Gets the targetPublisherDisplayName property value. The publisher display name of the app that is the target of the mobile app relationship entity. For example: Fabrikam. Maximum length is 500 characters. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @return a string
            ## 
            def target_publisher_display_name
                return @target_publisher_display_name
            end
            ## 
            ## Sets the targetPublisherDisplayName property value. The publisher display name of the app that is the target of the mobile app relationship entity. For example: Fabrikam. Maximum length is 500 characters. Read-Only. Supports: $select. Does not support $search, $filter, $orderBy. This property is read-only.
            ## @param value Value to set for the targetPublisherDisplayName property.
            ## @return a void
            ## 
            def target_publisher_display_name=(value)
                @target_publisher_display_name = value
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
