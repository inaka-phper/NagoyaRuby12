require_relative '../lib/parser'
require_relative '../lib/passenger'
require_relative '../lib/pricing'
require_relative '../lib/run'

describe 'バス代' do
  context 'price' do
    example '運賃が正しいこと' do
      expect(Run.new('210:Cn,In,Iw,Ap,Iw').price).to eq 170
      expect(Run.new('220:Cp,In').price).to eq 110
      expect(Run.new('230:Cw,In,Iw').price).to eq 240
      expect(Run.new('240:In,An,In').price).to eq 240
      expect(Run.new('250:In,In,Aw,In').price).to eq 260
      expect(Run.new('260:In,In,In,In,Ap').price).to eq 260
      expect(Run.new('270:In,An,In,In,Ip').price).to eq 410
      expect(Run.new('280:Aw,In,Iw,In').price).to eq 210
      expect(Run.new('200:An').price).to eq 200
      expect(Run.new('210:Iw').price).to eq 60
      expect(Run.new('220:Ap').price).to eq 0
      expect(Run.new('230:Cp').price).to eq 0
      expect(Run.new('240:Cw').price).to eq 60
      expect(Run.new('250:In').price).to eq 130
      expect(Run.new('260:Cn').price).to eq 130
      expect(Run.new('270:Ip').price).to eq 0
      expect(Run.new('280:Aw').price).to eq 140
      expect(Run.new('1480:In,An,In,In,In,Iw,Cp,Cw,In,Aw,In,In,Iw,Cn,Aw,Iw').price).to eq 5920
      expect(Run.new('630:Aw,Cw,Iw,An,An').price).to eq 1740
      expect(Run.new('340:Cn,Cn,Ip,Ap').price).to eq 340
      expect(Run.new('240:Iw,Ap,In,Iw,Aw').price).to eq 120
      expect(Run.new('800:Cw,An,Cn,Aw,Ap').price).to eq 1800
      expect(Run.new('1210:An,Ip,In,Iw,An,Iw,Iw,An,Iw,Iw').price).to eq 3630
      expect(Run.new('530:An,Cw,Cw').price).to eq 810
      expect(Run.new('170:Aw,Iw,Ip').price).to eq 90
      expect(Run.new('150:In,Ip,Ip,Iw,In,Iw,Iw,In,An,Iw,Aw,Cw,Iw,Cw,An,Cp,Iw').price).to eq 580
      expect(Run.new('420:Cn,Cw,Cp').price).to eq 320
      expect(Run.new('690:Cw,In,An,Cp,Cn,In').price).to eq 1220
      expect(Run.new('590:Iw,Iw,Cn,Iw,Aw,In,In,Ip,Iw,Ip,Aw').price).to eq 1200
      expect(Run.new('790:Cw,Cn,Cn').price).to eq 1000
      expect(Run.new('1220:In,In,An,An,In,Iw,Iw,In,In,Ip,In,An,Iw').price).to eq 4590
      expect(Run.new('570:Cw,Cn,Cp').price).to eq 440
      expect(Run.new('310:Cn,Cw,An,An,Iw,Cp,Cw,Cn,Iw').price).to eq 1100
      expect(Run.new('910:Aw,In,Iw,Iw,Iw,Iw,Iw,An,Cw,In').price).to eq 2290
      expect(Run.new('460:Iw,Cw,Cw,Cn').price).to eq 590
      expect(Run.new('240:Iw,Iw,In,Iw,In,In,Cn,In,An').price).to eq 780
      expect(Run.new('1240:In,In,In,Ap,In,Cw,Iw,Iw,Iw,Aw,Cw').price).to eq 2170
      expect(Run.new('1000:Iw,Ip,In,An,In,In,In,An,In,Iw,In,In,Iw,In,Iw,Iw,Iw,An').price).to eq 5500
      expect(Run.new('180:In,Aw,Ip,Iw,In,Aw,In,Iw,Iw,In').price).to eq 330
      expect(Run.new('440:In,Ip,Cp,Aw,Iw,In,An').price).to eq 660
      expect(Run.new('1270:Ap,In,An,Ip,In,Ip,Ip').price).to eq 1270
    end
  end
end