require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessAlert < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actions property
            @actions
            ## 
            # The alertType property
            @alert_type
            ## 
            # The creationDateTime property
            @creation_date_time
            ## 
            # The description property
            @description
            ## 
            # The detectionTechnology property
            @detection_technology
            ## 
            # The displayName property
            @display_name
            ## 
            # The policy property
            @policy
            ## 
            # The relatedResources property
            @related_resources
            ## 
            # The severity property
            @severity
            ## 
            # The vendorName property
            @vendor_name
            ## 
            ## Gets the actions property value. The actions property
            ## @return a networkaccess_alert_action
            ## 
            def actions
                return @actions
            end
            ## 
            ## Sets the actions property value. The actions property
            ## @param value Value to set for the actions property.
            ## @return a void
            ## 
            def actions=(value)
                @actions = value
            end
            ## 
            ## Gets the alertType property value. The alertType property
            ## @return a networkaccess_alert_type
            ## 
            def alert_type
                return @alert_type
            end
            ## 
            ## Sets the alertType property value. The alertType property
            ## @param value Value to set for the alertType property.
            ## @return a void
            ## 
            def alert_type=(value)
                @alert_type = value
            end
            ## 
            ## Instantiates a new NetworkaccessAlert and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_alert
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessAlert.new
            end
            ## 
            ## Gets the creationDateTime property value. The creationDateTime property
            ## @return a date_time
            ## 
            def creation_date_time
                return @creation_date_time
            end
            ## 
            ## Sets the creationDateTime property value. The creationDateTime property
            ## @param value Value to set for the creationDateTime property.
            ## @return a void
            ## 
            def creation_date_time=(value)
                @creation_date_time = value
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the detectionTechnology property value. The detectionTechnology property
            ## @return a string
            ## 
            def detection_technology
                return @detection_technology
            end
            ## 
            ## Sets the detectionTechnology property value. The detectionTechnology property
            ## @param value Value to set for the detectionTechnology property.
            ## @return a void
            ## 
            def detection_technology=(value)
                @detection_technology = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actions" => lambda {|n| @actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessAlertAction.create_from_discriminator_value(pn) }) },
                    "alertType" => lambda {|n| @alert_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessAlertType) },
                    "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "detectionTechnology" => lambda {|n| @detection_technology = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "policy" => lambda {|n| @policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessFilteringPolicy.create_from_discriminator_value(pn) }) },
                    "relatedResources" => lambda {|n| @related_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessRelatedResource.create_from_discriminator_value(pn) }) },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessThreatSeverity) },
                    "vendorName" => lambda {|n| @vendor_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the policy property value. The policy property
            ## @return a networkaccess_filtering_policy
            ## 
            def policy
                return @policy
            end
            ## 
            ## Sets the policy property value. The policy property
            ## @param value Value to set for the policy property.
            ## @return a void
            ## 
            def policy=(value)
                @policy = value
            end
            ## 
            ## Gets the relatedResources property value. The relatedResources property
            ## @return a networkaccess_related_resource
            ## 
            def related_resources
                return @related_resources
            end
            ## 
            ## Sets the relatedResources property value. The relatedResources property
            ## @param value Value to set for the relatedResources property.
            ## @return a void
            ## 
            def related_resources=(value)
                @related_resources = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("actions", @actions)
                writer.write_enum_value("alertType", @alert_type)
                writer.write_date_time_value("creationDateTime", @creation_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("detectionTechnology", @detection_technology)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("policy", @policy)
                writer.write_collection_of_object_values("relatedResources", @related_resources)
                writer.write_enum_value("severity", @severity)
                writer.write_string_value("vendorName", @vendor_name)
            end
            ## 
            ## Gets the severity property value. The severity property
            ## @return a networkaccess_threat_severity
            ## 
            def severity
                return @severity
            end
            ## 
            ## Sets the severity property value. The severity property
            ## @param value Value to set for the severity property.
            ## @return a void
            ## 
            def severity=(value)
                @severity = value
            end
            ## 
            ## Gets the vendorName property value. The vendorName property
            ## @return a string
            ## 
            def vendor_name
                return @vendor_name
            end
            ## 
            ## Sets the vendorName property value. The vendorName property
            ## @param value Value to set for the vendorName property.
            ## @return a void
            ## 
            def vendor_name=(value)
                @vendor_name = value
            end
        end
    end
end
