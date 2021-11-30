<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Golang Weekly</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="/css/app.css">
  <link rel="alternate" type="application/rss+xml" title="Golang Weekly" href="/rss/">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="shortcut icon" href="/favicon.png">
</head>
<body class="go dom dom-go index index0">
  <header class="contained">
    <nav>
    <div class="sitename" style="cursor: pointer" onclick="window.location.href='/'"><a href="/">Golang Weekly</a></div>

    <div class="items">
        
            <a href="/issues" class="issues">Archives</a><span class="divider">|</span>
            <a href="/latest" class="latest">Latest</a><span class="nomobile"><span class="divider">|</span>
            <a href="/rss/">RSS</a></span>
        
    </div>
  </nav>

</header>

  <main><div class="sideground">


<div class="marvel-device iphone8plus silver">
    <div class="top-bar"></div>
    <div class="sleep"></div>
    <div class="volume"></div>
    <div class="camera"></div>
    <div class="sensor"></div>
    <div class="speaker"></div>
    <div class="screen" style="overflow: none;-webkit-overflow-scrolling:touch;">
      <iframe src="/issues/latest?layout=bare"></iframe>
    </div>
    <div class="home"></div>
    <div class="bottom-bar"></div>
</div>
</div>

<div class="main">
  
  
    <img src="/images/gopher-keith-57.png" class="fplogo" width="120" />
  
  
  
  
  
  

  

  <h1 class="title">Golang Weekly</h1>
  <h2 class="subtitle">A weekly newsletter about the Go programming language</h2>



  <form class="subscribe" action="/subscribe" method="POST">


    <input type="hidden" name="_csrf" value="6unRa3oKJgcatjnyMdeczP4zW3CPz333bDugR89iXtc" />

    <div class="fab">
      <div class="input">
      <input type="email" placeholder="Type your email address here" class="email" name="email" id="email" value="" required />
      </div>
      <div class="button">
        <button class="awesome" type="submit">Subscribe</button>
      </div>
    </div>

    <div class="count">33373 subscribers &mdash; <a href="/issues">389 issues</a> &mdash; <a href="/rss/">RSS feed</a></div>
  </form>


  <p>Check out <a href="/issues/389">our latest issue</a> for a sample.</p>

  

  

  

  <footer>
    <p>Published by <a href="https://cooperpress.com/"> Cooperpress</a><br />Our <a href="/privacy">privacy</a>, <a href="/spam">anti-spam</a>, and <a href="https://cooperpress.com/gdpr">GDPR policies</a>. We take these things seriously.</p>

    
      <p style="font-size: 10px">The Go gopher was designed by Renee French and licensed under the Creative Commons 3.0 Attributions license.</p>
    

    

    

    

    
  </footer>
</div>
</main>
  
  <script src="/js/app.js"></script>
  <script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//www.google-analytics.com/analytics.js','ga');ga('create','UA-32535004-16','golangweekly.com');ga('send', 'pageview');
</script>

</body>
</html>
