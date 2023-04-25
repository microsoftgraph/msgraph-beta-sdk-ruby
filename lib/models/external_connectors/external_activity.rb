require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './external_connectors'

module MicrosoftGraphBeta
    module Models
        module ExternalConnectors
            class ExternalActivity < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Represents an identity used to identify who is responsible for the activity.
                @performed_by
                ## 
                # When the particular activity occurred.
                @start_date_time
                ## 
                # The type property
                @type
                ## 
                ## Instantiates a new externalActivity and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a external_activity
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.externalConnectors.externalActivityResult"
                                return ExternalActivityResult.new
                        end
                    end
                    return ExternalActivity.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "performedBy" => lambda {|n| @performed_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ExternalConnectors::Identity.create_from_discriminator_value(pn) }) },
                        "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                        "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::ExternalConnectors::ExternalActivityType) },
                    })
                end
                ## 
                ## Gets the performedBy property value. Represents an identity used to identify who is responsible for the activity.
                ## @return a identity
                ## 
                def performed_by
                    return @performed_by
                end
                ## 
                ## Sets the performedBy property value. Represents an identity used to identify who is responsible for the activity.
                ## @param value Value to set for the performed_by property.
                ## @return a void
                ## 
                def performed_by=(value)
                    @performed_by = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("performedBy", @performed_by)
                    writer.write_date_time_value("startDateTime", @start_date_time)
                    writer.write_enum_value("type", @type)
                end
                ## 
                ## Gets the startDateTime property value. When the particular activity occurred.
                ## @return a date_time
                ## 
                def start_date_time
                    return @start_date_time
                end
                ## 
                ## Sets the startDateTime property value. When the particular activity occurred.
                ## @param value Value to set for the start_date_time property.
                ## @return a void
                ## 
                def start_date_time=(value)
                    @start_date_time = value
                end
                ## 
                ## Gets the type property value. The type property
                ## @return a external_activity_type
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. The type property
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
            end
        end
    end
end
