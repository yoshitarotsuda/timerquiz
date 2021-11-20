# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quiz.create!(

quiz_name:'フレームワーククイズ',

quiz_category_id:4,

quiz_level_id:2,

quiz_text:'Twitter社が開発したページデザイン整えてくれる手助けをしてくれるCSSのフレームワークといえば？',

quiz_answer:'Bootstrap',

quiz_sample:'このフレームワークは本来CSSを書く場合全てのスタイルを自分で作っていく必要があるところ、よく使われるスタイルがあらかじめ定義されており、ルールに沿って利用するだけで整ったページのデザインを作成できるものとなっています。',

user_id:1,

)

Quiz.create!(

quiz_name:'CSS問題',

quiz_category_id:4,

quiz_level_id:1,

quiz_text:'要素内のホワイトスペースをどのように扱うか設定できる、CSSのプロパティ名をお答え下さい',

quiz_answer:'white-space',

quiz_sample:'ホワイトスペースを折り畳むかどうか、及その方法。行を自動で折り返す場面で折り返すことができるかどうか。この二つを指定できます。',

user_id:1,

)

Quiz.create!(

quiz_name:'CodePenとは？',

quiz_category_id:20,

quiz_level_id:2,

quiz_text:'CodePen。こちらのサービスの内容は何でしょう？',

quiz_answer:'ブラウザ上でHTML,CSS,JavaScriptのコードを記述し、リアルタイムで表示を確認しながら開発をすることができるサービスです。',

quiz_sample:'基本無料で使うことができます(2021/11/19時点)。ソースコード、その表示を他のサイトに埋め込み(シェアできる)外部ライブラリも使用できるなどが特徴となっています。',

user_id:1,

)

Quiz.create!(

quiz_name:'単語クイズ',

quiz_category_id:1,

quiz_level_id:1,

quiz_text:'API(Application Programming Interface) こちらの単語の意味を何でしょう？',

quiz_answer:'アプリケーションが他のアプリケーションに対して自らの機能の一部を簡単に利用できるように提供するインターフェイスのことです。',

quiz_sample:'具体例としてはGoogleやTwitterやFaceBookでのログイン機能。これらを始め多種多様なアプリケーションサービスが提供しています。',

user_id:1,

)

Quiz.create!(

quiz_name:'機能クイズ',

quiz_category_id:3,

quiz_level_id:2,

quiz_text:'Ruby on Railsにおいてデータベースにデータを用意できるファイルがありますが、このファイル名は何でしょう？',

quiz_answer:'seeds.rbファイル',

quiz_sample:'/db/seeds.rbに配置されているファイルであり、rails db:seedコマンドによりファイル内の記述データをまとめて該当モデルのテーブルに記述することができる便利なファイルです。',

user_id:1,

)

Quiz.create!(

quiz_name:'CSSクイズ',

quiz_category_id:4,

quiz_level_id:2,

quiz_text:'HTML&CSSにおいてaタグにリンクを設定した場合、下線がデフォルトで発生しますがこれを消すコードをお答えください。',

quiz_answer:'text-decoration: none;',

quiz_sample:'使用例としてはこのようにa要素全てにまとめて適用することがあります。 a{ text-decoration: none; }',

user_id:1,

)

Quiz.create!(

quiz_name:'単語クイズ',

quiz_category_id:3,

quiz_level_id:2,

quiz_text:'Ruby on Rails開発において、ログイン、ログアウトなどのユーザー管理機能を実装する上で便利なGemは何でしょう？',

quiz_answer:'devise (デバイス)',

quiz_sample:'ユーザー管理機能を簡単に実装するためのGemです。実際に運用されている多くのRailsアプリケーションサービスで使用されています。',

user_id:1,

)

Quiz.create!(

quiz_name:'単語クイズ',

quiz_category_id:10,

quiz_level_id:2,

quiz_text:'Ajax(エイジャックス)　JavaScript開発において覚えておきたい機能の一つですが、これは何を略した単語でしょうか？',

quiz_answer:'「Asynchronous JavaScript XML」　の略です',

quiz_sample:'非同期のJavaScirptとXMLを使ったサーバーとの通信のことです。ページの更新を行わずにサーバーとの通信を行い、更新した部分だけの表示を変更するといった機能を実装するときなどに使われます。',

user_id:1,

)

Quiz.create!(

quiz_name:'開発者クイズ',

quiz_category_id:2,

quiz_level_id:1,

quiz_text:'Rubyの開発者の名前は○○○○　○○○○氏です。 ○に入るひらがな８文字をお答えください。',

quiz_answer:'まつもと　ゆきひろ',

quiz_sample:'Rubyは、まつもと ゆきひろ氏により1995年に発表されたプログラミング言語です。 日本で開発されたプログラミング言語としては初めて国際電気標準会議(IEC)で国際規格に認証されたものです。',

user_id:1,

)

Quiz.create!(

quiz_name:'単語クイズ',

quiz_category_id:1,

quiz_level_id:1,

quiz_text:'ITとは何の略称でしょうか？',

quiz_answer:'Information Technology (インフォメーション・テクノロジー)です。',

quiz_sample:'直訳で情報技術の意味です。 ざっくりとコンピューターやサイバー関連の技術を表して使われることが多いです。',

user_id:1,

)