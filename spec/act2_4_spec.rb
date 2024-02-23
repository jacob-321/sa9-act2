require 'act2_4'

RSpec.describe BankAccount do

  let(:bank_acc) { BankAccount.new(500) }

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      bank_acc.deposit(100)
      expect(bank_acc.balance).to eq(600)
    end
  end

  describe "#withdraw" do
    context "with sufficient funds" do
      it "decreases the balance by the withdrawal amount" do
        bank_acc.withdraw(50)
        expect(bank_acc.balance).to eq(450)
      end
    end

    context "with insufficient funds" do
      it "does not change the balance" do
        bank_acc.withdraw(501)
        expect(bank_acc.balance).to eq(500)
      end
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      expect(bank_acc.balance).to eq(500)
    end
  end
end
