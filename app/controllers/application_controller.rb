class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :validate_search_key, only: [:search]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_is_admin
    if !current_user.admin?
      flash[:warning] = "You are not admin"
      redirect_to "/"
    end
  end

  helper_method :current_cart

  def current_cart
    @current_cart ||= find_cart
  end

   def search
     if @query_string.present?
       search_result = Product.ransack(@search_criteria).result(:distinct => true)
       @products = search_result.paginate(:page => params[:page], :per_page => 5 )
     end
   end

   protected

   def validate_search_key
     @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
     @search_criteria = search_criteria(@query_string)
   end

   def search_criteria(query_string)
     { :title_cont => query_string }
   end

   def configure_permitted_parameters
     added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
     devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
     devise_parameter_sanitizer.permit :account_update, keys: added_attrs<<:current_password
   end
   
  private

  def find_cart
    cart = Cart.find_by(id: session[:cart_id])
    if cart.blank?
      cart = Cart.create
    end
    session[:cart_id] = cart.id
    return cart
  end

end
