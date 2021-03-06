class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :global_site_settings, :load_objects
  before_action :load_contact, only: :index
  # before_action { raise request.path.to_yaml }

  include AdditionalContentHelper

  def index
    @presented_additional_contents = collection_presenter(AdditionalRow.displayed.positioned)
    @presented_testimonials = collection_presenter(Testimonial.displayed.positioned)
    @presented_clients = collection_presenter(Client.displayed)
    @presented_available_roles = collection_presenter(AvailableRole.displayed)
    @presented_team_members = collection_presenter(TeamMember.displayed.positioned)
    @presented_frequently_asked_questions = collection_presenter(FrequentlyAskedQuestion.ordered.displayed)
    @presented_work_reasons = collection_presenter(WorkReason.positioned.displayed)
    render layout: 'home'
  end

  private

  def load_contact
    return unless params[:contact].present?
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.new_contact(@contact).deliver_now
      redirect_to root_url, notice: 'Thank you for contacting us'
    else
      render :index
    end
  end

  def presenter(object, klass = nil)
    klass ||= "#{object.class}Presenter".constantize if object.present?
    klass.new(object, view_context)
  end

  def collection_presenter(object, klass = nil)
    klass ||= "#{object.first.class}Presenter".constantize if object.present?
    BaseCollectionPresenter.new(collection: object, view_template: view_context, presenter: klass)
  end

  def load_objects
    @header_menu = Optimadmin::Menu.new(name: 'header')
    @footer_menu = Optimadmin::Menu.new(name: 'footer')
    @footer_jobs_menu = Optimadmin::Menu.new(name: 'footer_jobs')
    @footer_homecare_menu = Optimadmin::Menu.new(name: 'footer_homecare')
    @footer_about_menu = Optimadmin::Menu.new(name: 'footer_about')
    @presented_accreditations = collection_presenter(Accreditation.displayed.positioned)
    @contact = Contact.new
  end

  def global_site_settings
    @global_site_settings ||= Optimadmin::SiteSetting.current_environment
  end
  helper_method :global_site_settings

  def contact_params
    params.require(:contact).permit(:name, :message, :email, :phone_number)
  end
end
