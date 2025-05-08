require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'callbacks' do
    let(:comment) { Comment.new(title: 'test', content: 'test content') }
    let(:logger) { Rails.logger }

    before do
      allow(Rails.logger).to receive(:info)
    end

    context 'when saving a comment', :aggregate_failures do
      it 'logs all callback messages in correct order' do
        comment.save

        expect(logger).to have_received(:info).with("instance before_save: #{comment}")
        expect(logger).to have_received(:info).with("instance after_validation: #{comment}")
        expect(logger).to have_received(:info).with("instance before_validation: #{comment}")
        expect(logger).to have_received(:info).with("instance before_create: #{comment}")
        expect(logger).to have_received(:info).with("instance after_create: #{comment}")
        expect(logger).to have_received(:info).with("instance around_create: #{comment}")
        expect(logger).to have_received(:info).with("instance around_save: #{comment}")
        expect(logger).to have_received(:info).with("instance after_save: #{comment}")
        expect(logger).to have_received(:info).with("class before_validation: #{comment}")
        expect(logger).to have_received(:info).with("class after_validation: #{comment}")
        expect(logger).to have_received(:info).with("class before_save: #{comment}")
        expect(logger).to have_received(:info).with("class before_create: #{comment}")
        expect(logger).to have_received(:info).with("class after_create: #{comment}")
        expect(logger).to have_received(:info).with("class around_create: #{comment}")
        expect(logger).to have_received(:info).with("class around_save: #{comment}")
        expect(logger).to have_received(:info).with("class after_save: #{comment}")
        expect(logger).to have_received(:info).with("class after_save: #{comment}")
      end
    end
  end
end
