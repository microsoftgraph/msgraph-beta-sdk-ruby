require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securityPartnerSecurity < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The security alerts or a vulnerability of a CSP partner's customer that the partner must be made aware of for further action.
            @security_alerts
            ## 
            ## Instantiates a new Models.partner.securityPartnerSecurity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_partner_security
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securityPartnerSecurity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "securityAlerts" => lambda {|n| @security_alerts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Models.partner.securityPartnerSecurityAlert.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the securityAlerts property value. The security alerts or a vulnerability of a CSP partner's customer that the partner must be made aware of for further action.
            ## @return a models.partner.security_partner_security_alert
            ## 
            def security_alerts
                return @security_alerts
            end
            ## 
            ## Sets the securityAlerts property value. The security alerts or a vulnerability of a CSP partner's customer that the partner must be made aware of for further action.
            ## @param value Value to set for the securityAlerts property.
            ## @return a void
            ## 
            def security_alerts=(value)
                @security_alerts = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("securityAlerts", @security_alerts)
            end
        end
    end
end
