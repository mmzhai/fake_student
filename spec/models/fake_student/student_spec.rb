require 'rails_helper'

module Fake
  RSpec.describe Student, type: :model do
    it { should have_db_column(:email).of_type(:string) }
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:school).of_type(:string) }
    it { should have_db_column(:race).of_type(:string) }
    it { should have_db_column(:gender).of_type(:string) }
    it { should have_db_column(:year).of_type(:string) }
  end
end
