require "test_helper"

class RacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @race = races(:one)
  end

  test "should get index" do
    get races_url
    assert_response :success
  end

  test "should get new" do
    get new_race_url
    assert_response :success
  end

  test "should create race" do
    assert_difference('Race.count') do
      post races_url, params: { race: { grandprix_circuit_id: @race.grandprix_circuit_id, p1: @race.p1, p10: @race.p10, p11: @race.p11, p12: @race.p12, p13: @race.p13, p14: @race.p14, p15: @race.p15, p16: @race.p16, p17: @race.p17, p18: @race.p18, p19: @race.p19, p2: @race.p2, p20: @race.p20, p3: @race.p3, p4: @race.p4, p5: @race.p5, p6: @race.p6, p7: @race.p7, p8: @race.p8, p9: @race.p9 } }
    end

    assert_redirected_to race_url(Race.last)
  end

  test "should show race" do
    get race_url(@race)
    assert_response :success
  end

  test "should get edit" do
    get edit_race_url(@race)
    assert_response :success
  end

  test "should update race" do
    patch race_url(@race), params: { race: { grandprix_circuit_id: @race.grandprix_circuit_id, p1: @race.p1, p10: @race.p10, p11: @race.p11, p12: @race.p12, p13: @race.p13, p14: @race.p14, p15: @race.p15, p16: @race.p16, p17: @race.p17, p18: @race.p18, p19: @race.p19, p2: @race.p2, p20: @race.p20, p3: @race.p3, p4: @race.p4, p5: @race.p5, p6: @race.p6, p7: @race.p7, p8: @race.p8, p9: @race.p9 } }
    assert_redirected_to race_url(@race)
  end

  test "should destroy race" do
    assert_difference('Race.count', -1) do
      delete race_url(@race)
    end

    assert_redirected_to races_url
  end
end
