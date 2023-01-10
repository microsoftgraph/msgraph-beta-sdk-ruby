require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './ediscovery'

module MicrosoftGraphBeta::Models::Ediscovery
    class NoncustodialDataSource < MicrosoftGraphBeta::Models::Ediscovery::DataSourceContainer
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates if hold is applied to non-custodial data source (such as mailbox or site).
        @apply_hold_to_source
        ## 
        # User source or SharePoint site data source as non-custodial data source.
        @data_source
        ## 
        ## Gets the applyHoldToSource property value. Indicates if hold is applied to non-custodial data source (such as mailbox or site).
        ## @return a boolean
        ## 
        def apply_hold_to_source
            return @apply_hold_to_source
        end
        ## 
        ## Sets the applyHoldToSource property value. Indicates if hold is applied to non-custodial data source (such as mailbox or site).
        ## @param value Value to set for the applyHoldToSource property.
        ## @return a void
        ## 
        def apply_hold_to_source=(value)
            @apply_hold_to_source = value
        end
        ## 
        ## Instantiates a new NoncustodialDataSource and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.ediscovery.noncustodialDataSource"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a noncustodial_data_source
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return NoncustodialDataSource.new
        end
        ## 
        ## Gets the dataSource property value. User source or SharePoint site data source as non-custodial data source.
        ## @return a data_source
        ## 
        def data_source
            return @data_source
        end
        ## 
        ## Sets the dataSource property value. User source or SharePoint site data source as non-custodial data source.
        ## @param value Value to set for the dataSource property.
        ## @return a void
        ## 
        def data_source=(value)
            @data_source = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "applyHoldToSource" => lambda {|n| @apply_hold_to_source = n.get_boolean_value() },
                "dataSource" => lambda {|n| @data_source = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::DataSource.create_from_discriminator_value(pn) }) },
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
            writer.write_boolean_value("applyHoldToSource", @apply_hold_to_source)
            writer.write_object_value("dataSource", @data_source)
        end
    end
end
