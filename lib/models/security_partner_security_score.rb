require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securityPartnerSecurityScore < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The current security score for the partner.
            @current_score
            ## 
            # Contains customer-specific information for certain requirements.
            @customer_insights
            ## 
            # Contains a list of recent score changes.
            @history
            ## 
            # The last time the data was checked.
            @last_refresh_date_time
            ## 
            # The maximum score possible.
            @max_score
            ## 
            # Contains the list of security requirements that make up the score.
            @requirements
            ## 
            # The last time the security score or related properties changed.
            @updated_date_time
            ## 
            ## Instantiates a new Models.partner.securityPartnerSecurityScore and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_partner_security_score
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securityPartnerSecurityScore.new
            end
            ## 
            ## Gets the currentScore property value. The current security score for the partner.
            ## @return a float
            ## 
            def current_score
                return @current_score
            end
            ## 
            ## Sets the currentScore property value. The current security score for the partner.
            ## @param value Value to set for the currentScore property.
            ## @return a void
            ## 
            def current_score=(value)
                @current_score = value
            end
            ## 
            ## Gets the customerInsights property value. Contains customer-specific information for certain requirements.
            ## @return a models.partner.security_customer_insight
            ## 
            def customer_insights
                return @customer_insights
            end
            ## 
            ## Sets the customerInsights property value. Contains customer-specific information for certain requirements.
            ## @param value Value to set for the customerInsights property.
            ## @return a void
            ## 
            def customer_insights=(value)
                @customer_insights = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "currentScore" => lambda {|n| @current_score = n.get_float_value() },
                    "customerInsights" => lambda {|n| @customer_insights = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Models.partner.securityCustomerInsight.create_from_discriminator_value(pn) }) },
                    "history" => lambda {|n| @history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Models.partner.securitySecurityScoreHistory.create_from_discriminator_value(pn) }) },
                    "lastRefreshDateTime" => lambda {|n| @last_refresh_date_time = n.get_date_time_value() },
                    "maxScore" => lambda {|n| @max_score = n.get_float_value() },
                    "requirements" => lambda {|n| @requirements = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Models.partner.securitySecurityRequirement.create_from_discriminator_value(pn) }) },
                    "updatedDateTime" => lambda {|n| @updated_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the history property value. Contains a list of recent score changes.
            ## @return a models.partner.security_security_score_history
            ## 
            def history
                return @history
            end
            ## 
            ## Sets the history property value. Contains a list of recent score changes.
            ## @param value Value to set for the history property.
            ## @return a void
            ## 
            def history=(value)
                @history = value
            end
            ## 
            ## Gets the lastRefreshDateTime property value. The last time the data was checked.
            ## @return a date_time
            ## 
            def last_refresh_date_time
                return @last_refresh_date_time
            end
            ## 
            ## Sets the lastRefreshDateTime property value. The last time the data was checked.
            ## @param value Value to set for the lastRefreshDateTime property.
            ## @return a void
            ## 
            def last_refresh_date_time=(value)
                @last_refresh_date_time = value
            end
            ## 
            ## Gets the maxScore property value. The maximum score possible.
            ## @return a float
            ## 
            def max_score
                return @max_score
            end
            ## 
            ## Sets the maxScore property value. The maximum score possible.
            ## @param value Value to set for the maxScore property.
            ## @return a void
            ## 
            def max_score=(value)
                @max_score = value
            end
            ## 
            ## Gets the requirements property value. Contains the list of security requirements that make up the score.
            ## @return a models.partner.security_security_requirement
            ## 
            def requirements
                return @requirements
            end
            ## 
            ## Sets the requirements property value. Contains the list of security requirements that make up the score.
            ## @param value Value to set for the requirements property.
            ## @return a void
            ## 
            def requirements=(value)
                @requirements = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_float_value("currentScore", @current_score)
                writer.write_collection_of_object_values("customerInsights", @customer_insights)
                writer.write_collection_of_object_values("history", @history)
                writer.write_date_time_value("lastRefreshDateTime", @last_refresh_date_time)
                writer.write_float_value("maxScore", @max_score)
                writer.write_collection_of_object_values("requirements", @requirements)
                writer.write_date_time_value("updatedDateTime", @updated_date_time)
            end
            ## 
            ## Gets the updatedDateTime property value. The last time the security score or related properties changed.
            ## @return a date_time
            ## 
            def updated_date_time
                return @updated_date_time
            end
            ## 
            ## Sets the updatedDateTime property value. The last time the security score or related properties changed.
            ## @param value Value to set for the updatedDateTime property.
            ## @return a void
            ## 
            def updated_date_time=(value)
                @updated_date_time = value
            end
        end
    end
end
