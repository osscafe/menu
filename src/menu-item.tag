<menu-item>
  <h3>{opts.data.name}</h3>
  <p>{opts.data.description}</p>
  <span>{numberFormat(opts.data.price.default)}</span>

  <script>
    this.numberFormat = n => {
      return new Intl.NumberFormat('ja-JP', {
        style: 'currency',
        currency: 'JPY'
      }).format(n)
    }
  </script>

  <style>
    :scope {
      display: block;
      position: relative;
      width: 42vw;
      overflow: hidden;
      float: left;
      box-sizing: border-box;
      padding: 0 2em;
      margin: 0;
      height: 11.5vh;
    }
    :scope[size=large] {
      height: 16vh;
    }
    h3 {
      margin: 0;
      line-height: 10vh;
      font-size: 100%;
    }
    :scope[size=large] h3 {
      line-height: 13vh;
      font-size: 140%;
    }
    p {
      position: absolute;
      line-height: 1em;
      bottom: .8em;
      margin: 0;
      font-size: 65%;
      color: rgba(255,255,255,.8)
    }
    :scope[size=large] p {
      bottom: 1.2em;
    }
    span {
      position: absolute;
      right: 2em;
      bottom: 1.2em;
      font-size: 90%;
      color: rgba(255,255,255,.8)
    }
  </style>
</menu-item>
