# -*- coding: utf-8 -*- #

describe Rouge::Lexers::Antha do
  let(:subject) { Rouge::Lexers::Antha.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.an'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-antha'
      assert_guess :mimetype => 'application/x-antha'
    end
  end
end

