require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityRetentionDurationInDays < MicrosoftGraphBeta::Models::SecurityRetentionDuration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the time period in days for which an item with the applied retention label will be retained for.
            @days
            ## 
            ## Instantiates a new securityRetentionDurationInDays and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.retentionDurationInDays"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_retention_duration_in_days
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityRetentionDurationInDays.new
            end
            ## 
            ## Gets the days property value. Specifies the time period in days for which an item with the applied retention label will be retained for.
            ## @return a integer
            ## 
            def days
                return @days
            end
            ## 
            ## Sets the days property value. Specifies the time period in days for which an item with the applied retention label will be retained for.
            ## @param value Value to set for the days property.
            ## @return a void
            ## 
            def days=(value)
                @days = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "days" => lambda {|n| @days = n.get_number_value() },
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
                writer.write_number_value("days", @days)
            end
        end
    end
end
