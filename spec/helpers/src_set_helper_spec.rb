require 'rails_helper'

RSpec.describe SrcSetHelper, type: :helper do

  it 'does not give a set of images when only one is provided' do
    example_image = FactoryBot.create(:example_image)
    img_url_set = get_src_set(example_image.image_url)
    expect(img_url_set).to equal(example_image.image_url)
  end

  it 'provides an src set of corresponding images' do
    example_image = FactoryBot.create(:example_image)
    img_url_set = get_src_set(example_image.image_url, [1,2,3])
    expect(img_url_set).to eq('https://www.domain.com/image.jpg, https://www.domain.com/image_2.jpg 2w, https://www.domain.com/image_3.jpg 3w')
  end

end
