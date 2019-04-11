# スマートホームアプリ

家のスマートデバイスを操作するWebアプリケーション(Ruby on Rails)です。
現在導入予定のデバイスは、Philips Hue, RS-WFIREX4, BMP180 with Raspberry Piです。
Philips Hue,  BM180 with Raspberry Piについては別途Flaskを用いて、Raspberry Pi上にサーバー起動させ外部からのアクセスを可能としています。


# 参考
Philips Hue API:https://developers.meethue.com/develop/tools-and-sdks/

RS-WFIREX4:https://iot.ratocsystems.com/products/rs-wfirex4/

BMP180:https://www.switch-science.com/catalog/1679/

Raspberry Pi上のFlaskサーバコード

温湿度サーバ: https://github.com/ukitomato/TemperatureServer

Hueサーバ: https://github.com/ukitomato/HueServer
