require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class BusinessScenarioProperties
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The identifier for the bucketDefinition configured in the plannerPlanConfiguration for the scenario. The task will be placed in the corresponding plannerBucket in the target plan. Required.
            @external_bucket_id
            ## 
            # The identifier for the context of the task. Context is an application controlled value, and tasks can be queried by their externalContextId. Optional.
            @external_context_id
            ## 
            # Application-specific identifier for the task. Every task for the same scenario must have a unique identifier specified for this property. Required.
            @external_object_id
            ## 
            # Application-specific version of the task. Optional.
            @external_object_version
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The URL to the application-specific experience for this task. Optional.
            @web_url
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new businessScenarioProperties and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a business_scenario_properties
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BusinessScenarioProperties.new
            end
            ## 
            ## Gets the externalBucketId property value. The identifier for the bucketDefinition configured in the plannerPlanConfiguration for the scenario. The task will be placed in the corresponding plannerBucket in the target plan. Required.
            ## @return a string
            ## 
            def external_bucket_id
                return @external_bucket_id
            end
            ## 
            ## Sets the externalBucketId property value. The identifier for the bucketDefinition configured in the plannerPlanConfiguration for the scenario. The task will be placed in the corresponding plannerBucket in the target plan. Required.
            ## @param value Value to set for the externalBucketId property.
            ## @return a void
            ## 
            def external_bucket_id=(value)
                @external_bucket_id = value
            end
            ## 
            ## Gets the externalContextId property value. The identifier for the context of the task. Context is an application controlled value, and tasks can be queried by their externalContextId. Optional.
            ## @return a string
            ## 
            def external_context_id
                return @external_context_id
            end
            ## 
            ## Sets the externalContextId property value. The identifier for the context of the task. Context is an application controlled value, and tasks can be queried by their externalContextId. Optional.
            ## @param value Value to set for the externalContextId property.
            ## @return a void
            ## 
            def external_context_id=(value)
                @external_context_id = value
            end
            ## 
            ## Gets the externalObjectId property value. Application-specific identifier for the task. Every task for the same scenario must have a unique identifier specified for this property. Required.
            ## @return a string
            ## 
            def external_object_id
                return @external_object_id
            end
            ## 
            ## Sets the externalObjectId property value. Application-specific identifier for the task. Every task for the same scenario must have a unique identifier specified for this property. Required.
            ## @param value Value to set for the externalObjectId property.
            ## @return a void
            ## 
            def external_object_id=(value)
                @external_object_id = value
            end
            ## 
            ## Gets the externalObjectVersion property value. Application-specific version of the task. Optional.
            ## @return a string
            ## 
            def external_object_version
                return @external_object_version
            end
            ## 
            ## Sets the externalObjectVersion property value. Application-specific version of the task. Optional.
            ## @param value Value to set for the externalObjectVersion property.
            ## @return a void
            ## 
            def external_object_version=(value)
                @external_object_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "externalBucketId" => lambda {|n| @external_bucket_id = n.get_string_value() },
                    "externalContextId" => lambda {|n| @external_context_id = n.get_string_value() },
                    "externalObjectId" => lambda {|n| @external_object_id = n.get_string_value() },
                    "externalObjectVersion" => lambda {|n| @external_object_version = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("externalBucketId", @external_bucket_id)
                writer.write_string_value("externalContextId", @external_context_id)
                writer.write_string_value("externalObjectId", @external_object_id)
                writer.write_string_value("externalObjectVersion", @external_object_version)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("webUrl", @web_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the webUrl property value. The URL to the application-specific experience for this task. Optional.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. The URL to the application-specific experience for this task. Optional.
            ## @param value Value to set for the webUrl property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
