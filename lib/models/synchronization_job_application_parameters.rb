require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SynchronizationJobApplicationParameters
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The identifier of the synchronizationRule to be applied. This rule ID is defined in the schema for a given synchronization job or template.
            @rule_id
            ## 
            # The identifiers of one or more objects to which a synchronizationJob is to be applied.
            @subjects
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new synchronizationJobApplicationParameters and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_job_application_parameters
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationJobApplicationParameters.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "ruleId" => lambda {|n| @rule_id = n.get_string_value() },
                    "subjects" => lambda {|n| @subjects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SynchronizationJobSubject.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the ruleId property value. The identifier of the synchronizationRule to be applied. This rule ID is defined in the schema for a given synchronization job or template.
            ## @return a string
            ## 
            def rule_id
                return @rule_id
            end
            ## 
            ## Sets the ruleId property value. The identifier of the synchronizationRule to be applied. This rule ID is defined in the schema for a given synchronization job or template.
            ## @param value Value to set for the rule_id property.
            ## @return a void
            ## 
            def rule_id=(value)
                @rule_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("ruleId", @rule_id)
                writer.write_collection_of_object_values("subjects", @subjects)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the subjects property value. The identifiers of one or more objects to which a synchronizationJob is to be applied.
            ## @return a synchronization_job_subject
            ## 
            def subjects
                return @subjects
            end
            ## 
            ## Sets the subjects property value. The identifiers of one or more objects to which a synchronizationJob is to be applied.
            ## @param value Value to set for the subjects property.
            ## @return a void
            ## 
            def subjects=(value)
                @subjects = value
            end
        end
    end
end
