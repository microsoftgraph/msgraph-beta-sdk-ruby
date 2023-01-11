require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CustomExtensionHandler < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates which custom workflow extension will be executed at this stage. Nullable. Supports $expand.
        @custom_extension
        ## 
        # Indicates the stage of the access package assignment request workflow when the access package custom extension runs. The possible values are: assignmentRequestCreated, assignmentRequestApproved, assignmentRequestGranted, assignmentRequestRemoved, assignmentFourteenDaysBeforeExpiration, assignmentOneDayBeforeExpiration, unknownFutureValue.
        @stage
        ## 
        ## Instantiates a new customExtensionHandler and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a custom_extension_handler
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CustomExtensionHandler.new
        end
        ## 
        ## Gets the customExtension property value. Indicates which custom workflow extension will be executed at this stage. Nullable. Supports $expand.
        ## @return a custom_access_package_workflow_extension
        ## 
        def custom_extension
            return @custom_extension
        end
        ## 
        ## Sets the customExtension property value. Indicates which custom workflow extension will be executed at this stage. Nullable. Supports $expand.
        ## @param value Value to set for the customExtension property.
        ## @return a void
        ## 
        def custom_extension=(value)
            @custom_extension = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "customExtension" => lambda {|n| @custom_extension = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CustomAccessPackageWorkflowExtension.create_from_discriminator_value(pn) }) },
                "stage" => lambda {|n| @stage = n.get_enum_value(MicrosoftGraphBeta::Models::AccessPackageCustomExtensionStage) },
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
            writer.write_object_value("customExtension", @custom_extension)
            writer.write_enum_value("stage", @stage)
        end
        ## 
        ## Gets the stage property value. Indicates the stage of the access package assignment request workflow when the access package custom extension runs. The possible values are: assignmentRequestCreated, assignmentRequestApproved, assignmentRequestGranted, assignmentRequestRemoved, assignmentFourteenDaysBeforeExpiration, assignmentOneDayBeforeExpiration, unknownFutureValue.
        ## @return a access_package_custom_extension_stage
        ## 
        def stage
            return @stage
        end
        ## 
        ## Sets the stage property value. Indicates the stage of the access package assignment request workflow when the access package custom extension runs. The possible values are: assignmentRequestCreated, assignmentRequestApproved, assignmentRequestGranted, assignmentRequestRemoved, assignmentFourteenDaysBeforeExpiration, assignmentOneDayBeforeExpiration, unknownFutureValue.
        ## @param value Value to set for the stage property.
        ## @return a void
        ## 
        def stage=(value)
            @stage = value
        end
    end
end
