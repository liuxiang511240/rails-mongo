module ApplicationHelper
  def page_links_ajax(pages, jq_selector, with_selector=false, options={})
    render :partial => '/common/ajax_page_links',
           :locals => {:pages => pages, :params => params, :jq_selector => jq_selector,
                       :with_selector => with_selector, :options => options}
  end

  def page_links(pages, with_selector=false)
    render :partial => '/common/page_links',
           :locals => {:pages => pages, :params => params, :with_selector => with_selector}
  end

  def page_params(p)
    p||={}
    pa = Hash.new
    p.each { |k, v|
      pa[k] = v if k!='controller'&&k!='page'&&k!='action'
    }
    pa
  end
end
