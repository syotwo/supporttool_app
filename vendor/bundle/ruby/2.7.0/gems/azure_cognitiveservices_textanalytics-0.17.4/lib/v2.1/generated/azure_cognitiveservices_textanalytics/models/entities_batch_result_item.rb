# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::TextAnalytics::V2_1
  module Models
    #
    # Model object.
    #
    #
    class EntitiesBatchResultItem

      include MsRestAzure

      # @return [String] Unique, non-empty document identifier.
      attr_accessor :id

      # @return [Array<EntityRecord>] Recognized entities in the document.
      attr_accessor :entities

      # @return [DocumentStatistics] (Optional) if showStats=true was specified
      # in the request this field will contain information about the document
      # payload.
      attr_accessor :statistics


      #
      # Mapper for EntitiesBatchResultItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntitiesBatchResultItem',
          type: {
            name: 'Composite',
            class_name: 'EntitiesBatchResultItem',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              entities: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'entities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EntityRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityRecord'
                      }
                  }
                }
              },
              statistics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statistics',
                type: {
                  name: 'Composite',
                  class_name: 'DocumentStatistics'
                }
              }
            }
          }
        }
      end
    end
  end
end
