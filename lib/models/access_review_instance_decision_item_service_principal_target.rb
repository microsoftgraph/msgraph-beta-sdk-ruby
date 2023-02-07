require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AccessReviewInstanceDecisionItemServicePrincipalTarget < MicrosoftGraphBeta::Models::AccessReviewInstanceDecisionItemTarget
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The appId for the service principal entity being reviewed.
        @app_id
        ## 
        # The display name of the service principal whose access is being reviewed.
        @service_principal_display_name
        ## 
        # The servicePrincipalId property
        @service_principal_id
        ## 
        ## Gets the appId property value. The appId for the service principal entity being reviewed.
        ## @return a string
        ## 
        def app_id
            return @app_id
        end
        ## 
        ## Sets the appId property value. The appId for the service principal entity being reviewed.
        ## @param value Value to set for the app_id property.
        ## @return a void
        ## 
        def app_id=(value)
            @app_id = value
        end
        ## 
        ## Instantiates a new AccessReviewInstanceDecisionItemServicePrincipalTarget and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.accessReviewInstanceDecisionItemServicePrincipalTarget"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_review_instance_decision_item_service_principal_target
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AccessReviewInstanceDecisionItemServicePrincipalTarget.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appId" => lambda {|n| @app_id = n.get_string_value() },
                "servicePrincipalDisplayName" => lambda {|n| @service_principal_display_name = n.get_string_value() },
                "servicePrincipalId" => lambda {|n| @service_principal_id = n.get_string_value() },
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
            writer.write_string_value("appId", @app_id)
            writer.write_string_value("servicePrincipalDisplayName", @service_principal_display_name)
            writer.write_string_value("servicePrincipalId", @service_principal_id)
        end
        ## 
        ## Gets the servicePrincipalDisplayName property value. The display name of the service principal whose access is being reviewed.
        ## @return a string
        ## 
        def service_principal_display_name
            return @service_principal_display_name
        end
        ## 
        ## Sets the servicePrincipalDisplayName property value. The display name of the service principal whose access is being reviewed.
        ## @param value Value to set for the service_principal_display_name property.
        ## @return a void
        ## 
        def service_principal_display_name=(value)
            @service_principal_display_name = value
        end
        ## 
        ## Gets the servicePrincipalId property value. The servicePrincipalId property
        ## @return a string
        ## 
        def service_principal_id
            return @service_principal_id
        end
        ## 
        ## Sets the servicePrincipalId property value. The servicePrincipalId property
        ## @param value Value to set for the service_principal_id property.
        ## @return a void
        ## 
        def service_principal_id=(value)
            @service_principal_id = value
        end
    end
end
