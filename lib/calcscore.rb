require 'pp'
require 'open-uri'
require 'rubygems'
require 'nokogiri'

class CalcScore
    attr_accessor :word1
    attr_accessor :word2
    def initialize(w1, w2, options = {})
        @word1 = w1
        @word2 = w2
        @score = nil
    end

    def score 
      unless @score
        @score = recalc
      end  
      @score
    end

private
    BASE_URL = 'http://www.google.com/search?'
    def recalc
        parameters = {
            :hr => 'ja',
            :lr => 'lang_ja',
            :ie => 'utf-8',
            :oe => 'utf-8',
            :num => "10",
            :start => "0",
        }
        param_string = (
            parameters.collect{|key, val|
                "#{key}=#{CGI::escape(val)}"
            }
        ).join('&') + "&q=#{CGI::escape(@word1)}+#{CGI::escape(@word2)}"
        uri = BASE_URL + param_string
        doc = Nokogiri::HTML.parse(open(uri))
        stat = doc.xpath('//div[@id="resultStats"]').text
        puts stat
        match = stat.match(/About ([\d,]+) results/)
        num = "0"
        if match 
            num = match[1].gsub(/,/, '').to_i
        end
        num.to_i
    end
end

if __FILE__ == $0 then
  word1 = ARGV.shift
  word2 = ARGV.shift
  cs = CalcScore.new(word1, word2)
  puts cs.score
end

