require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Constraint that enforces the maximum number of elements a collection
        class DeviceManagementSettingCollectionConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The maximum number of elements in the collection
            @maximum_length
            ## 
            # The minimum number of elements in the collection
            @minimum_length
            ## 
            ## Instantiates a new deviceManagementSettingCollectionConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementSettingCollectionConstraint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_collection_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettingCollectionConstraint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "maximumLength" => lambda {|n| @maximum_length = n.get_number_value() },
                    "minimumLength" => lambda {|n| @minimum_length = n.get_number_value() },
                })
            end
            ## 
            ## Gets the maximumLength property value. The maximum number of elements in the collection
            ## @return a integer
            ## 
            def maximum_length
                return @maximum_length
            end
            ## 
            ## Sets the maximumLength property value. The maximum number of elements in the collection
            ## @param value Value to set for the maximumLength property.
            ## @return a void
            ## 
            def maximum_length=(value)
                @maximum_length = value
            end
            ## 
            ## Gets the minimumLength property value. The minimum number of elements in the collection
            ## @return a integer
            ## 
            def minimum_length
                return @minimum_length
            end
            ## 
            ## Sets the minimumLength property value. The minimum number of elements in the collection
            ## @param value Value to set for the minimumLength property.
            ## @return a void
            ## 
            def minimum_length=(value)
                @minimum_length = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("maximumLength", @maximum_length)
                writer.write_number_value("minimumLength", @minimum_length)
            end
        end
    end
end
