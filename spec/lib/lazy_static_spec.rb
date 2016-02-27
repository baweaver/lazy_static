require 'spec_helper'

describe LazyStatic do
  describe 'self#check' do
    context 'A Valid check' do
      it 'returns true' do
        expect(LazyStatic.check(5 => Integer)).to be_truthy
      end

      it 'takes multiple checks' do
        expect(LazyStatic.check(5 => Integer, 's' => String)).to be_truthy
      end
    end

    context 'An Invalid check' do
      it 'raises a TypeError' do
        expect { LazyStatic.check(5 => String) }.to raise_error(
          TypeError, "Expected 5 (Fixnum) to be of type String"
        )
      end
    end
  end
end
