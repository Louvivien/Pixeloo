module CartsHelper


def set_image(line_item)
      @lineitem_id = line_item.item_id
      @firstitem = Item.find_by id: @lineitem_id   

      if @firstitem.item_image.attached? 
      @cart_image = image_tag(@firstitem.item_image, :class => "img-fluid") 
      else 
      @cart_image = image_tag("item_img.jpg", :alt => "item" , :class => "img-fluid")      
        end
        return @cart_image

      end




end
