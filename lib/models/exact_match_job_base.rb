require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ExactMatchJobBase < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The completionDateTime property
        @completion_date_time
        ## 
        # The creationDateTime property
        @creation_date_time
        ## 
        # The error property
        @error
        ## 
        # The lastUpdatedDateTime property
        @last_updated_date_time
        ## 
        # The startDateTime property
        @start_date_time
        ## 
        ## Gets the completionDateTime property value. The completionDateTime property
        ## @return a date_time
        ## 
        def completion_date_time
            return @completion_date_time
        end
        ## 
        ## Sets the completionDateTime property value. The completionDateTime property
        ## @param value Value to set for the completionDateTime property.
        ## @return a void
        ## 
        def completion_date_time=(value)
            @completion_date_time = value
        end
        ## 
        ## Instantiates a new exactMatchJobBase and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a exact_match_job_base
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.exactMatchLookupJob"
                        return ExactMatchLookupJob.new
                    when "#microsoft.graph.exactMatchSession"
                        return ExactMatchSession.new
                    when "#microsoft.graph.exactMatchSessionBase"
                        return ExactMatchSessionBase.new
                end
            end
            return ExactMatchJobBase.new
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
        ## Gets the error property value. The error property
        ## @return a classification_error
        ## 
        def error
            return @error
        end
        ## 
        ## Sets the error property value. The error property
        ## @param value Value to set for the error property.
        ## @return a void
        ## 
        def error=(value)
            @error = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "completionDateTime" => lambda {|n| @completion_date_time = n.get_date_time_value() },
                "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ClassificationError.create_from_discriminator_value(pn) }) },
                "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
        ## @return a date_time
        ## 
        def last_updated_date_time
            return @last_updated_date_time
        end
        ## 
        ## Sets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
        ## @param value Value to set for the lastUpdatedDateTime property.
        ## @return a void
        ## 
        def last_updated_date_time=(value)
            @last_updated_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("completionDateTime", @completion_date_time)
            writer.write_date_time_value("creationDateTime", @creation_date_time)
            writer.write_object_value("error", @error)
            writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
            writer.write_date_time_value("startDateTime", @start_date_time)
        end
        ## 
        ## Gets the startDateTime property value. The startDateTime property
        ## @return a date_time
        ## 
        def start_date_time
            return @start_date_time
        end
        ## 
        ## Sets the startDateTime property value. The startDateTime property
        ## @param value Value to set for the startDateTime property.
        ## @return a void
        ## 
        def start_date_time=(value)
            @start_date_time = value
        end
    end
end
