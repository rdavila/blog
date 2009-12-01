class PostFormatter
  extend TmSyntaxHighlighting::Helper
  extend Haml::Helpers

  def self.format(text)
    text_pieces = text.split(/(<code>|<code lang="[A-Za-z0-9_-]+">|<code lang='[A-Za-z0-9_-]+'>|<\/code>)/)
    in_pre = false
    language = nil
    text_pieces.collect do |piece|
      if piece =~ /^<code( lang=(["'])?(.*)\2)?>$/
        language = $3
        in_pre = true
        nil
      elsif piece == "</code>"
        in_pre = false
        language = nil
        nil
      elsif in_pre
        lang = language ? language : "plain_text"
        preserve(code(piece.strip, :lang => lang))
      else
        textilize(piece)
      end
    end.to_s
  end
end
