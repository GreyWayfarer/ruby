# frozen_string_literal: true

require '../src/calculation'

describe Calculate do
  describe '.c_to_f' do
    context 'c_to_f method check on correct value.' do
      let(:obj) { Calculate.new }
      it '28' do
        expect(obj.c_to_f(28)).to eq 82.4
      end
      it '35.6' do
        expect(obj.c_to_f(35.6)).to eq 96.08
      end
      it '-342' do
        expect(obj.c_to_f(-342)).to eq(-583.6)
      end
    end
  end
end

describe Calculate do
  describe '.c_to_k' do
    context 'c_to_k method check on correct value.' do
      let(:obj) { Calculate.new }
      it '34' do
        expect(obj.c_to_k(34)).to eq 307.15
      end
      it '34.5' do
        expect(obj.c_to_k(34.5)).to eq 307.65
      end
      it '-38' do
        expect(obj.c_to_k(-38)).to eq 235.15
      end
    end
  end
end

describe Calculate do
  describe '.f_to_c' do
    context 'f_to_c method check on correct value.' do
      let(:obj) { Calculate.new }
      it '65' do
        expect(obj.f_to_c(65)).to eq 18.33
      end
      it '87.32' do
        expect(obj.f_to_c(87.32)).to eq 30.73
      end
      it '-34' do
        expect(obj.f_to_c(-34)).to eq(-36.67)
      end
    end
  end
end

describe Calculate do
  describe '.f_to_k' do
    context 'f_to_k method check on correct value.' do
      let(:obj) { Calculate.new }
      it '24' do
        expect(obj.f_to_k(24)).to eq 268.71
      end
      it '24.12' do
        expect(obj.f_to_k(24.12)).to eq 268.77
      end
      it '-343' do
        expect(obj.f_to_k(-343)).to eq 64.82
      end
    end
  end
end

describe Calculate do
  describe '.k_to_c' do
    context 'k_to_c method check on correct value.' do
      let(:obj) { Calculate.new }
      it '230' do
        expect(obj.k_to_c(230)).to eq(-43.15)
      end
      it '908.32' do
        expect(obj.k_to_c(908.32)).to eq 635.17
      end
      it '-1' do
        expect(obj.k_to_c(-1)).to eq(-274.15)
      end
    end
  end
end

describe Calculate do
  describe '.k_to_f' do
    context 'k_to_f method check on correct value.' do
      let(:obj) { Calculate.new }
      it '1' do
        expect(obj.k_to_f(1)).to eq(-457.87)
      end
      it '1.01' do
        expect(obj.k_to_f(1.01)).to eq(-457.85)
      end
      it '-1' do
        expect(obj.k_to_f(-1)).to eq(-461.47)
      end
    end
  end
end
