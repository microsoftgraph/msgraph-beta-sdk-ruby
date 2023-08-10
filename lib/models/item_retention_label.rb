require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ItemRetentionLabel < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The isLabelAppliedExplicitly property
            @is_label_applied_explicitly
            ## 
            # The labelAppliedBy property
            @label_applied_by
            ## 
            # The labelAppliedDateTime property
            @label_applied_date_time
            ## 
            # The name property
            @name
            ## 
            # The retentionSettings property
            @retention_settings
            ## 
            ## Instantiates a new itemRetentionLabel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a item_retention_label
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemRetentionLabel.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isLabelAppliedExplicitly" => lambda {|n| @is_label_applied_explicitly = n.get_boolean_value() },
                    "labelAppliedBy" => lambda {|n| @label_applied_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "labelAppliedDateTime" => lambda {|n| @label_applied_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "retentionSettings" => lambda {|n| @retention_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RetentionLabelSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isLabelAppliedExplicitly property value. The isLabelAppliedExplicitly property
            ## @return a boolean
            ## 
            def is_label_applied_explicitly
                return @is_label_applied_explicitly
            end
            ## 
            ## Sets the isLabelAppliedExplicitly property value. The isLabelAppliedExplicitly property
            ## @param value Value to set for the isLabelAppliedExplicitly property.
            ## @return a void
            ## 
            def is_label_applied_explicitly=(value)
                @is_label_applied_explicitly = value
            end
            ## 
            ## Gets the labelAppliedBy property value. The labelAppliedBy property
            ## @return a identity_set
            ## 
            def label_applied_by
                return @label_applied_by
            end
            ## 
            ## Sets the labelAppliedBy property value. The labelAppliedBy property
            ## @param value Value to set for the labelAppliedBy property.
            ## @return a void
            ## 
            def label_applied_by=(value)
                @label_applied_by = value
            end
            ## 
            ## Gets the labelAppliedDateTime property value. The labelAppliedDateTime property
            ## @return a date_time
            ## 
            def label_applied_date_time
                return @label_applied_date_time
            end
            ## 
            ## Sets the labelAppliedDateTime property value. The labelAppliedDateTime property
            ## @param value Value to set for the labelAppliedDateTime property.
            ## @return a void
            ## 
            def label_applied_date_time=(value)
                @label_applied_date_time = value
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the retentionSettings property value. The retentionSettings property
            ## @return a retention_label_settings
            ## 
            def retention_settings
                return @retention_settings
            end
            ## 
            ## Sets the retentionSettings property value. The retentionSettings property
            ## @param value Value to set for the retentionSettings property.
            ## @return a void
            ## 
            def retention_settings=(value)
                @retention_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isLabelAppliedExplicitly", @is_label_applied_explicitly)
                writer.write_object_value("labelAppliedBy", @label_applied_by)
                writer.write_date_time_value("labelAppliedDateTime", @label_applied_date_time)
                writer.write_string_value("name", @name)
                writer.write_object_value("retentionSettings", @retention_settings)
            end
        end
    end
end
