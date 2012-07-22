module IdeasHelper
  def style_for_score(score)
    score ||= 3
    %Q{
      font-size: #{100 + (score * 10)}%;
      opacity:  #{0.7 + (score * 0.1)};
    }
  end
end
