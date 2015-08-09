step 'access_index' do
  visit blorgh.articles_path
end

step 'articles' do
  page.find('.articles').set(true)
end
