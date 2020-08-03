class Actor
  def initialize(name)
    @name = name
  end
  def ready?
    sleep 3
    true
  end
  def act
    'I love you babe <3'
  end
  def fall_off_ladder
    'No way!, Call my agent'
  end
  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor
  def initialize(actor)
    @actor = actor
  end
  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
    end
  end
end

# actor = Actor.new('Muhammed')
# movie = Movie.new(actor)
# movie.start_shooting

#Problem: Movie and Actor classes works closely and coupled.
# Inorder to test movie, we need proper actor as well.
# We are going to solve this by Doubles.

RSpec.describe Movie do
  let(:stunt_man) do
    double('Mr. Danger',
           ready?: true,
           act: 'Catch me..',
           fall_off_ladder: 'Lets do it',
           light_on_fire: true
    )
  end
  subject { described_class.new(stunt_man) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      expect(stunt_man).to receive(:ready?)
      expect(stunt_man).to receive(:act)
      expect(stunt_man).to receive(:fall_off_ladder)
      expect(stunt_man).to receive(:light_on_fire)
      subject.start_shooting
    end
  end
end