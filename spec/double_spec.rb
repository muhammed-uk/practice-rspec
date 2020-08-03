RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    #one_way_of_doing
    # stunt_man = double('Mr. Danger',
    #                    fall_off_ladder: 'Ouch',
    #                    light_on_fire: true
    # )
    # expect(stunt_man.fall_off_ladder).to eq('Ouch')
    # expect(stunt_man.light_on_fire).to eq(true)

    #another_way_of_doing
    # stunt_man = double('Mr. Danger')
    # allow(stunt_man).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stunt_man.fall_off_ladder).to eq('Ouch')

    #one_more_way_of_doing
    stunt_man = double('Mr. Danger')
    allow(stunt_man).to receive_messages( fall_off_ladder: 'Ouch', light_on_fire: true )
    expect(stunt_man.fall_off_ladder).to eq('Ouch')
    expect(stunt_man.light_on_fire).to eq(true)
  end
end