require 'mechanize'

class Myspace

  def self.get_next_gig
    begin
    agent = WWW::Mechanize.new
    page = agent.get('http://www.myspace.com/actionhank')
    schedule = page.at('#profile_bandschedule')
    link = schedule.at('a[href*="music.showDetails"]')
    row = link.ancestors('tr').first
    cells = row.search('td')
    content = []
    cells.each do |cell|
      if cell.children.size == 1
        content.push(cell.inner_html) 
      end
    end
    content.join(' ')
    rescue
    end
  end
    
end
