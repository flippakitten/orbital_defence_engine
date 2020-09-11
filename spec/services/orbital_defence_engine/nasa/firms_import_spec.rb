# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrbDef::Nasa::FirmsImport, type: :service do

  describe ".all" do
    context 'when request successful' do
      let(:vcr_time) { '2020-06-11 07:51:35 +0100'.to_time }

      it 'creates fires', :vcr do
        create(:detection_type)

        Timecop.freeze(vcr_time) do
          expect{ OrbDef::Nasa::FirmsImport.all }.to change{ OrbDef::Fire.count }.by(7)
        end
      end
    end

    #context 'when request fails', :vcr do
    #  it 'logs an error' do
    #    expect(Rails.logger).to receive(:info).with('Nasa::FirmsImport#all - Failed to fetch')
    #
    #    Nasa::FirmsImport.all
    #  end
    #end
  end
end
