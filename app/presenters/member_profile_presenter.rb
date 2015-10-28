class MemberProfilePresenter < BasePresenter
  presents :member_profile

  def email
    member_profile.email
  end

  def profile_link
    h.link_to email, h.member_area_member_profile_path, id: "member-profile"
  end

  def edit_profile_link
    h.link_to "Edit Profile", h.edit_member_area_member_profile_path, id: "edit-member-profile"
  end

  def basic_information_link
    if has_basic_information?
      h.link_to "About You", h.edit_member_area_basic_information_path
    else
      h.link_to "About You", h.new_member_area_basic_information_path
    end
  end

  def work_eligibility_link
    if has_work_eligibility?
      h.link_to "Eligibility To Work", h.edit_member_area_work_eligibility_path
    else
      h.link_to "Eligibility To Work", h.new_member_area_work_eligibility_path
    end
  end

  def addresses_link
    h.link_to "Address History", h.member_area_member_addresses_path
  end

  private

  def has_basic_information?
    basic_information.present?
  end

  def basic_information
    member_profile.basic_information
  end

  def has_work_eligibility?
    work_eligibility.present?
  end

  def work_eligibility
    member_profile.work_eligibility
  end
end