module Cryppo
  module KeyDerivationStrategies
    class KeyDerivationStrategy

      include EncryptionValues::EncryptionKey::Helpers

      def strategy_name
        self.class.name.split('::').last
      end

      def generate_derived_key(key, key_length: 32)
        raise NotImplementedError, 'must implement the `generate_derived_key` method'
      end

      def build_derived_key(key, derived_key_value)
        raise NotImplementedError, 'must implement the `build_derived_key` method.'
      end

      def serialize_artefacts(artefacts)
        raise NotImplementedError, 'must implement the `serialize_artefacts` method.  The method should return a hash with stringified keys.'
      end

      def deserialize_artefacts(payload)
        raise NotImplementedError, 'must implement the `deserialize_artefacts` method.  The method should return a hash with stringified keys.'
      end

    end
  end
end
