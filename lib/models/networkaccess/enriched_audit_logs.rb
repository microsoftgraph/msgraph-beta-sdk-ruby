require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class EnrichedAuditLogs < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The exchange property
                @exchange
                ## 
                # The sharepoint property
                @sharepoint
                ## 
                # The teams property
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
                ## @return a enriched_audit_logs
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EnrichedAuditLogs.new
                end
                ## 
                ## Gets the exchange property value. The exchange property
                ## @return a enriched_audit_logs_settings
                ## 
                def exchange
                    return @exchange
                end
                ## 
                ## Sets the exchange property value. The exchange property
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
                        "exchange" => lambda {|n| @exchange = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::EnrichedAuditLogsSettings.create_from_discriminator_value(pn) }) },
                        "sharepoint" => lambda {|n| @sharepoint = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::EnrichedAuditLogsSettings.create_from_discriminator_value(pn) }) },
                        "teams" => lambda {|n| @teams = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::EnrichedAuditLogsSettings.create_from_discriminator_value(pn) }) },
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
                ## Gets the sharepoint property value. The sharepoint property
                ## @return a enriched_audit_logs_settings
                ## 
                def sharepoint
                    return @sharepoint
                end
                ## 
                ## Sets the sharepoint property value. The sharepoint property
                ## @param value Value to set for the sharepoint property.
                ## @return a void
                ## 
                def sharepoint=(value)
                    @sharepoint = value
                end
                ## 
                ## Gets the teams property value. The teams property
                ## @return a enriched_audit_logs_settings
                ## 
                def teams
                    return @teams
                end
                ## 
                ## Sets the teams property value. The teams property
                ## @param value Value to set for the teams property.
                ## @return a void
                ## 
                def teams=(value)
                    @teams = value
                end
            end
        end
    end
end
