#!/bin/bash
# Galaxy S25 カメラシャッター音無効化 - ADB Shellアプリ使用ガイド
# このスクリプトは実際に実行するものではなく、手順の参考としてお使いください

echo "======================================================="
echo "Galaxy S25 カメラシャッター音無効化 - ADB Shellアプリ使用ガイド"
echo "======================================================="
echo ""
echo "このガイドはADB Shellアプリを使ってGalaxy S25のカメラシャッター音を"
echo "無効化する手順を示しています。"
echo ""
echo "■ 必要なもの"
echo "・Galaxy S25スマートフォン（Wi-Fi接続が必要）"
echo "・ADB Shell-Debug Toolboxアプリ（バージョン3.7.1推奨）"
echo ""
echo "■ 注意事項"
echo "・最新バージョンのADB Shellアプリではワイヤレスデバッグ接続に"
echo "　不具合がある場合があるため、V3.7.1などの旧バージョンを推奨します"
echo "・APKPureなどの非公式サイトからのダウンロードになるため自己責任で行ってください"
echo ""

echo "======================================================="
echo "手順1: 開発者向けオプションの有効化"
echo "======================================================="
echo ""
echo "1. 設定アプリを開きます"
echo "2. 「端末情報」→「ソフトウェア情報」をタップします"
echo "3. 「ビルド番号」を7回連続でタップします"
echo "4. 「開発者になりました」というメッセージが表示されることを確認します"
echo ""

echo "======================================================="
echo "手順2: ワイヤレスデバッグの有効化"
echo "======================================================="
echo ""
echo "1. 設定アプリに戻ります"
echo "2. 「開発者向けオプション」をタップします"
echo "3. 「ワイヤレスデバッグ」をONにします"
echo "   （許可を求められたら「許可」をタップしてください）"
echo ""

echo "======================================================="
echo "手順3: ADB Shellアプリとの接続設定"
echo "======================================================="
echo ""
echo "※この手順は分割画面で行うと効率的です"
echo ""
echo "1. 設定アプリの「ワイヤレスデバッグ」画面とADB Shellアプリを"
echo "   分割画面で開きます"
echo ""
echo "2. 設定アプリ側で「ペア設定コードによるデバイスのペア設定」をタップします"
echo ""
echo "3. ADB Shellアプリ側で："
echo "   - 「Pairing code」（Android 11～14）をオンにします"
echo "   - 設定アプリに表示されているIPアドレスとポート番号を入力します"
echo "   - 「Pair」ボタンをタップします"
echo ""
echo "4. 必要な権限を許可します"
echo ""
echo "5. ADB Shellアプリ側に「Enter pairing code:」と表示されたら、"
echo "   設定アプリに表示されている6桁のWi-Fiペア設定コードを入力します"
echo ""
echo "6. 「ワイヤレスデバッグが接続されました」というメッセージが"
echo "   表示されることを確認します"
echo ""

echo "======================================================="
echo "手順4: シャッター音設定の変更"
echo "======================================================="
echo ""
echo "1. 接続が完了したら、ADB Shellアプリの入力欄に以下のコマンドを入力します："
echo ""
echo "   adb shell settings put system csc_pref_camera_forced_shuttersound_key 0"
echo ""
echo "2. Enterキーをタップして実行します"
echo ""
echo "3. エラーメッセージが表示されなければ設定完了です"
echo ""

echo "======================================================="
echo "手順5: 設定の確認と後片付け"
echo "======================================================="
echo ""
echo "1. カメラアプリを起動して、シャッター音が鳴らないことを確認します"
echo ""
echo "2. 設定アプリで「ワイヤレスデバッグ」をOFFにします"
echo ""
echo "3. ADB Shellアプリはバックグラウンドで起動しているため、"
echo "   アプリ情報から強制終了しておくことをおすすめします"
echo ""

echo "======================================================="
echo "元に戻す方法"
echo "======================================================="
echo ""
echo "シャッター音を元に戻したい場合は、同じ手順で接続した後、"
echo "以下のコマンドを実行してください："
echo ""
echo "adb shell settings put system csc_pref_camera_forced_shuttersound_key 1"
echo ""
echo "（最後の「0」を「1」に変えるだけです）"
echo ""

echo "======================================================="
echo "補足"
echo "======================================================="
echo ""
echo "・ソフトウェアアップデート後は設定が初期化される場合があるため、"
echo "　その場合は再設定が必要です"
echo ""
echo "・この設定を行うと、サイレントモード時にシャッター音が消える仕様になります"
echo ""
echo "※この方法は公式にサポートされているものではありません。"
echo "　すべて自己責任で行ってください。"
