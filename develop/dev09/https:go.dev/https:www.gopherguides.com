<!doctype html>
<html class="no-js" lang="en-US">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Go (golang) Training By Community Leaders - Gopher Guides</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="https://cloud.typography.com/6266298/7998612/css/fonts.css" />
        <link href="https://fonts.googleapis.com/css2?family=Karla:ital,wght@0,400;0,700;1,400&family=Roboto+Condensed:wght@400;700&family=Roboto:wght@100;300;400;700&display=swap" rel="stylesheet">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="/assets/js/main.js"></script>
        <script src="https://kit.fontawesome.com/290e7e9f3f.js" crossorigin="anonymous"></script>
        <link rel="apple-touch-icon" sizes="180x180" href="/assets/images/favicons/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/assets/images/favicons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/assets/images/favicons/favicon-16x16.png">
        <link rel="manifest" href="/assets/images/favicons/site.webmanifest">
        <link rel="mask-icon" href="/assets/images/favicons/safari-pinned-tab.svg" color="#8cbb81">
        <meta name="msapplication-TileColor" content="#c1dbbb">
        <meta name="theme-color" content="#ffffff">
        
<meta property="og:description" content="Instructor led virtual training - Training from Community Experts. Fortune 500 companies trust us to accelerate their teams and projects." />

<meta property="og:image" content="http://www.gopherguides.com/assets/images/social/generic/default.png" />

<meta property="og:site_name" content="Gopher Guides" />

<meta property="og:title" content="Go (golang) Training By Community Leaders - Gopher Guides" />

<meta property="og:type" content="website" />

<meta property="og:url" content="http://www.gopherguides.com/" />


<meta property="twitter:card" content="summary_large_image" />

<meta property="twitter:creator" content="@gopherguides" />

<meta property="twitter:description" content="Instructor led virtual training - Training from Community Experts. Fortune 500 companies trust us to accelerate their teams and projects." />

<meta property="twitter:image" content="http://www.gopherguides.com/assets/images/social/generic/default.png" />

<meta property="twitter:image:alt" content="Gopher Guides Virtual Go Training" />

<meta property="twitter:site" content="@gopherguides" />

<meta property="twitter:title" content="Go (golang) Training By Community Leaders - Gopher Guides" />

<meta property="twitter:url" content="http://www.gopherguides.com/" />



        

    </head>
    <body class="home-page">
        <header class="site-header">
	<div class="wrapper flex-1024 flex--content-space-between">
		<a href="/" id="logo"><img src="/assets/images/logo.png" alt=""></a>
		<button class="toggle base"><span class="hamb"><span></span><span></span><span></span></span></button>
		<nav class="main-nav-wrapper">
			<ul class="main-nav flex-1024">
				<li class="parent"><a href="javascript:void(0)">Enterprise Training</a>
					<ul>
						<li><a href="/virtual-golang-training">About</a></li>
						<li><a href="/courses/introduction-to-golang-training">Intro</a></li>
						<li><a href="/courses/advanced-golang-training">Advanced</a></li>
						<li><a href="/courses/testing-stubbing-automating-golang-training">Testing</a></li>
						<li><a href="/courses/profiling-optimizing-golang-training">Optimization</a></li>
						<li><a href="/courses/web-api-golang-training">Web API</a></li>
						<li><a href="/courses/grpc-gateway-golang-training">gRPC</a></li>
						<li><a href="/courses/mastering-golang-training">Mastering</a></li>
						<li><a href="/courses/custom-golang-courses">Custom</a></li>
						<li><a href="https://learn.gopherguides.com//courses/my">My Courses</a></li>
					</ul>
				</li>
				<li class="parent">
					<a href="javascript:void(0)">Individual Training</a>
					<ul>
						<li><a href="/individual">About</a></li>
						<li><a href="/individual/intro-to-go">Intro to Go</a></li>
						<li><a href="/individual/intro/faq">FAQ</a></li>
						<li><a href="/individual/intro/scholarships">Scholarships</a></li>
					</ul>
				</li>
				<li><a href="/team">Team</a></li>
				<li><a href="/articles">Blog</a></li>
				<li><a href="/contact">Contact</a></li>
				<li class="login"><a href="https://learn.gopherguides.com/auth/github" class="btn">Login</a></li>
			</ul>
		</nav>
	</div>
</header>


        <main>
            <article class="main-container">
	<div class="hero">
		<div class="wrapper content flex-1024 flex--column flex--content-space-between">
			<div>
				<h1><span class="rob-c">INSTRUCTOR LED</span><br>
					VIRTUAL <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
 TRAINING</h1>
				<p>Training from Community Experts <br>
				Fortune <strong>500 companies</strong> trust us to accelerate <br>
				their teams and projects.</p>
				<p><a href="/virtual-golang-training" class="btn blue">Learn more</a></p>
			</div>
			<div class="logos flex-1024 flex--content-space-between flex--content-vertical-center">
				<img src="/assets/images/visa-logo.png" alt=""/>
				<img src="/assets/images/coinbase-logo.png" alt=""/>
				<img src="/assets/images/uber-logo.png" alt=""/>
				<img src="/assets/images/apple-logo.png" alt=""/>
				<img src="/assets/images/sky-bet-logo.png" alt=""/>
				<img src="/assets/images/intuit-logo.png" alt=""/>
				<img src="/assets/images/business-insider-logo.png" alt=""/>
				<img src="/assets/images/capital-one-logo.png" alt=""/>
				<img src="/assets/images/red-hat-logo.png" alt=""/>
			</div>
		</div>
	</div>

	<a name="why">
		<section class="why-section">
			<div class="wrapper">
				<div class="flex-1024 flex--content-vertical-top">
					<h2 class="section-title left mango"><span>Why</span> Gopher Guides?</h2>
					<div class="flex flex--wrap flex--content-space-between">
						<div class="card">
							<figure>
								<img src="/assets/images/virtual-experience-icon.png" alt="Virtual experience">
							</figure>
							<h3>
								<a href="/virtual-golang-training">Virtual experience</a>
							</h3>
							<p>We have invested significant resources into designing a perfect experience for our virtual training engagements.</p>
						</div>
						<div class="card">
							<figure>
								<img src="/assets/images/customized-content-icon.png" alt="CUSTOMIZED CONTENT">
							</figure>
							<h3>
								<a href="/virtual-golang-training#">CUSTOMIZED CONTENT</a>
							</h3>
							<p>With our custom content delivery system, you will be able to follow along as the instructor introduces each concept for your customized Go training.</p>
						</div>
						<div class="card">
							<figure>
								<img src="/assets/images/years-experience-icon.png" alt="YEARS OF EXPERIENCE">
							</figure>
							<h3>
								<a href="/virtual-golang-training#">YEARS OF EXPERIENCE</a>
							</h3>
							<p>We have years of experience in delivering customized, virtual, Go  training. Let us make your engagement a success today!</p>
						</div>
						<div class="card">
							<figure>
								<img src="/assets/images/updated-curriculum-icon.png" alt="UPDATED CURRICULUM">
							</figure>
							<h3>
								<a href="/virtual-golang-training#">UPDATED CURRICULUM</a>
							</h3>
							<p>Our curriculum is continuously updated using best practices and has been validated in some of the largest companies in the world.</p>
						</div>
						<div class="card">
							<figure>
								<img src="/assets/images/designed-module-icon.png" alt="DESIGNED MODULE">
							</figure>
							<h3>
								<a href="/virtual-golang-training#">DESIGNER MODULES</a>
							</h3>
							<p>Each module is designed to send you away ready to tackle your biggest Go initiatives. </p>
						</div>
						<div class="card">
							<figure>
								<img src="/assets/images/quick-solution-icon.png" alt="QUICK SOLUTION">
							</figure>
							<h3>
								<a href="/virtual-golang-training#">QUICK SOLUTION</a>
							</h3>
							<p>With virtual training, a prominent member of the Go community leads your workshop to help get your team up to speed in as little as 2 to 4 days.</p>
						</div>
					</div>
				</div>
				
				
				
			</div>
		</section>

		<section class="stats-section ice-bg">
			<div class="wrapper max-1370 flex-768">
				<div class="stat-content">
					<figure><img src="/assets/images/students-icon.png" alt=""/></figure>
					<h3><b>10,000+ </b> Students</h3>
				</div>
				<div class="stat-content">
					<figure><img src="/assets/images/modules-icon.png" alt=""/></figure>
					<h3><b>100+ </b> Training Modules</h3>
				</div>
				<div class="stat-content">
					<figure><img src="/assets/images/happines-icon.png" alt=""/></figure>
					<h3><b>98% </b> Happiness</h3>
				</div>
			</div>
		</section>

		<section class="team-section">
			<div class="wrapper flex-1024 flex--content-space-between">
				<div class="team-copy">
					<h2 class="section-title">Gopher Guides <span>Instructor Team</span></h2>
					<p>The Gopher Guides instructor team includes some of the most respected and accomplished leaders in the <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
 <b>programming</b> community.</p>
					<p><a href="/team" class="btn mango">Learn more</a></p>
				</div>
				<div class="members-wrapper flex-768 flex--content-space-between">
					<div class="member">
    <figure><img src="/assets/images/mark.jpg" alt="Mark Bates"></figure>
    <h3>Mark Bates</h3>
    <h4>Cofounder/Instructor</h4>
    <p>Mark specializes in GO Fundamentals, Advanced GO, Web Development and Buffalo.</p>
</div>
<div class="member">
    <figure><img src="/assets/images/cory.jpg" alt="Cory LaNou"></figure>
    <h3>Cory LaNou</h3>
    <h4>Cofounder/Instructor</h4>
    <p>Cory specializes in GO Fundamentals, Advanced GO, Distributed Systems and gPRC.</p>
</div>

				</div>
			</div>
		</section>

		    <section class="courses-section pampas-bg">
        <div class="wrapper flex-1024 flex--content-vertical-top">
            <h2 class="section-title right mango"><span>Virtual</span> Courses</h2>
            <div class="courses flex-768 flex--content-space-between flex--wrap">
                <div class="course center">
                    <figure>
                        <img src="/assets/images/intro-icon-on.png" alt="Intro to GO" class="hover">
                        <img src="/assets/images/intro-icon.png" alt="Intro to GO">
                    </figure>
                    <h3>Intro to <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
</h3>
                    <p>Intro to Go is designed to get existing software teams with little to no Go experience ready to write production ready code.</p>
                    <p class="more"><a href="/courses/introduction-to-golang-training"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
                </div>
                <div class="course center">
                    <figure>
                        <img src="/assets/images/advanced-icon-on.png" alt="Advanced" class="hover">
                        <img src="/assets/images/advanced-icon.png" alt="Advanced">
                    </figure>
                    <h3>Advanced <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
 Development</h3>
                    <p>Advanced Go is designed for software teams that have some existing Go knowledge and experience.</p>
                    <p class="more"><a href="/courses/advanced-golang-training"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
                </div>
                <div class="course center">
                    <figure>
                        <img src="/assets/images/testing-icon-on.png" alt="Web development in GO" class="hover">
                        <img src="/assets/images/testing-icon.png" alt="Web development in GO">
                    </figure>
                    <h3>Testing in <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
</h3>
                    <p>This course will take you step by step from writing your first test to testing concurrent code, stubbing objects, automating tests, and more.</p>
                    <p class="more"><a href="/courses/testing-stubbing-automating-golang-training"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
                </div>
                <div class="course center">
                    <figure>
                        <img src="/assets/images/profiling-icon-on.png" alt="Web development in GO" class="hover">
                        <img src="/assets/images/profiling-icon.png" alt="Web development in GO">
                    </figure>
                    <h3>Profiling and Optimizing <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
</h3>
                    <p>Go comes with some amazing tooling.  In this course, you'll learn how to put it to use and make your Go code perform faster and more efficiently.</p>
                    <p class="more"><a href="/courses/profiling-optimizing-golang-training"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
                </div>
                <div class="course center">
                    <figure>
                        <img src="/assets/images/web-dev-icon-on.png" alt="Web development in GO" class="hover">
                        <img src="/assets/images/web-dev-icon.png" alt="Web development in GO">
                    </figure>
                    <h3>Web API in <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
</h3>
                    <p>Take a deep run through the entire net/http package and learn best practices in writing Web API in Go.</p>
                    <p class="more"><a href="/courses/web-api-golang-training"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
                </div>
                <div class="course center">
                    <figure>
                        <img src="/assets/images/grpc-icon-on.png" alt="Web development in GO" class="hover">
                        <img src="/assets/images/grpc-icon.png" alt="Web development in GO">
                    </figure>
                    <h3>gRPC in <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
</h3>
                    <p>Learn how easy it is to write a highly scalable distributed system that enforces type safety, SLA's, and more.</p>
                    <p class="more"><a href="/courses/grpc-gateway-golang-training"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
                </div>
                <div class="course center">
                    <figure>
                        <img src="/assets/images/mastering-icon-on.png" alt="Web development in GO" class="hover">
                        <img src="/assets/images/mastering-icon.png" alt="Web development in GO">
                    </figure>
                    <h3>Mastering <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
</h3>
                    <p>Looking to go from zero to hero in a short time?  This course is designed for senior developers to jumpstart your Go project.</p>
                    <p class="more"><a href="/courses/mastering-golang-training"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
                </div>

                <div class="course center">
                    <figure>
                        <img src="/assets/images/custom-courses-icon-on.png" alt="Custom courses" class="hover">
                        <img src="/assets/images/custom-courses-icon.png" alt="Custom courses">
                    </figure>
                    <h3>Custom <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
 Courses</h3>
                    <p>Don't see what you are looking for?  We can design a course specifically for your teams needs.</p>
                    <p class="more"><a href="/courses/custom-golang-courses"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
                </div>
            </div>
        </div>
    </section>




		<section class="testimonials-section">
    <div class="wrapper">
        <div class="testimonials">
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="100" height="81" viewBox="0 0 100 81">
  <path fill="#F9C861" d="M16.308 81c-1.443 0-2.309-.135-2.309-.135V60.648s3.311-.017 5-1.012c1.992-1.174 6-7.074 6-7.074l.08-7.078H8c-4.419 0-8-3.618-8-8.084V8.087C0 3.621 3.581 0 8 0h28.999C41.418 0 45 3.621 45 8.087V37.4C45 77.636 23.497 81 16.308 81zm1.691-4.109c8.062-.627 23-6.283 23-39.49V8.087c0-2.231-1.793-4.043-4-4.043H8c-2.207 0-4 1.813-4 4.043V37.4c0 2.229 1.793 4.042 4 4.042h21.127l-.046 4.091L29 52.607l-.014 1.229-.688 1.013c-1.688 2.483-4.876 6.863-7.286 8.28-.91.537-1.98.89-3.013 1.121v12.641M71.309 81c-1.443 0-2.31-.135-2.31-.135V60.648s3.312-.017 5-1.012c1.992-1.174 6-7.074 6-7.074l.08-7.078H63c-4.419 0-8-3.618-8-8.084V8.087C55 3.621 58.581 0 63 0h28.999C96.418 0 100 3.621 100 8.087V37.4C100 77.636 78.497 81 71.309 81zm1.69-4.109c8.062-.627 23-6.283 23-39.49V8.087c0-2.231-1.793-4.043-4-4.043H63c-2.207 0-4 1.813-4 4.043V37.4c0 2.229 1.793 4.042 4 4.042h21.127l-.046 4.091L84 52.607l-.014 1.229-.688 1.013c-1.688 2.483-4.876 6.863-7.286 8.28-.91.537-1.979.89-3.013 1.121v12.641"/>
</svg>

                <p>The GopherGuides held a full week of informative and engaging training at The New York Times that left our engineers excited and empowered to use Go. The classes were tailored to our needs so all levels of engineer came out with some new bits of Go wisdom. We at NYT look forward to using GopherGuides for future training!</p>
                <h4 class="name">- JP Robinson -</h4>
                <h4>New York Times</h4>
            </div>
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="100" height="81" viewBox="0 0 100 81">
  <path fill="#F9C861" d="M16.308 81c-1.443 0-2.309-.135-2.309-.135V60.648s3.311-.017 5-1.012c1.992-1.174 6-7.074 6-7.074l.08-7.078H8c-4.419 0-8-3.618-8-8.084V8.087C0 3.621 3.581 0 8 0h28.999C41.418 0 45 3.621 45 8.087V37.4C45 77.636 23.497 81 16.308 81zm1.691-4.109c8.062-.627 23-6.283 23-39.49V8.087c0-2.231-1.793-4.043-4-4.043H8c-2.207 0-4 1.813-4 4.043V37.4c0 2.229 1.793 4.042 4 4.042h21.127l-.046 4.091L29 52.607l-.014 1.229-.688 1.013c-1.688 2.483-4.876 6.863-7.286 8.28-.91.537-1.98.89-3.013 1.121v12.641M71.309 81c-1.443 0-2.31-.135-2.31-.135V60.648s3.312-.017 5-1.012c1.992-1.174 6-7.074 6-7.074l.08-7.078H63c-4.419 0-8-3.618-8-8.084V8.087C55 3.621 58.581 0 63 0h28.999C96.418 0 100 3.621 100 8.087V37.4C100 77.636 78.497 81 71.309 81zm1.69-4.109c8.062-.627 23-6.283 23-39.49V8.087c0-2.231-1.793-4.043-4-4.043H63c-2.207 0-4 1.813-4 4.043V37.4c0 2.229 1.793 4.042 4 4.042h21.127l-.046 4.091L84 52.607l-.014 1.229-.688 1.013c-1.688 2.483-4.876 6.863-7.286 8.28-.91.537-1.979.89-3.013 1.121v12.641"/>
</svg>

                <p>Cory is excellent faciltator and proved to be extremely knowledgeable in Golang.  I'd honestly take this session again.  He is engaging and able to cover topics pertinent to specific instances.</p>
                <h4 class="name">- Workshop Attendee -</h4>
                <h4>Global Fortune 500 Company</h4>
            </div>
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="100" height="81" viewBox="0 0 100 81">
  <path fill="#F9C861" d="M16.308 81c-1.443 0-2.309-.135-2.309-.135V60.648s3.311-.017 5-1.012c1.992-1.174 6-7.074 6-7.074l.08-7.078H8c-4.419 0-8-3.618-8-8.084V8.087C0 3.621 3.581 0 8 0h28.999C41.418 0 45 3.621 45 8.087V37.4C45 77.636 23.497 81 16.308 81zm1.691-4.109c8.062-.627 23-6.283 23-39.49V8.087c0-2.231-1.793-4.043-4-4.043H8c-2.207 0-4 1.813-4 4.043V37.4c0 2.229 1.793 4.042 4 4.042h21.127l-.046 4.091L29 52.607l-.014 1.229-.688 1.013c-1.688 2.483-4.876 6.863-7.286 8.28-.91.537-1.98.89-3.013 1.121v12.641M71.309 81c-1.443 0-2.31-.135-2.31-.135V60.648s3.312-.017 5-1.012c1.992-1.174 6-7.074 6-7.074l.08-7.078H63c-4.419 0-8-3.618-8-8.084V8.087C55 3.621 58.581 0 63 0h28.999C96.418 0 100 3.621 100 8.087V37.4C100 77.636 78.497 81 71.309 81zm1.69-4.109c8.062-.627 23-6.283 23-39.49V8.087c0-2.231-1.793-4.043-4-4.043H63c-2.207 0-4 1.813-4 4.043V37.4c0 2.229 1.793 4.042 4 4.042h21.127l-.046 4.091L84 52.607l-.014 1.229-.688 1.013c-1.688 2.483-4.876 6.863-7.286 8.28-.91.537-1.979.89-3.013 1.121v12.641"/>
</svg>

                <p>I had a basic understanding of Go coming into this session.  After this training I am able to understand how to apply topics such as concurrency and gRPC which will be helpful for my team.</p>
                <h4 class="name">- Workshop Attendee -</h4>
                <h4>Global Fortune 500 Company</h4>
            </div>
            <div>
            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="81" viewBox="0 0 100 81">
  <path fill="#F9C861" d="M16.308 81c-1.443 0-2.309-.135-2.309-.135V60.648s3.311-.017 5-1.012c1.992-1.174 6-7.074 6-7.074l.08-7.078H8c-4.419 0-8-3.618-8-8.084V8.087C0 3.621 3.581 0 8 0h28.999C41.418 0 45 3.621 45 8.087V37.4C45 77.636 23.497 81 16.308 81zm1.691-4.109c8.062-.627 23-6.283 23-39.49V8.087c0-2.231-1.793-4.043-4-4.043H8c-2.207 0-4 1.813-4 4.043V37.4c0 2.229 1.793 4.042 4 4.042h21.127l-.046 4.091L29 52.607l-.014 1.229-.688 1.013c-1.688 2.483-4.876 6.863-7.286 8.28-.91.537-1.98.89-3.013 1.121v12.641M71.309 81c-1.443 0-2.31-.135-2.31-.135V60.648s3.312-.017 5-1.012c1.992-1.174 6-7.074 6-7.074l.08-7.078H63c-4.419 0-8-3.618-8-8.084V8.087C55 3.621 58.581 0 63 0h28.999C96.418 0 100 3.621 100 8.087V37.4C100 77.636 78.497 81 71.309 81zm1.69-4.109c8.062-.627 23-6.283 23-39.49V8.087c0-2.231-1.793-4.043-4-4.043H63c-2.207 0-4 1.813-4 4.043V37.4c0 2.229 1.793 4.042 4 4.042h21.127l-.046 4.091L84 52.607l-.014 1.229-.688 1.013c-1.688 2.483-4.876 6.863-7.286 8.28-.91.537-1.979.89-3.013 1.121v12.641"/>
</svg>

                <p>This course provided experience and exposure to what Go can really do.  I feel this is what most other training courses lack.</p>
                <h4 class="name">- Workshop Attendee -</h4>
                <h4>Global Fortune 500 Company</h4>
            </div>
        </div>
    </div>
</section>


		<section class="courses-intro ice-bg">
			<div class="wrapper flex-768 flex--content-vertical-center flex--content-row-reverse flex--content-space-between">
				<figure><img src="/assets/images/image.jpg" alt=""/></figure>
				<div class="content">
					<h2 class="section-title"><span>Our <span class="gl"><svg xmlns="http://www.w3.org/2000/svg" width="107" height="40" viewBox="0 0 107 40">
  <path fill="#00ACD7" d="M8.075 12.111c-.209 0-.26-.104-.156-.26l1.094-1.408c.104-.156.365-.26.573-.26h18.599c.209 0 .26.156.156.313l-.886 1.355c-.104.156-.365.313-.521.313l-18.859-.053zM.208 16.908c-.209 0-.26-.105-.156-.261l1.094-1.407c.104-.156.364-.26.572-.26h23.756c.209 0 .313.156.26.313l-.417 1.25c-.052.209-.261.313-.469.313l-24.64.052zm12.608 4.795c-.209 0-.26-.156-.156-.313l.729-1.303c.104-.157.313-.313.521-.313h10.419c.209 0 .313.156.313.365l-.104 1.25c0 .209-.209.365-.365.365l-11.357-.051zm54.077-10.53l-8.753 2.293c-.781.209-.833.261-1.511-.521-.781-.887-1.354-1.464-2.448-1.981-3.282-1.616-6.46-1.147-9.429.782-3.543 2.293-5.366 5.682-5.314 9.905.052 4.169 2.917 7.61 7.033 8.184 3.542.47 6.512-.782 8.856-3.44.469-.574.886-1.199 1.406-1.929H46.679c-1.094 0-1.354-.678-.99-1.564.677-1.616 1.928-4.326 2.657-5.682.156-.313.521-.834 1.302-.834h18.963c-.104 1.407-.104 2.814-.313 4.223-.573 3.753-1.979 7.193-4.271 10.217-3.751 4.952-8.648 8.029-14.848 8.863-5.105.677-9.846-.313-14.015-3.441-3.859-2.919-6.043-6.777-6.616-11.573-.677-5.682.989-10.79 4.428-15.273 3.699-4.848 8.596-7.924 14.587-9.019C52.46-.504 57.148.07 61.369 2.938c2.761 1.824 4.741 4.326 6.044 7.35.313.469.104.73-.521.887v-.002z"/>
  <path fill="#00ACD7" d="M84.135 40c-4.74-.104-9.064-1.464-12.711-4.588-3.074-2.659-5.001-6.047-5.626-10.061-.938-5.89.677-11.104 4.22-15.743 3.804-5.004 8.388-7.611 14.587-8.706C89.919-.036 94.92.485 99.453 3.561c4.116 2.814 6.668 6.62 7.345 11.624.886 7.038-1.146 12.772-5.991 17.672-3.438 3.492-7.658 5.682-12.503 6.673-1.407.26-2.813.313-4.167.469h-.002zm12.4-21.06c-.052-.678-.052-1.199-.156-1.72-.939-5.161-5.679-8.08-10.629-6.933-4.845 1.095-7.971 4.169-9.116 9.071-.938 4.066 1.042 8.185 4.792 9.852 2.865 1.25 5.73 1.095 8.492-.313 4.117-2.133 6.356-5.473 6.617-9.957z"/>
</svg>
</span>
 courses aren’t just</span> built to teach</h2>
					<p>They are built to create change. Our curriculum is continuously updated using best practices and has been validated in some of the largest companies in the world. Each module is designed to send you away ready to tackle your biggest Go initiatives. With virtual training, a prominent member of the Go community leads your workshop to help get your team up to speed in as little as 2 to 4 days. </p>
					<p><a href="/virtual-golang-training" class="btn mango">Learn more</a></p>
				</div>
			</div>
		</section>

		<section class="blog-section">
			<div class="wrapper">
				<h2 class="section-title mango"><span>Latest</span> Blog</h2>
				<div class="flex-768 flex--content-space-between">

					
<div class="post">
	<a href="/articles/masters-style-go-courses">
		<figure><img src="/assets/images/blog/masters-style-go-courses-1x.png" srcset="/assets/images/blog/masters-style-go-courses-1x.png 2x, /assets/images/blog/masters-style-go-courses.png 3x"></figure>
	</a>
	<h3>
		<a href="/articles/masters-style-go-courses">
			Masters Style Go Courses
		</a>
	</h3>
	<ul class="post-meta flex flex--wrap">
		<li class="author">Mark Bates</li>
		<li class="date">04/27/2021</li>
	</ul>
	<p><html><head></head> <body></body></html> After training for over four years, and recently enrolling in my own Masters degree program, I've married both of my passions and I'm excited to announce our new Masters Style Go Courses!</p>
	<p class="more"><a href="/articles/masters-style-go-courses"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
</div>

<div class="post">
	<a href="/articles/table-driven-testing-in-parallel">
		<figure><img src="/assets/images/blog/table-driven-testing-in-parallel-1x.png" srcset="/assets/images/blog/table-driven-testing-in-parallel-1x.png 2x, /assets/images/blog/table-driven-testing-in-parallel.png 3x"></figure>
	</a>
	<h3>
		<a href="/articles/table-driven-testing-in-parallel">
			Table Driven Testing In Parallel
		</a>
	</h3>
	<ul class="post-meta flex flex--wrap">
		<li class="author">Cory LaNou</li>
		<li class="date">04/21/2021</li>
	</ul>
	<p><html><head></head> <body></body></html> Table driven testing is not a unique concept to the Go programming language.  However, there are some great features that make table driven testing in Go faster and more reusable.  This article will cover how to get the most out of table driven testing with Go (golang).</p>
	<p class="more"><a href="/articles/table-driven-testing-in-parallel"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
</div>

<div class="post">
	<a href="/articles/golang-1.16-io-fs-improve-test-performance">
		<figure><img src="/assets/images/blog/golang-1.16-io-fs-improve-test-performance-1x.png" srcset="/assets/images/blog/golang-1.16-io-fs-improve-test-performance-1x.png 2x, /assets/images/blog/golang-1.16-io-fs-improve-test-performance.png 3x"></figure>
	</a>
	<h3>
		<a href="/articles/golang-1.16-io-fs-improve-test-performance">
			Exploring &#34;io/fs&#34; to Improve Test Performance and Testability
		</a>
	</h3>
	<ul class="post-meta flex flex--wrap">
		<li class="author">Mark Bates</li>
		<li class="date">02/22/2021</li>
	</ul>
	<p><html><head></head> <body></body></html> The most anticipated feature of Go <code language="plain">1.16</code> is the addition to the Go tooling, and standard library, that allow for embedding static content into binaries. While it is tempting to start playing with this new toy right away, it is important to understand how it works first. In this article we are going to take a look at the new <a href="https://pkg.go.dev/io/fs"><code language="plain">io/fs</code></a> package introduced in Go <code language="plain">1.16</code> to support embedding.</p>
	<p class="more"><a href="/articles/golang-1.16-io-fs-improve-test-performance"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19" height="17" viewBox="0 0 19 17">
  <g>
    <defs>
      <path id="a" d="M0 9.443h15.196l-7.598 6.612L9.497 17 19 8.499 9.554 0 7.598.943l7.598 6.611H0z"/>
    </defs>
    <use xlink:href="#a" overflow="visible" fill-rule="evenodd" clip-rule="evenodd" fill="#8CBC82"/>
  </g>
</svg>
 Learn more</a></p>
</div>



				</div>
				<div class="btn-wrapper">
					<a href="/articles" class="btn green">View all</a>
				</div>
			</div>
		</section>
</article> 
<link rel="stylesheet" href="/assets/css/slick.css">
<script src="/assets/js/slick.min.js"></script>
<script>
	jQuery(document).ready(function($) {
		$('.testimonials').slick({
			dots: true,
			infinite: false,
			speed: 300,
			slidesToShow: 2,
			slidesToScroll: 2,
			arrows:false,
			responsive: [
				{
					breakpoint: 1024,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1
					}
				}
			]
		});
	});
</script>

        </main>

        <section class="newsletter-section wrapper">
    <div class="newsletter">
        <h5 class="h2">Subscribe to our <b>newsletter</b></h5>
<form action="https://www.getdrip.com/forms/72576353/submissions" method="post" class="flex" data-drip-embedded-form="72576353" id="drip-ef-72576353">
            <input type="email" id="drip-email" name="fields[email]" value="" placeholder="Enter Email Address">
            <div style="display: none;" aria-hidden="true">
              <input type="text" id="website" name="website" tabindex="-1" autocomplete="false" value="">
            </div>
            <button type="submit" class="gotham" data-drip-attribute="sign-up-button">Subscribe</button>
        </form>
    </div>
</section>
<footer class="site-footer">
    <div class="wrapper">
    <div class="flex-768 widgets-wrapper">
        <div class="widget">
            <h4>Navigation</h4>
            <ul class="links">
                <li><a href="/virtual-golang-training">Virtual GO Training</a></li>
                <li><a href="/team">Team</a></li>
                <li><a href="/articles">Blog</a></li>
                <li><a href="/contact">Contact</a></li>
                <li><a href="/media-kit">Media Kit</a></li>
                <li><a href="/auth/github">Login</a></li>
            </ul>
        </div>
        <div class="widget">
            <h4>Courses</h4>
            <ul class="links">
              <li><a href="/courses/introduction-to-golang-training">Intro to Go</a></li>
              <li><a href="/courses/advanced-golang-training">Advanced Go</a></li>
              <li><a href="testing-stubbing-automating-golang-training">Testing in Go</a></li>
              <li><a href="/courses/profiling-optimizing-golang-training">Profiling &amp; Optimization</a></li>
              <li><a href="/courses/web-api-golang-training">Web API in Go</a></li>
              <li><a href="/courses/grpc-gateway-golang-training">gRPC/gateway in Go</a></li>
              <li><a href="/courses/mastering-golang-training">Mastering Go</a></li>
              <li><a href="/courses/custom-golang-courses">Custom Go Courses</a></li>
            </ul>
        </div>
        <div class="widget contacts">
            <h4>Contact</h4>
            <ul class="links">
                
                    
                    
                <li><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox=".001 0 18 18">
  <path fill="#FFF" d="M17.999 14.216c0 .461-.204 1.355-.396 1.777-.269.627-.984 1.035-1.56 1.355-.754.41-1.52.652-2.376.652-1.189 0-2.264-.485-3.351-.882a11.894 11.894 0 01-2.236-1.061c-2.173-1.343-4.793-3.964-6.136-6.137A11.932 11.932 0 01.883 7.683C.487 6.596.001 5.521.001 4.333c0-.856.243-1.624.652-2.378.32-.575.729-1.291 1.355-1.56C2.43.205 3.324 0 3.785 0c.089 0 .179 0 .269.039.269.089.55.716.678.972.408.728.804 1.47 1.226 2.186.205.332.588.741.588 1.138 0 .78-2.313 1.918-2.313 2.608 0 .346.32.793.499 1.1 1.291 2.327 2.902 3.938 5.229 5.229.307.179.754.499 1.1.499.69 0 1.827-2.313 2.607-2.313.396 0 .804.383 1.138.588.716.422 1.457.818 2.187 1.227.256.128.881.409.972.678a.658.658 0 01.038.269l-.004-.004z"/>
</svg>
<a href="tel:+17153030145">+1 715-313-0145</a></li>
                <li><svg xmlns="http://www.w3.org/2000/svg" width="17" height="15" viewBox="0 0 17 15">
  <path fill="#FFF" d="M15.226 3.446l1.729 6.567c.191.728-.236 1.483-.951 1.678L4.042 14.953a1.346 1.346 0 01-1.648-.968L.665 7.417c.315.208.655.372 1.01.496 1.595.567 3.206 1.129 4.789 1.753.818.326 1.829.724 2.714.483l.017-.005c.885-.241 1.565-1.1 2.113-1.799a169.66 169.66 0 013.295-3.958c.238-.286.451-.602.623-.941zm-.64-2.431c.243.926-.211 1.946-.793 2.646-1.033 1.238-2.073 2.48-3.095 3.725-.431.517-1.124 1.521-1.782 1.7l-.017.004c-.658.18-1.752-.338-2.378-.566-1.497-.558-3.008-1.104-4.502-1.652C1.337 6.631.27 5.92.072 5.167c-.213-.81.035-1.623.904-1.86L12.937.045c.706-.192 1.456.242 1.649.97z"/>
</svg>
<a href="mailto:info@gopherguides.com?subject=Information%20Request">info@gopherguides.com</a></li>
            </ul>
        </div>
        <div class="widget brand">
            <a href="https://www.gopherguides.com/" id="logo-footer"><img src="/assets/images/logo.png" alt=""></a>
            <ul class="social-links">
                <li><a href="https://www.facebook.com/gopherguides" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="20" viewBox="0 0 13 20">
  <path fill="#CCC" d="M13 .144v3.173h-2.362c-1.851 0-2.197.709-2.197 1.731v2.271h4.409l-.587 3.558H8.441V20H3.836v-9.123H0V7.319h3.836v-2.62C3.836 1.659 6.169 0 9.569 0c1.625 0 3.025.096 3.431.144z"/>
</svg>
</a></li>
                <li><a href="https://twitter.com/gopherguides" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="21" height="18" viewBox="0 0 21 18">
  <path fill="#CCC" d="M21 2.139a9.593 9.593 0 01-2.159 2.348c.014.197.014.394.014.59C18.854 11.083 14.523 18 6.609 18 4.171 18 1.905 17.255 0 15.96c.346.044.68.057 1.04.057a8.342 8.342 0 005.343-1.939c-1.892-.043-3.478-1.35-4.024-3.15.268.042.534.069.813.069.385 0 .772-.056 1.132-.155C2.332 10.42.853 8.592.853 6.384v-.056a4.169 4.169 0 001.945.577C1.639 6.089.879 4.697.879 3.122c0-.844.213-1.617.587-2.292C3.584 3.585 6.77 5.387 10.34 5.583a5.367 5.367 0 01-.107-1.041C10.233 2.04 12.152 0 14.537 0a4.19 4.19 0 013.144 1.435A8.19 8.19 0 0020.413.338a4.494 4.494 0 01-1.892 2.503A8.363 8.363 0 0021 2.139z"/>
</svg>
</a></li>
                <li><a href="https://www.linkedin.com/company/gopher-guides/" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="19" viewBox="0 0 20 19">
  <path fill="#CCC" d="M4.544 6.174v12.824H.248V6.174h4.296zm.274-3.961c.013 1.229-.925 2.214-2.422 2.214H2.37C.925 4.427 0 3.442 0 2.213 0 .957.963 0 2.422 0c1.471 0 2.382.957 2.396 2.213zM20 11.647v7.351h-4.284v-6.859c0-1.721-.625-2.898-2.174-2.898-1.185 0-1.888.789-2.201 1.553-.104.285-.144.66-.144 1.048V19H6.913c.053-11.622 0-12.825 0-12.825h4.285v1.863h-.026c.56-.879 1.575-2.161 3.894-2.161 2.825 0 4.935 1.838 4.935 5.771v-.001z"/>
</svg>
</a></li>
                <li><a href="https://www.youtube.com/c/GopherGuides" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="14" viewBox=".001 0 20 14">
  <path fill="#CCC" d="M7.936 9.578L13.337 6.8 7.936 3.989v5.589zM10.001 0c4.208 0 6.998.2 6.998.2.391.045 1.25.045 2.009.845 0 0 .613.6.792 1.978.213 1.611.201 3.222.201 3.222v1.512s.012 1.611-.201 3.221c-.179 1.368-.792 1.978-.792 1.978-.759.788-1.619.788-2.009.833 0 0-2.79.211-6.998.211-5.201-.044-6.797-.199-6.797-.199-.446-.078-1.45-.056-2.209-.845 0 0-.614-.61-.792-1.978C-.009 9.367.002 7.757.002 7.757V6.245S-.01 4.633.203 3.023C.38 1.645.994 1.045.994 1.045c.758-.8 1.619-.8 2.008-.845 0 0 2.79-.2 6.999-.2z"/>
</svg>
</a></li>
            </ul>
        </div>
        </div>
        <p class="rob-c">&copy; 2020 gopher guides. all rights reserved</p>
    </div>
</footer>


    </body>
    
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-96905161-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-96905161-1');
</script>

    
<script type="text/javascript">
  var _dcq = _dcq || [];
  var _dcs = _dcs || {};
  _dcs.account = '8172278';

  (function() {
    var dc = document.createElement('script');
    dc.type = 'text/javascript'; dc.async = true;
    dc.src = '//tag.getdrip.com/8172278.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(dc, s);
  })();
</script>



    

<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '108213893123993');
  fbq('track', 'PageView');
</script>
<noscript>
  <img height="1" width="1" style="display:none" 
       src="https://www.facebook.com/tr?id=108213893123993&ev=PageView&noscript=1"/>
</noscript>


    
<script>
!function(e,t,n,s,u,a){e.twq||(s=e.twq=function(){s.exe?s.exe.apply(s,arguments):s.queue.push(arguments);
},s.version='1.1',s.queue=[],u=t.createElement(n),u.async=!0,u.src='//static.ads-twitter.com/uwt.js',
a=t.getElementsByTagName(n)[0],a.parentNode.insertBefore(u,a))}(window,document,'script');

twq('init','nygab');
twq('track','PageView');
</script>



</html>
