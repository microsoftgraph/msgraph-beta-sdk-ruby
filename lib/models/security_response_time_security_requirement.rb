require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securityResponseTimeSecurityRequirement < MicrosoftGraphBeta::Models::Models.partner.securitySecurityRequirement
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The average response time for alerts from the past 30 days.
            @average_response_time_in_hours
            ## 
            ## Gets the averageResponseTimeInHours property value. The average response time for alerts from the past 30 days.
            ## @return a float
            ## 
            def average_response_time_in_hours
                return @average_response_time_in_hours
            end
            ## 
            ## Sets the averageResponseTimeInHours property value. The average response time for alerts from the past 30 days.
            ## @param value Value to set for the averageResponseTimeInHours property.
            ## @return a void
            ## 
            def average_response_time_in_hours=(value)
                @average_response_time_in_hours = value
            end
            ## 
            ## Instantiates a new Models.partner.securityResponseTimeSecurityRequirement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_response_time_security_requirement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securityResponseTimeSecurityRequirement.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "averageResponseTimeInHours" => lambda {|n| @average_response_time_in_hours = n.get_float_value() },
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
                writer.write_float_value("averageResponseTimeInHours", @average_response_time_in_hours)
            end
        end
    end
end
