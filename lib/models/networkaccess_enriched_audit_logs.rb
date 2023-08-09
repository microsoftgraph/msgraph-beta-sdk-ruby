require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './networkaccess/networkaccess'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessEnrichedAuditLogs < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Exchange Online enriched audit logs settings.
            @exchange
            ## 
            # SharePoint Online enriched audit logs settings.
            @sharepoint
            ## 
            # Teams enriched audit logs settings.
            @teams
            ## 
            ## Instantiates a new enrichedAuditLogs and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_enriched_audit_logs
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessEnrichedAuditLogs.new
            end
            ## 
            ## Gets the exchange property value. Exchange Online enriched audit logs settings.
            ## @return a networkaccess_enriched_audit_logs_settings
            ## 
            def exchange
                return @exchange
            end
            ## 
            ## Sets the exchange property value. Exchange Online enriched audit logs settings.
            ## @param value Value to set for the exchange property.
            ## @return a void
            ## 
            def exchange=(value)
                @exchange = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "exchange" => lambda {|n| @exchange = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessEnrichedAuditLogsSettings.create_from_discriminator_value(pn) }) },
                    "sharepoint" => lambda {|n| @sharepoint = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessEnrichedAuditLogsSettings.create_from_discriminator_value(pn) }) },
                    "teams" => lambda {|n| @teams = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessEnrichedAuditLogsSettings.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("exchange", @exchange)
                writer.write_object_value("sharepoint", @sharepoint)
                writer.write_object_value("teams", @teams)
            end
            ## 
            ## Gets the sharepoint property value. SharePoint Online enriched audit logs settings.
            ## @return a networkaccess_enriched_audit_logs_settings
            ## 
            def sharepoint
                return @sharepoint
            end
            ## 
            ## Sets the sharepoint property value. SharePoint Online enriched audit logs settings.
            ## @param value Value to set for the sharepoint property.
            ## @return a void
            ## 
            def sharepoint=(value)
                @sharepoint = value
            end
            ## 
            ## Gets the teams property value. Teams enriched audit logs settings.
            ## @return a networkaccess_enriched_audit_logs_settings
            ## 
            def teams
                return @teams
            end
            ## 
            ## Sets the teams property value. Teams enriched audit logs settings.
            ## @param value Value to set for the teams property.
            ## @return a void
            ## 
            def teams=(value)
                @teams = value
            end
        end
    end
end
