<app>
  <section>
    <h2>Coworking</h2>
    <menu-item each={data in coworking} data={data} size="large" />
  </section>
  <section>
    <h2>Hot Drinks</h2>
    <menu-item each={data in hotDrinks} data={data} />
  </section>
  <section>
    <h2>Cold Drinks</h2>
    <menu-item each={data in coldDrinks} data={data} />
  </section>
  <section>
    <h2>Extra</h2>
    <menu-item each={data in extra} data={data} />
  </section>

  <script>
    this.coworking = []
    this.hotDrinks = []
    this.coldDrinks = []
    this.extras = []

    this.on('mount', () => load().then(data => this.update(data)))

    function load () {
      const url = 'api/items.json'
      return window.fetch(url)
        .then(response => response.json())
        .then(data => ({
          coworking: data.filter(item => item.category === 'coworking'),
          hotDrinks: data.filter(item => item.category === 'hot-drink'),
          coldDrinks: data.filter(item => item.category === 'cold-drink'),
          extra: data.filter(item => item.category === 'extra')
        }))
    }
  </script>

  <style>
    :scope {
      display: block;
      background: rgba(55, 154, 174, 1.000);
      color: white;
      height: 100vh;
      font-size: 4vh;
    }
    section {
      position: relative;
      padding: 0 0 0 16vw;
      clear: both;
    }
    section:not(:first-child) {
      border-top: 4px solid white;
    }
    h2 {
      position: absolute;
      left: 0;
      width: 16vw;
      height: 100%;
      line-height: 11vh;
      margin: 0;
      padding: 0 1em;
      font-size: 80%;
      box-sizing: border-box;
      color: rgba(255,255,255,.8)
    }
  </style>
</app>
