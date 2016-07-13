


class Config
  attr_reader :product_page_href_xpath, :bottom_next_button_href_xpath, :general_product_name_xpath, :general_img_href_xpath,
              :product_listing_xpath, :product_name_xpath, :price_xpath, :product_img_xpath, :delivery_xpath,
              :product_code_xpath, :base_url, :headers_csv_file

  def initialize
    @product_page_href_xpath = ".//*[@id='search_result_listings_with_footer_nav']/ul/li/div/div/div[1]/a[1]/@href"
    @bottom_next_button_href_xpath = ".//*[@id='search_result_listings_with_footer_nav']/div/div/ul/li[last()]/a/@href"
    @general_product_name_xpath = ".//*[@id='product_family_heading']/text()"
    @general_img_href_xpath = ".//*[@id='bodyarea']/div[3]/div/div/div[2]/div[1]/a/@href"
    @product_listing_xpath = ".//*[@id='product_listing']/li[contains(@class,'product clearfix')]"
    @product_name_xpath = ".//div[@itemprop='name']/text()"
    @price_xpath = ".//span[@itemprop='price']/text()"
    @product_img_xpath = ".//a[contains(@class,'somebutton photo-view fancybox-thumb')]/@href"
    @delivery_xpath = ".//div/strong[contains(@class,'stock')]/text()[2]"
    @product_code_xpath = ".//strong[@itemprop='sku']/text()"
    @base_url = "https://www.viovet.co.uk"
    @headers_csv_file = {name: "Название", price: "Цена", img: "Изображение", delivery: "Срок доставки", product_code: "Код товара"}
  end
end

config = Config.new
p config.product_page_href_xpath