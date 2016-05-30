class Api::AdvertController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :destroy_session

  def get_advert

    headers['Last-Modified'] = Time.now.httpdate

    ids = params[:categories].split(',')
    @category = Category.where(id: ids).order("RANDOM()").limit(1).last
    @campaign = @category.campaigns.where('count_demonstration > 0').sample
    @creative = @campaign.creatives.sample

    @campaign.count_demonstration -= 1
    @campaign.save

    @stat = Statistic.create(campaign_id: @campaign.id, creative_id: @creative.id, act: 0)
    @json = {
        stat_id: @stat.id,
        image_url: 'https://goupp.herokuapp.com' + @creative.image.url,
        description: @creative.description,
        url: @campaign.url,
        is_img: @creative.image.url == '/images/original/missing.png' ? 0 : 1
    }



    render :json => @json
  end

  def set_stat
    id = params[:id]
    @stat = Statistic.find(id)
    @stat.act= 1
    @stat.save
    render nothing: true
  end

  def destroy_session
    request.session_options[:skip] = true
  end
end
