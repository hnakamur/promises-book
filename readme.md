# Promises Book [![Build Status](https://travis-ci.org/azu/promises-book.png)](https://travis-ci.org/azu/promises-book) [![Gitter chat](https://badges.gitter.im/azu/promises-book.png)](https://gitter.im/azu/promises-book)

Promisesについての薄い電子書籍です

[http://azu.github.io/promises-book/](http://azu.github.io/promises-book/ "Promises book") から閲覧することが出来ます。

## Installation

Asciidocを使い書かれています。

[Asciidoctor](http://asciidoctor.org/ "Asciidoctor")でビルドすることが出来ます。

``` sh
gem install asciidoctor coderay
make html
open index.html
```

### asciidoctor-pdfによるPDF作成 (試行錯誤中)
[asciidoctor-pdf](https://github.com/opendevise/asciidoctor-pdf)で[VLゴシックフォントファミリ](http://vlgothic.dicey.org/)を使えるようにした[フォーク版](https://github.com/hnakamur/asciidoctor-pdf/tree/vlgothic_font_support)を使ってPDFを作成できます。が、まだ一部文字化けするなどの問題が残っています。

[bundler](http://rubygems.org/gems/bundler)を使ってセットアップします。

```sh
gem install bundler
bundle install --path vendor/bundle
make pdf
open index.pdf
```

## Contributing

[![Gitter chat](https://badges.gitter.im/azu/promises-book.png)](https://gitter.im/azu/promises-book) に意見等どうぞ。

[CONTRIBUTE.md](CONTRIBUTE.md "CONTRIBUTE.md") も参考にして下さい

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

プログラムコードはMITライセンスで利用できます。

文章については<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial</a>で利用できます。

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="クリエイティブ・コモンズ・ライセンス" style="border-width:0" src="http://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a>
