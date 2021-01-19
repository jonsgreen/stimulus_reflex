require "rails_helper"

feature "examples", :js do
  scenario "testing lifecycles" do
    visit root_path
    message = "Let's test reflex lifecycles"
    fill_in("Example", with: message + "\n")

    within("#content") do
      expect(page).to have_content(message)
    end

    within("#lifecycles") do
      expect(page).to have_content("Before Lifecycle With Element: example")
      expect(page).to have_content("Success Lifecycle With Element: example")
      expect(page).to have_content("After Lifecycle With Element: example")
      expect(page).to have_content("Finalize Lifecycle With Element: example")
    end
  end
end
