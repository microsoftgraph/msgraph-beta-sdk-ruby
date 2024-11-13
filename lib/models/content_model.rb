require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ContentModel < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identity of the user, device, or applicationthat created the item. Read-only.
            @created_by
            ## 
            # Date and time of item creation. Read-only.
            @created_date_time
            ## 
            # Identity of the user, device, or application that modified the item. Read-only.
            @last_modified_by
            ## 
            # Date and time of item last modification. Read-only.
            @last_modified_date_time
            ## 
            # The type of the contentModel. The possible values are: teachingMethod, layoutMethod, freeformSelectionMethod, prebuiltContractModel, prebuiltInvoiceModel, prebuiltReceiptModel, unknownFutureValue.
            @model_type
            ## 
            # The name of the contentModel.
            @name
            ## 
            ## Instantiates a new ContentModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity of the user, device, or applicationthat created the item. Read-only.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user, device, or applicationthat created the item. Read-only.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of item creation. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of item creation. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a content_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ContentModel.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "modelType" => lambda {|n| @model_type = n.get_enum_value(MicrosoftGraphBeta::Models::ContentModelType) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user, device, or application that modified the item. Read-only.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user, device, or application that modified the item. Read-only.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time of item last modification. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time of item last modification. Read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the modelType property value. The type of the contentModel. The possible values are: teachingMethod, layoutMethod, freeformSelectionMethod, prebuiltContractModel, prebuiltInvoiceModel, prebuiltReceiptModel, unknownFutureValue.
            ## @return a content_model_type
            ## 
            def model_type
                return @model_type
            end
            ## 
            ## Sets the modelType property value. The type of the contentModel. The possible values are: teachingMethod, layoutMethod, freeformSelectionMethod, prebuiltContractModel, prebuiltInvoiceModel, prebuiltReceiptModel, unknownFutureValue.
            ## @param value Value to set for the modelType property.
            ## @return a void
            ## 
            def model_type=(value)
                @model_type = value
            end
            ## 
            ## Gets the name property value. The name of the contentModel.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the contentModel.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("modelType", @model_type)
                writer.write_string_value("name", @name)
            end
        end
    end
end
