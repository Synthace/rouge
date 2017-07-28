# -*- coding: utf-8 -*- #

describe Rouge::Lexers::Fortran do
  let(:subject) { Rouge::Lexers::Fortran.new }

  include Support::Lexing

  it 'highlights "double precision" and "double" correctly' do
    tokens = subject.lex('double precision :: double').to_a
    assert { tokens.size == 5 }
    assert { tokens.first[0] == Token['Keyword.Type'] }
    assert { tokens.last[0] == Token['Name'] }
  end

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.f90'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-fortran'
    end
  end
end
