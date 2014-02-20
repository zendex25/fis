ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    section "Recent Faculties" do
        table_for Faculty.order("updated_at desc").limit(5) do
            column :id do |faculty|
                link_to faculty.id, admin_faculty_path(faculty)
            end
            column :last_name do |faculty|
                link_to faculty.last_name, admin_faculty_path(faculty)
            end
            column :first_name
            column :updated_at
        end
        strong { link_to "View all", admin_faculties_path }
    end


    br

    section "Recently updated content" do
  table_for PaperTrail::Version.order('id desc').limit(20) do # Use PaperTrail::Version if this throws an error
    column "Item Type" do |v| v.item_type end
    column "Item ID" do |v| v.item_id end
    column "Event" do |v| v.event end
    column "Object" do |v| v.changeset end
    column "Modified at" do |v| v.created_at.to_s :short end
    
  end
end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
