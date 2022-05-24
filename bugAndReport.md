# SQL Query

- SELECT pengajuan.id_pengajuan, pengajuan.id_user, pengajuan.kode_rkat, pengajuan.next, rkat.kode_rkat FROM `pengajuan` JOIN rkat WHERE rkat.id_rkat = pengajuan.kode_rkat AND pengajuan.id_user = 3337;

## Wadek FRS

- 2022-FRS-004
- 2022-FRS-005
- 2022-FRS-075


## Composer require php 8

- "platform-check": false (composer.json) - composer update
