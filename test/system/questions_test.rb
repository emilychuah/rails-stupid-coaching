require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase

  test "visiting /ask renders the form" do
    # Go to the /ask page
    visit ask_url
    # Make sure the page got rendered and we can read Ask your coach anything
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying nothing makes the coach respond that he can't hear you" do
    visit ask_url
    fill_in "question", with: ""
    click_on "Ask"

    assert_text "I can't hear you!"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking a question to the coach yields a grumpy comment" do
    visit ask_url
    fill_in "question", with: "How are you?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "telling the coach we are going to work makes him happy" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end
end
