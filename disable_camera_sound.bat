@echo off
echo ======================================================
echo Galaxy S25 カメラシャッター音無効化ツール
echo ======================================================
echo.
echo このスクリプトはGalaxy S25のカメラシャッター音を無効化します。
echo 事前にスマートフォンでUSBデバッグを有効にしてください。
echo.
echo 1. 設定 > 端末情報 > ソフトウェア情報
echo 2. 「ビルド番号」を7回タップ
echo 3. 設定 > 開発者向けオプション
echo 4. USBデバッグをON
echo.
echo 注意: この操作は自己責任で行ってください
echo.
echo スマートフォンをUSBで接続してから続行してください...
pause

echo.
echo デバイスを確認しています...
adb devices

echo.
echo カメラシャッター音を無効化しています...
adb shell settings put system csc_pref_camera_forced_shuttersound_key 0

echo.
echo 完了しました！
echo カメラアプリを起動して、シャッター音が消えていることを確認してください。
echo.
echo USBデバッグは無効に戻すことをお勧めします。
echo.
pause
