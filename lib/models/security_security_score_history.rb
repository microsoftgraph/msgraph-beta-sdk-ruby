require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securitySecurityScoreHistory < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of compliant security requirements at the time.
            @compliant_requirements_count
            ## 
            # The date the history entry was created.
            @created_date_time
            ## 
            # The score recorded at the time.
            @score
            ## 
            # The total number of requirements at the time.
            @total_requirements_count
            ## 
            ## Gets the compliantRequirementsCount property value. The number of compliant security requirements at the time.
            ## @return a int64
            ## 
            def compliant_requirements_count
                return @compliant_requirements_count
            end
            ## 
            ## Sets the compliantRequirementsCount property value. The number of compliant security requirements at the time.
            ## @param value Value to set for the compliantRequirementsCount property.
            ## @return a void
            ## 
            def compliant_requirements_count=(value)
                @compliant_requirements_count = value
            end
            ## 
            ## Instantiates a new Models.partner.securitySecurityScoreHistory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date the history entry was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date the history entry was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_security_score_history
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securitySecurityScoreHistory.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "compliantRequirementsCount" => lambda {|n| @compliant_requirements_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "score" => lambda {|n| @score = n.get_float_value() },
                    "totalRequirementsCount" => lambda {|n| @total_requirements_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the score property value. The score recorded at the time.
            ## @return a float
            ## 
            def score
                return @score
            end
            ## 
            ## Sets the score property value. The score recorded at the time.
            ## @param value Value to set for the score property.
            ## @return a void
            ## 
            def score=(value)
                @score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("compliantRequirementsCount", @compliant_requirements_count)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_float_value("score", @score)
                writer.write_object_value("totalRequirementsCount", @total_requirements_count)
            end
            ## 
            ## Gets the totalRequirementsCount property value. The total number of requirements at the time.
            ## @return a int64
            ## 
            def total_requirements_count
                return @total_requirements_count
            end
            ## 
            ## Sets the totalRequirementsCount property value. The total number of requirements at the time.
            ## @param value Value to set for the totalRequirementsCount property.
            ## @return a void
            ## 
            def total_requirements_count=(value)
                @total_requirements_count = value
            end
        end
    end
end
