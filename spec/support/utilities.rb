include ApplicationHelper

#Gets title of page, a Capybara 2.0 hack
def page_title(page)
  page.html.match(/<title>(.*)<\/title>/)[1].to_s
end