require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EducationCsvDataProvider < MicrosoftGraphBeta::Models::EducationSynchronizationDataProvider
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Optional customizations to be applied to the synchronization profile.
        @customizations
        ## 
        ## Instantiates a new EducationCsvDataProvider and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.educationCsvDataProvider"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a education_csv_data_provider
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EducationCsvDataProvider.new
        end
        ## 
        ## Gets the customizations property value. Optional customizations to be applied to the synchronization profile.
        ## @return a education_synchronization_customizations
        ## 
        def customizations
            return @customizations
        end
        ## 
        ## Sets the customizations property value. Optional customizations to be applied to the synchronization profile.
        ## @param value Value to set for the customizations property.
        ## @return a void
        ## 
        def customizations=(value)
            @customizations = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "customizations" => lambda {|n| @customizations = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationCustomizations.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("customizations", @customizations)
        end
    end
end
