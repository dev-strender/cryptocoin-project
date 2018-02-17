## 2018.02.12

### 1. geth 설치
설치 실행파일을 다운받는다.

>> geth --datadir ".\testnet" --syncmode "fast"

설치를 하게 되면 노드를 다운받게 된다. 블록체인 노드들

INFO [02-12|20:36:26] Imported new block receipts              count=1    elapsed=1.002ms   bytes=4       number=123649 hash=291e12…31deed ignored=0
INFO [02-12|20:36:26] Imported new block headers               count=576  elapsed=66.108ms  number=126144 hash=e1317e…c860ea ignored=0
INFO [02-12|20:36:26] Imported new state entries               count=1924 elapsed=2.003ms   processed=174181 pending=16315 retry=0   duplicate=47 unexpected=337
INFO [02-12|20:36:27] Imported new block headers               count=768  elapsed=88.142ms  number=126912 hash=af4e28…12ffb4 ignored=0
INFO [02-12|20:36:27] Imported new block headers               count=576  elapsed=78.108ms  number=127488 hash=970994…4e668a ignored=0
INFO [02-12|20:36:27] Imported new block receipts              count=1920 elapsed=45.058ms  bytes=596667  number=125569 hash=9fec9c…7363cb ignored=0
INFO [02-12|20:36:28] Imported new block receipts              count=1347 elapsed=38.066ms  bytes=668241  number=126916 hash=6f5243…dc6212 ignored=0
INFO [02-12|20:36:28] Imported new block headers               count=1344 elapsed=174.932ms number=128832 hash=842508…525584 ignored=0
INFO [02-12|20:36:28] Imported new state entries               count=2313 elapsed=5.007ms   processed=176494 pending=14466 retry=0   duplicate=47 unexpected=337
INFO [02-12|20:36:29] Imported new block receipts              count=574  elapsed=14.021ms  bytes=370191  number=127490 hash=f36722…5bb893 ignored=0
INFO [02-12|20:36:30] Imported new block headers               count=1152 elapsed=141.212ms number=129984 hash=93e43c…b6808d ignored=0
INFO [02-12|20:36:30] Imported new block headers               count=960  elapsed=120.180ms number=130944 hash=20469e…f6395e ignored=0
INFO [02-12|20:36:30] Imported new block headers               count=192  elapsed=33.059ms  number=131136 hash=253381…2c1f12 ignored=0
INFO [02-12|20:36:30] Imported new state entries               count=1936 elapsed=4.005ms   processed=178430 pending=13566 retry=0   duplicate=47 unexpected=337
INFO [02-12|20:36:32] Imported new block headers               count=576  elapsed=66.099ms  number=131712 hash=58a860…b6def1 ignored=0
INFO [02-12|20:36:33] Imported new state entries               count=1541 elapsed=5.016ms   processed=179971 pending=11820 retry=0   duplicate=47 unexpected=337

....

INFO [02-12|20:48:11] Got interrupt, shutting down...
INFO [02-12|20:48:11] IPC endpoint closed: \\.\pipe\geth.ipc
INFO [02-12|20:48:11] Blockchain manager stopped
INFO [02-12|20:48:11] Stopping Ethereum protocol
INFO [02-12|20:48:11] Ethereum protocol stopped
INFO [02-12|20:48:11] Transaction pool stopped
CRIT [02-12|20:48:11] Failed to store last header's hash       err="leveldb: closed"

이런식으로 계속 다운받아진다. 하지만 이는 공용 네트워크이므로, 아직은 다 다운받지 않아도 된다.

### 2. 계좌 생성

>> geth --datadir ".\data" account new

### 3. Genesis 블록 파일 정의

충분한 양의 계산을 수행했음을 증명해주는 옵션
블록이 취득된 시점을 나타내는 옵션
부모 블록의 헤더에 대한 해시 값을 갖는 옵션
지금은 안쓰는데 추가될 수 있는 옵션을 고려한 임시 저장 공간
하나의 블록이 담을 수 있는 gas 의 최대치
블록 생성의 난이도. 이정도면 낮다
충분한 양의 계산을 수행했음을 증명 (nonce와 같이 쓰임)
해당 블록에 대해서 채굴에 성공하면 얻게 되는 총 보상금을 주소값으로 표현
초기에 네트워크를 만들 때 할당을 해줄 수 있다.


### 네트워크 실행

>> geth --identity "PrivateNetwork" --datadir=".\data" --port "30303" --rpc --rpcaddr 0.0.0.0 --rpcport "8123" --rpccrosdomain "*" --nodiscover --networkid 1900 --nat "any" --rpcapi "db, eth,net,web3,miner" console


## 02.17

>> mkdir dapps/wallet
>> npm install web3