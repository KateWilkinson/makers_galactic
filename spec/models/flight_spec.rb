require 'rails_helper'

describe Flight, type: :model do
  it { is_expected.to have_many :tickets }
end
