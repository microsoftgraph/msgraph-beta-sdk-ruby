require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DataClassificationService < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The classifyFileJobs property
            @classify_file_jobs
            ## 
            # The classifyTextJobs property
            @classify_text_jobs
            ## 
            # The evaluateDlpPoliciesJobs property
            @evaluate_dlp_policies_jobs
            ## 
            # The evaluateLabelJobs property
            @evaluate_label_jobs
            ## 
            # The exactMatchDataStores property
            @exact_match_data_stores
            ## 
            # The exactMatchUploadAgents property
            @exact_match_upload_agents
            ## 
            # The jobs property
            @jobs
            ## 
            # The sensitiveTypes property
            @sensitive_types
            ## 
            # The sensitivityLabels property
            @sensitivity_labels
            ## 
            ## Gets the classifyFileJobs property value. The classifyFileJobs property
            ## @return a job_response_base
            ## 
            def classify_file_jobs
                return @classify_file_jobs
            end
            ## 
            ## Sets the classifyFileJobs property value. The classifyFileJobs property
            ## @param value Value to set for the classify_file_jobs property.
            ## @return a void
            ## 
            def classify_file_jobs=(value)
                @classify_file_jobs = value
            end
            ## 
            ## Gets the classifyTextJobs property value. The classifyTextJobs property
            ## @return a job_response_base
            ## 
            def classify_text_jobs
                return @classify_text_jobs
            end
            ## 
            ## Sets the classifyTextJobs property value. The classifyTextJobs property
            ## @param value Value to set for the classify_text_jobs property.
            ## @return a void
            ## 
            def classify_text_jobs=(value)
                @classify_text_jobs = value
            end
            ## 
            ## Instantiates a new dataClassificationService and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a data_classification_service
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DataClassificationService.new
            end
            ## 
            ## Gets the evaluateDlpPoliciesJobs property value. The evaluateDlpPoliciesJobs property
            ## @return a job_response_base
            ## 
            def evaluate_dlp_policies_jobs
                return @evaluate_dlp_policies_jobs
            end
            ## 
            ## Sets the evaluateDlpPoliciesJobs property value. The evaluateDlpPoliciesJobs property
            ## @param value Value to set for the evaluate_dlp_policies_jobs property.
            ## @return a void
            ## 
            def evaluate_dlp_policies_jobs=(value)
                @evaluate_dlp_policies_jobs = value
            end
            ## 
            ## Gets the evaluateLabelJobs property value. The evaluateLabelJobs property
            ## @return a job_response_base
            ## 
            def evaluate_label_jobs
                return @evaluate_label_jobs
            end
            ## 
            ## Sets the evaluateLabelJobs property value. The evaluateLabelJobs property
            ## @param value Value to set for the evaluate_label_jobs property.
            ## @return a void
            ## 
            def evaluate_label_jobs=(value)
                @evaluate_label_jobs = value
            end
            ## 
            ## Gets the exactMatchDataStores property value. The exactMatchDataStores property
            ## @return a exact_match_data_store
            ## 
            def exact_match_data_stores
                return @exact_match_data_stores
            end
            ## 
            ## Sets the exactMatchDataStores property value. The exactMatchDataStores property
            ## @param value Value to set for the exact_match_data_stores property.
            ## @return a void
            ## 
            def exact_match_data_stores=(value)
                @exact_match_data_stores = value
            end
            ## 
            ## Gets the exactMatchUploadAgents property value. The exactMatchUploadAgents property
            ## @return a exact_match_upload_agent
            ## 
            def exact_match_upload_agents
                return @exact_match_upload_agents
            end
            ## 
            ## Sets the exactMatchUploadAgents property value. The exactMatchUploadAgents property
            ## @param value Value to set for the exact_match_upload_agents property.
            ## @return a void
            ## 
            def exact_match_upload_agents=(value)
                @exact_match_upload_agents = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "classifyFileJobs" => lambda {|n| @classify_file_jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::JobResponseBase.create_from_discriminator_value(pn) }) },
                    "classifyTextJobs" => lambda {|n| @classify_text_jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::JobResponseBase.create_from_discriminator_value(pn) }) },
                    "evaluateDlpPoliciesJobs" => lambda {|n| @evaluate_dlp_policies_jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::JobResponseBase.create_from_discriminator_value(pn) }) },
                    "evaluateLabelJobs" => lambda {|n| @evaluate_label_jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::JobResponseBase.create_from_discriminator_value(pn) }) },
                    "exactMatchDataStores" => lambda {|n| @exact_match_data_stores = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExactMatchDataStore.create_from_discriminator_value(pn) }) },
                    "exactMatchUploadAgents" => lambda {|n| @exact_match_upload_agents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExactMatchUploadAgent.create_from_discriminator_value(pn) }) },
                    "jobs" => lambda {|n| @jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::JobResponseBase.create_from_discriminator_value(pn) }) },
                    "sensitiveTypes" => lambda {|n| @sensitive_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SensitiveType.create_from_discriminator_value(pn) }) },
                    "sensitivityLabels" => lambda {|n| @sensitivity_labels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SensitivityLabel.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the jobs property value. The jobs property
            ## @return a job_response_base
            ## 
            def jobs
                return @jobs
            end
            ## 
            ## Sets the jobs property value. The jobs property
            ## @param value Value to set for the jobs property.
            ## @return a void
            ## 
            def jobs=(value)
                @jobs = value
            end
            ## 
            ## Gets the sensitiveTypes property value. The sensitiveTypes property
            ## @return a sensitive_type
            ## 
            def sensitive_types
                return @sensitive_types
            end
            ## 
            ## Sets the sensitiveTypes property value. The sensitiveTypes property
            ## @param value Value to set for the sensitive_types property.
            ## @return a void
            ## 
            def sensitive_types=(value)
                @sensitive_types = value
            end
            ## 
            ## Gets the sensitivityLabels property value. The sensitivityLabels property
            ## @return a sensitivity_label
            ## 
            def sensitivity_labels
                return @sensitivity_labels
            end
            ## 
            ## Sets the sensitivityLabels property value. The sensitivityLabels property
            ## @param value Value to set for the sensitivity_labels property.
            ## @return a void
            ## 
            def sensitivity_labels=(value)
                @sensitivity_labels = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("classifyFileJobs", @classify_file_jobs)
                writer.write_collection_of_object_values("classifyTextJobs", @classify_text_jobs)
                writer.write_collection_of_object_values("evaluateDlpPoliciesJobs", @evaluate_dlp_policies_jobs)
                writer.write_collection_of_object_values("evaluateLabelJobs", @evaluate_label_jobs)
                writer.write_collection_of_object_values("exactMatchDataStores", @exact_match_data_stores)
                writer.write_collection_of_object_values("exactMatchUploadAgents", @exact_match_upload_agents)
                writer.write_collection_of_object_values("jobs", @jobs)
                writer.write_collection_of_object_values("sensitiveTypes", @sensitive_types)
                writer.write_collection_of_object_values("sensitivityLabels", @sensitivity_labels)
            end
        end
    end
end
