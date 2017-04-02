<menu-item>
  <h3>{opts.data.name}</h3>
  <p>{opts.data.description}</p>
  <span>&yen;{opts.data.price.default}</span>

  <style>
    :scope {
      display: block;
      position: relative;
    }
    h3 {
      margin: 0;
      line-height: 9vh;
      font-size: 100%;
    }
    p {
      position: absolute;
      line-height: 1em;
      bottom: .6em;
      margin: 0;
      font-size: 65%;
      color: rgba(255,255,255,.9)
    }
    span {
      position: absolute;
      right: 2em;
      bottom: 1em;
      font-size: 90%;
      color: rgba(255,255,255,.8)
    }
  </style>
</menu-item>
