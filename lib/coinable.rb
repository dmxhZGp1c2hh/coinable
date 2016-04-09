require 'json'
require 'httparty'
require 'coinable/version'
require 'coinable/error'

module Coinable
  HEADERS = {
    'Content-Type' => 'application/json',
    'Accept' => 'application/json'
  }.freeze

  attr_writer :host, :port, :user, :password

  def host
    @host || 'localhost'
  end

  def port
    @port || 8543
  end

  def user
    @user || 'rpcuser'
  end

  def password
    @password || 'rpcpassword'
  end

  def configure
    yield self
  end

  # addmultisigaddress
  def add_multisig_address
    raise NotImplementedError
  end

  # addnode
  def add_node
    raise NotImplementedError
  end

  # backupwallet
  def backup_wallet
    raise NotImplementedError
  end

  # createmultisig
  def create_multisig
    raise NotImplementedError
  end

  # createrawtransaction
  def create_raw_transaction
    raise NotImplementedError
  end

  # decoderawtransaction
  def decode_raw_transaction
    raise NotImplementedError
  end

  # dumpprivkey
  def dump_priv_key
    raise NotImplementedError
  end

  # encryptwallet
  def encrypt_wallet
    raise NotImplementedError
  end

  # getaccount
  def account
    raise NotImplementedError
  end

  # getaccountaddress
  def account_address
    raise NotImplementedError
  end

  # getaddednodeinfo
  def added_node_info
    raise NotImplementedError
  end

  # getaddressesbyaccount
  def addresses_by_account
    raise NotImplementedError
  end

  # getbalance
  def balance
    raise NotImplementedError
  end

  # getbestblockhash
  def best_block_hash
    raise NotImplementedError
  end

  # getblock
  def block
    raise NotImplementedError
  end

  # getblockcount
  def block_count
    raise NotImplementedError
  end

  # getblockhash
  def block_hash
    raise NotImplementedError
  end

  # getblocknumber
  def block_number
    raise NotImplementedError
  end

  # getblocktemplate
  def block_template
    raise NotImplementedError
  end

  # getconnectioncount
  def connection_count
    raise NotImplementedError
  end

  # getdifficulty
  def difficulty
    raise NotImplementedError
  end

  # getgenerate
  def generate
    raise NotImplementedError
  end

  # gethashespersec
  def hashes_per_sec
    raise NotImplementedError
  end

  # getinfo
  def info
    raise NotImplementedError
  end

  # getmemorypool
  def memory_pool
    raise NotImplementedError
  end

  # getmininginfo
  def mining_info
    raise NotImplementedError
  end

  # getnewaddress
  def new_address(account = nil)
    payload = {
      method: 'getnewaddress'
    }

    payload[:params] = [account] unless account.nil?

    request(payload)
  end

  # getpeerinfo
  def peer_info
    raise NotImplementedError
  end

  # getrawchangeaddress
  def raw_change_address
    raise NotImplementedError
  end

  # getrawmempool
  def raw_mem_pool
    raise NotImplementedError
  end

  # getrawtransaction
  def raw_transaction
    raise NotImplementedError
  end

  # getreceivedbyaccount
  def received_by_account
    raise NotImplementedError
  end

  # getreceivedbyaddress
  def received_by_address
    raise NotImplementedError
  end

  # gettransaction
  def transaction(txid)
    payload = {
      method: 'gettransaction',
      params: [txid]
    }

    request(payload)
  end

  # gettxout
  def tx_out
    raise NotImplementedError
  end

  # gettxoutsetinfo
  def tx_out_set_info
    raise NotImplementedError
  end

  # getwork
  def work
    raise NotImplementedError
  end

  # help
  def help
    raise NotImplementedError
  end

  # importprivkey
  def import_priv_key
    raise NotImplementedError
  end

  # keypoolrefill
  def keypool_refill
    raise NotImplementedError
  end

  # listaccounts
  def list_accounts(minconf = nil)
    payload = {
      method: 'listaccounts'
    }

    payload[:params] = [minconf] unless minconf.nil?

    request(payload)
  end

  # listaddressgroupings
  def list_address_groupings
    raise NotImplementedError
  end

  # listreceivedbyaccount
  def list_received_by_account
    raise NotImplementedError
  end

  # listreceivedbyaddress
  def list_received_by_address
    raise NotImplementedError
  end

  # listsinceblock
  def list_since_block
    raise NotImplementedError
  end

  # listtransactions
  def list_transactions(account = nil, count = 10, from = 0)
    payload = {
      method: 'listtransactions'
    }

    payload[:params] = [account, count, from] unless account.nil?

    request(payload)
  end

  # listunspent
  def list_unspent
    raise NotImplementedError
  end

  # listlockunspent
  def list_lock_unspent
    raise NotImplementedError
  end

  # lockunspent
  def lock_unspent
    raise NotImplementedError
  end

  # move
  def move
    raise NotImplementedError
  end

  # sendfrom
  def send_from
    raise NotImplementedError
  end

  # sendmany
  def send_many
    raise NotImplementedError
  end

  # sendrawtransaction
  def send_raw_transaction
    raise NotImplementedError
  end

  # sendtoaddress
  def send_to_address
    raise NotImplementedError
  end

  # setaccount
  def account=(_)
    raise NotImplementedError
  end

  # setgenerate
  def generate=(_)
    raise NotImplementedError
  end

  # settxfee
  def tx_fee=(_)
    raise NotImplementedError
  end

  # signmessage
  def sign_message
    raise NotImplementedError
  end

  # signrawtransaction
  def sign_raw_transaction
    raise NotImplementedError
  end

  # stop
  def stop
    raise NotImplementedError
  end

  # submitblock
  def submit_block
    raise NotImplementedError
  end

  # validateaddress
  def validate_address
    raise NotImplementedError
  end

  # verifymessage
  def verify_message
    raise NotImplementedError
  end

  # walletlock
  def wallet_lock
    raise NotImplementedError
  end

  # walletpassphrase
  def wallet_passphrase
    raise NotImplementedError
  end

  # walletpassphrasechange
  def wallet_passphrase_change
    raise NotImplementedError
  end

  private

  def request(payload)
    response = HTTParty.post(url, body: payload.to_json, headers: HEADERS)

    raise Error, response.message unless response.code == 200

    JSON.parse(response.body)['result']
  end

  def url
    "http://#{user}:#{password}@#{host}:#{port}"
  end
end
