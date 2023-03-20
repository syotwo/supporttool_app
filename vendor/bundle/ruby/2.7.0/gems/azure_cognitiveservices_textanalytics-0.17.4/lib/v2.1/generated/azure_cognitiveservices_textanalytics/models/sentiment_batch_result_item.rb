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
    class SentimentBatchResultItem

      include MsRestAzure

      # @return [String] Unique, non-empty document identifier.
      attr_accessor :id

      # @return [Float] A decimal number between 0 and 1 denoting the sentiment
      # of the document. A score above 0.7 usually refers to a positive
      # document while a score below 0.3 normally has a negative connotation.
      # Mid values refer to neutral text.
      attr_accessor :score

      # @return [DocumentStatistics] (Optional) if showStats=true was specified
      # in the request this field will contain information about the document
      # payload.
      attr_accessor :statistics


      #
      # Mapper for SentimentBatchResultItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SentimentBatchResultItem',
          type: {
            name: 'Composite',
            class_name: 'SentimentBatchResultItem',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              score: {
                client_side_validation: true,
                required: false,
                serialized_name: 'score',
                type: {
                  name: 'Double'
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
