# monerodo
A repository for scripts to update and manage a monerodo

The scripts here are designed to operated in a system where the daemons have already been installed - specifically, a Monerodo device.
The system can be reverse engineered to make these scripts work. And at some point I will make a Monerodo conversion script (turn any
device into a monerodo). 

Hash of v2r1 iso
md5: ae84e3260637a7850b3b874efb600b26


Script Tree
------------

> `[*]` defined lower

```
monerodo_os.sh
├─ hello.sh
│  ├─ xmr_settings.sh [*]
│  ├─ setup_pool_wallet.sh [*]
│  ├─ monero_mine_address.sh
│  ├─ setup_mininodo_wallet.sh
│  │  ├─ monero_monero-wallet-cli.sh
│  │  ├─ sevice_off.sh
│  │  └─ important.sh
│  └─ monero_monero-wallet-cli.sh
├─ device_management.sh
│  ├─ change_password.sh
│  ├─ access_logs.sh
│  │  ├─ view_log.sh
│  │  └─ xmr_bitmonerod_log.sh
│  ├─ monero_settings.sh
│  │  ├─ monero_mine_address.sh
│  │  ├─ nvidia_settings.sh
│  │  │  ├─ nvidia_local_pool.sh
│  │  │  │  ├─ sevice_status.sh
│  │  │  │  ├─ sevice_on.sh
│  │  │  │  └─ sevice_off.sh
│  │  │  ├─ nvidia_external_pool.sh
│  │  │  │  ├─ sevice_status.sh
│  │  │  │  ├─ setup_pool_wallet.sh [*]
│  │  │  │  ├─ sevice_on.sh
│  │  │  │  └─ sevice_off.sh
│  │  │  └─ nvidia_solo_daemon.sh
│  │  │     ├─ sevice_status.sh
│  │  │     ├─ setup_pool_wallet.sh [*]
│  │  │     ├─ sevice_on.sh
│  │  │     └─ sevice_off.sh
│  │  ├─ cpu_settings.sh
│  │  │     ├─ cpu_local_pool.sh
│  │  │     │  ├─ sevice_status.sh
│  │  │     │  ├─ sevice_on.sh
│  │  │     │  └─ sevice_off.sh
│  │  │     ├─ cpu_external_pool.sh
│  │  │     │  ├─ sevice_status.sh
│  │  │     │  ├─ sevice_on.sh
│  │  │     │  └─ sevice_off.sh
│  │  │     ├─ cpu_solo_daemon.sh
│  │  │     │  ├─ sevice_status.sh
│  │  │     │  ├─ sevice_on.sh
│  │  │     │  └─ sevice_off.sh
│  │  │     └─ cpu_core_mine.sh
│  │  ├─ xmr_pool_settings.sh
│  │  │  ├─ sevice_status.sh
│  │  │  ├─ setup_pool_wallet.sh [*]
│  │  │  ├─ sevice_on.sh
│  │  │  └─ sevice_off.sh
│  │  ├─ xmr_settings.sh [*]
│  │  └─ nodo_config.sh
│  │     ├─ sevice_status.sh
│  │     ├─ setup_mininodo_wallet.sh
│  │     │  ├─ monero_monero-wallet-cli.sh
│  │     │  └─ important.sh
│  │     ├─ sevice_on.sh
│  │     └─ sevice_off.sh
│  ├─ manage_ubuntu.sh
│  ├─ firewall_settings.sh
│  ├─ manual_update.sh
│  │  ├─ upd_2017FORK1.sh
│  │  └─ important.sh
│  ├─ monero_info.sh
│  └─ power.sh
├─ monero_monero-wallet-cli.sh
├─ restore.sh
├─ viewkey.sh
├─ monero_coldwallet.sh
│  └─ important.sh
└─ monero_wallets.sh
   └─ important.sh

xmr_settings.sh
├─ sevice_status.sh
├─ xmr_file_management.sh
│  ├─ xmr_import_blockchain.sh
│  ├─ xmr_delete_blockchain.sh
│  └─ xmr_delete_p2pstate.sh
├─ sevice_on.sh
├─ sevice_off.sh
├─ xmr_rate_change.sh
│  ├─ sevice_on.sh
│  └─ sevice_off.sh
├─ xmr_unmanaged.sh
│  ├─ sevice_on.sh
│  └─ sevice_off.sh
├─ monero_update.sh
│  └─ dep_list.sh
└─ xmr_update_binaries.sh
   └─ sevice_off.sh

setup_pool_wallet.sh
├─ important.sh
├─ monero_monero-wallet-cli.sh
└─ sevice_off.sh
```
