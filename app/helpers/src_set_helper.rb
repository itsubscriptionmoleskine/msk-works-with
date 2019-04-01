module SrcSetHelper
  def get_src_set(img_url, sizes=[])
    if img_url
      set = ''
      if sizes.length > 0
        index = 1
        sizes.each do |s|
          if index > 1
            img_split = img_url.split('.')
            extension = img_split.pop
            url = img_split.join('.')
            set +=  url + '_' + s.to_s + '.'+ extension + ' ' + s.to_s + 'w'
            if index < sizes.length
              set +=', '
            end
          else
            set += img_url + ', '
          end
          index = index+1
        end
      else
         set = img_url
      end
      return set
    end
  end
end