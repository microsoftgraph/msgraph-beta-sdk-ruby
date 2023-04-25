require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RiskyServicePrincipalHistoryItem < MicrosoftGraphBeta::Models::RiskyServicePrincipal
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activity related to service principal risk level change.
            @activity
            ## 
            # The identifier of the actor of the operation.
            @initiated_by
            ## 
            # The identifier of the service principal.
            @service_principal_id
            ## 
            ## Gets the activity property value. The activity related to service principal risk level change.
            ## @return a risk_service_principal_activity
            ## 
            def activity
                return @activity
            end
            ## 
            ## Sets the activity property value. The activity related to service principal risk level change.
            ## @param value Value to set for the activity property.
            ## @return a void
            ## 
            def activity=(value)
                @activity = value
            end
            ## 
            ## Instantiates a new riskyServicePrincipalHistoryItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a risky_service_principal_history_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RiskyServicePrincipalHistoryItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activity" => lambda {|n| @activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RiskServicePrincipalActivity.create_from_discriminator_value(pn) }) },
                    "initiatedBy" => lambda {|n| @initiated_by = n.get_string_value() },
                    "servicePrincipalId" => lambda {|n| @service_principal_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the initiatedBy property value. The identifier of the actor of the operation.
            ## @return a string
            ## 
            def initiated_by
                return @initiated_by
            end
            ## 
            ## Sets the initiatedBy property value. The identifier of the actor of the operation.
            ## @param value Value to set for the initiated_by property.
            ## @return a void
            ## 
            def initiated_by=(value)
                @initiated_by = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("activity", @activity)
                writer.write_string_value("initiatedBy", @initiated_by)
                writer.write_string_value("servicePrincipalId", @service_principal_id)
            end
            ## 
            ## Gets the servicePrincipalId property value. The identifier of the service principal.
            ## @return a string
            ## 
            def service_principal_id
                return @service_principal_id
            end
            ## 
            ## Sets the servicePrincipalId property value. The identifier of the service principal.
            ## @param value Value to set for the service_principal_id property.
            ## @return a void
            ## 
            def service_principal_id=(value)
                @service_principal_id = value
            end
        end
    end
end
