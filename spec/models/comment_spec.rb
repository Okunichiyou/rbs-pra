require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#before_validation' do
    let(:comment) { Comment.build(title: title, content: content) }
    let(:title) { 'test' }
    let(:content) { 'test content' }

    before do
      comment.save
    end

    it "title and content with ' (before_validation)' appended" do
      expect(comment.title).to eq("#{title} (before_validation)")
      expect(comment.content).to eq("#{content} (before_validation)")
    end
  end
end
