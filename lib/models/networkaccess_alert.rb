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
            # The firstImpactedDateTime property
            @first_impacted_date_time
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
            ## Gets the firstImpactedDateTime property value. The firstImpactedDateTime property
            ## @return a date_time
            ## 
            def first_impacted_date_time
                return @first_impacted_date_time
            end
            ## 
            ## Sets the firstImpactedDateTime property value. The firstImpactedDateTime property
            ## @param value Value to set for the firstImpactedDateTime property.
            ## @return a void
            ## 
            def first_impacted_date_time=(value)
                @first_impacted_date_time = value
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
                    "firstImpactedDateTime" => lambda {|n| @first_impacted_date_time = n.get_date_time_value() },
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
                writer.write_collection_of_object_values("actions", @actions)
                writer.write_enum_value("alertType", @alert_type)
                writer.write_date_time_value("creationDateTime", @creation_date_time)
                writer.write_string_value("description", @description)
                writer.write_date_time_value("firstImpactedDateTime", @first_impacted_date_time)
            end
        end
    end
end
