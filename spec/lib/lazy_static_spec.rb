require 'spec_helper'

describe LazyStatic do
  describe 'self#check' do
    context 'A Valid check' do
      it 'returns true' do
        expect(LazyStatic.check 5, is_a: Integer).to eq(true)
      end
    end

    context 'An Invalid check' do
      it 'returns true' do
        expect { LazyStatic.check 5, is_a: String }.to raise_error(
          TypeError, "Expected 5 to be String"
        )
      end
    end
  end
end
