require 'spec_helper'

describe Coinable do
  subject { Class.new { extend Coinable } }

  describe 'configuration' do
    context 'not configured' do
      it 'returns default values' do
        expect(subject.host).to eq('localhost')
        expect(subject.port).to eq(8543)
        expect(subject.user).to eq('rpcuser')
        expect(subject.password).to eq('rpcpassword')
      end
    end

    context 'using attribute writer' do
      let(:host) { '123.45.678.9' }
      let(:port) { 1337 }
      let(:user) { 'john' }
      let(:password) { 'swordfish' }

      it 'returns set values' do
        subject.host = host
        subject.port = port
        subject.user = user
        subject.password = password

        expect(subject.host).to eq(host)
        expect(subject.port).to eq(port)
        expect(subject.user).to eq(user)
        expect(subject.password).to eq(password)
      end
    end

    context 'using .configure' do
      let(:host) { '987.65.432.1' }
      let(:port) { 7331 }
      let(:user) { 'jimmy' }
      let(:password) { 'qwerty' }

      it 'returns set values' do
        subject.configure do |config|
          config.host = host
          config.port = port
          config.user = user
          config.password = password
        end

        expect(subject.host).to eq(host)
        expect(subject.port).to eq(port)
        expect(subject.user).to eq(user)
        expect(subject.password).to eq(password)
      end
    end
  end

  describe '.add_multisig_address' do
    it 'raises error' do
      expect { subject.add_multisig_address }.to raise_error(NotImplementedError)
    end
  end

  describe '.add_node' do
    it 'raises error' do
      expect { subject.add_node }.to raise_error(NotImplementedError)
    end
  end

  describe '.backup_wallet' do
    it 'raises error' do
      expect { subject.backup_wallet }.to raise_error(NotImplementedError)
    end
  end

  describe '.create_multisig' do
    it 'raises error' do
      expect { subject.create_multisig }.to raise_error(NotImplementedError)
    end
  end

  describe '.create_raw_transaction' do
    it 'raises error' do
      expect { subject.create_raw_transaction }.to raise_error(NotImplementedError)
    end
  end

  describe '.decode_raw_transaction' do
    it 'raises error' do
      expect { subject.decode_raw_transaction }.to raise_error(NotImplementedError)
    end
  end

  describe '.dump_priv_key' do
    it 'raises error' do
      expect { subject.dump_priv_key }.to raise_error(NotImplementedError)
    end
  end

  describe '.encrypt_wallet' do
    it 'raises error' do
      expect { subject.encrypt_wallet }.to raise_error(NotImplementedError)
    end
  end

  describe '.account' do
    it 'raises error' do
      expect { subject.account }.to raise_error(NotImplementedError)
    end
  end

  describe '.account_address' do
    it 'raises error' do
      expect { subject.account_address }.to raise_error(NotImplementedError)
    end
  end

  describe '.added_node_info' do
    it 'raises error' do
      expect { subject.added_node_info }.to raise_error(NotImplementedError)
    end
  end

  describe '.addresses_by_account' do
    it 'raises error' do
      expect { subject.addresses_by_account }.to raise_error(NotImplementedError)
    end
  end

  describe '.balance' do
    it 'raises error' do
      expect { subject.balance }.to raise_error(NotImplementedError)
    end
  end

  describe '.best_block_hash' do
    it 'raises error' do
      expect { subject.best_block_hash }.to raise_error(NotImplementedError)
    end
  end

  describe '.block' do
    it 'raises error' do
      expect { subject.block }.to raise_error(NotImplementedError)
    end
  end

  describe '.block_count' do
    it 'raises error' do
      expect { subject.block_count }.to raise_error(NotImplementedError)
    end
  end

  describe '.block_hash' do
    it 'raises error' do
      expect { subject.block_hash }.to raise_error(NotImplementedError)
    end
  end

  describe '.block_number' do
    it 'raises error' do
      expect { subject.block_number }.to raise_error(NotImplementedError)
    end
  end

  describe '.block_template' do
    it 'raises error' do
      expect { subject.block_template }.to raise_error(NotImplementedError)
    end
  end

  describe '.connection_count' do
    it 'raises error' do
      expect { subject.connection_count }.to raise_error(NotImplementedError)
    end
  end

  describe '.difficulty' do
    it 'raises error' do
      expect { subject.difficulty }.to raise_error(NotImplementedError)
    end
  end

  describe '.generate' do
    it 'raises error' do
      expect { subject.generate }.to raise_error(NotImplementedError)
    end
  end

  describe '.hashes_per_sec' do
    it 'raises error' do
      expect { subject.hashes_per_sec }.to raise_error(NotImplementedError)
    end
  end

  describe '.info' do
    it 'raises error' do
      expect { subject.info }.to raise_error(NotImplementedError)
    end
  end

  describe '.memory_pool' do
    it 'raises error' do
      expect { subject.memory_pool }.to raise_error(NotImplementedError)
    end
  end

  describe '.mining_info' do
    it 'raises error' do
      expect { subject.mining_info }.to raise_error(NotImplementedError)
    end
  end

  describe '.new_address' do
    it 'raises error' do
      expect { subject.new_address }.to raise_error(NotImplementedError)
    end
  end

  describe '.peer_info' do
    it 'raises error' do
      expect { subject.peer_info }.to raise_error(NotImplementedError)
    end
  end

  describe '.raw_change_address' do
    it 'raises error' do
      expect { subject.raw_change_address }.to raise_error(NotImplementedError)
    end
  end

  describe '.raw_mem_pool' do
    it 'raises error' do
      expect { subject.raw_mem_pool }.to raise_error(NotImplementedError)
    end
  end

  describe '.raw_transaction' do
    it 'raises error' do
      expect { subject.raw_transaction }.to raise_error(NotImplementedError)
    end
  end

  describe '.received_by_account' do
    it 'raises error' do
      expect { subject.received_by_account }.to raise_error(NotImplementedError)
    end
  end

  describe '.received_by_address' do
    it 'raises error' do
      expect { subject.received_by_address }.to raise_error(NotImplementedError)
    end
  end

  describe '.transaction' do
    it 'raises error' do
      expect { subject.transaction }.to raise_error(NotImplementedError)
    end
  end

  describe '.tx_out' do
    it 'raises error' do
      expect { subject.tx_out }.to raise_error(NotImplementedError)
    end
  end

  describe '.tx_out_set_info' do
    it 'raises error' do
      expect { subject.tx_out_set_info }.to raise_error(NotImplementedError)
    end
  end

  describe '.work' do
    it 'raises error' do
      expect { subject.work }.to raise_error(NotImplementedError)
    end
  end

  describe '.help' do
    it 'raises error' do
      expect { subject.help }.to raise_error(NotImplementedError)
    end
  end

  describe '.import_priv_key' do
    it 'raises error' do
      expect { subject.import_priv_key }.to raise_error(NotImplementedError)
    end
  end

  describe '.keypool_refill' do
    it 'raises error' do
      expect { subject.keypool_refill }.to raise_error(NotImplementedError)
    end
  end

  describe '.list_accounts' do
    it 'raises error' do
      expect { subject.list_accounts }.to raise_error(NotImplementedError)
    end
  end

  describe '.list_address_groupings' do
    it 'raises error' do
      expect { subject.list_address_groupings }.to raise_error(NotImplementedError)
    end
  end

  describe '.list_received_by_account' do
    it 'raises error' do
      expect { subject.list_received_by_account }.to raise_error(NotImplementedError)
    end
  end

  describe '.list_received_by_address' do
    it 'raises error' do
      expect { subject.list_received_by_address }.to raise_error(NotImplementedError)
    end
  end

  describe '.list_since_block' do
    it 'raises error' do
      expect { subject.list_since_block }.to raise_error(NotImplementedError)
    end
  end

  describe '.list_transactions' do
    it 'raises error' do
      expect { subject.list_transactions }.to raise_error(NotImplementedError)
    end
  end

  describe '.list_unspent' do
    it 'raises error' do
      expect { subject.list_unspent }.to raise_error(NotImplementedError)
    end
  end

  describe '.list_lock_unspent' do
    it 'raises error' do
      expect { subject.list_lock_unspent }.to raise_error(NotImplementedError)
    end
  end

  describe '.lock_unspent' do
    it 'raises error' do
      expect { subject.lock_unspent }.to raise_error(NotImplementedError)
    end
  end

  describe '.move' do
    it 'raises error' do
      expect { subject.move }.to raise_error(NotImplementedError)
    end
  end

  describe '.send_from' do
    it 'raises error' do
      expect { subject.send_from }.to raise_error(NotImplementedError)
    end
  end

  describe '.send_many' do
    it 'raises error' do
      expect { subject.send_many }.to raise_error(NotImplementedError)
    end
  end

  describe '.send_raw_transaction' do
    it 'raises error' do
      expect { subject.send_raw_transaction }.to raise_error(NotImplementedError)
    end
  end

  describe '.send_to_address' do
    it 'raises error' do
      expect { subject.send_to_address }.to raise_error(NotImplementedError)
    end
  end

  describe '.account=' do
    it 'raises error' do
      expect { subject.account = 'value' }.to raise_error(NotImplementedError)
    end
  end

  describe '.generate=' do
    it 'raises error' do
      expect { subject.generate = 'value' }.to raise_error(NotImplementedError)
    end
  end

  describe '.tx_fee=' do
    it 'raises error' do
      expect { subject.tx_fee = 'value' }.to raise_error(NotImplementedError)
    end
  end

  describe '.sign_message' do
    it 'raises error' do
      expect { subject.sign_message }.to raise_error(NotImplementedError)
    end
  end

  describe '.sign_raw_transaction' do
    it 'raises error' do
      expect { subject.sign_raw_transaction }.to raise_error(NotImplementedError)
    end
  end

  describe '.stop' do
    it 'raises error' do
      expect { subject.stop }.to raise_error(NotImplementedError)
    end
  end

  describe '.submit_block' do
    it 'raises error' do
      expect { subject.submit_block }.to raise_error(NotImplementedError)
    end
  end

  describe '.validate_address' do
    it 'raises error' do
      expect { subject.validate_address }.to raise_error(NotImplementedError)
    end
  end

  describe '.verify_message' do
    it 'raises error' do
      expect { subject.verify_message }.to raise_error(NotImplementedError)
    end
  end

  describe '.wallet_lock' do
    it 'raises error' do
      expect { subject.wallet_lock }.to raise_error(NotImplementedError)
    end
  end

  describe '.wallet_passphrase' do
    it 'raises error' do
      expect { subject.wallet_passphrase }.to raise_error(NotImplementedError)
    end
  end

  describe '.wallet_passphrase_change' do
    it 'raises error' do
      expect { subject.wallet_passphrase_change }.to raise_error(NotImplementedError)
    end
  end
end
