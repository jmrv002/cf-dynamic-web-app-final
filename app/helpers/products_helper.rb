module ProductsHelper
  def get_label_for_product_form(product, name, text = '') 
    active = 'active' unless product[name].nil?
    text = name.capitalize if text == ''

    "<label for='product_#{name}' class='#{active}'>#{text}</label>".html_safe
  end

  def get_category_option_for_product_form(product, category)
    selected = 'selected' if product.categories.pluck(:id).include?(category.id)
    
    "<option value='#{category.id}' #{selected} >#{category.name}</option>".html_safe
  end
end
