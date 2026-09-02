<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f8faff;
      --surface: #ffffff;
      --primary: #0b1e33;
      --secondary: #2b4b6f;
      --accent: #3b82f6;
      --accent-soft: #e8f0fe;
      --accent-glow: rgba(59, 130, 246, 0.15);
      --muted: #5e6f8d;
      --border-light: #e9edf4;
      --shadow-sm: 0 8px 20px rgba(0, 20, 50, 0.04);
      --shadow-hover: 0 16px 40px rgba(0, 20, 50, 0.08);
      --radius-card: 20px;
      --radius-btn: 60px;
      --transition: 0.25s ease;
    }

    body {
      background: var(--bg);
      color: var(--primary);
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---------- HEADER (friendly, clean) ---------- */
    header {
      background: rgba(255, 255, 255, 0.82);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.02);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 10px 0;
    }

    .header-grid {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.02em;
      color: var(--primary);
    }

    .brand i {
      color: var(--accent);
      font-size: 24px;
    }

    .brand span {
      background: var(--accent);
      color: white;
      font-size: 12px;
      font-weight: 700;
      padding: 2px 10px;
      border-radius: 40px;
      margin-left: 6px;
      letter-spacing: 0.3px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border: 1px solid var(--border-light);
      border-radius: 60px;
      padding: 4px 4px 4px 20px;
      box-shadow: var(--shadow-sm);
      transition: 0.2s;
      flex: 1 1 280px;
      max-width: 420px;
    }

    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px var(--accent-glow);
    }

    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 100%;
      outline: none;
      color: var(--primary);
    }

    .search-wrap input::placeholder {
      color: var(--muted);
      font-weight: 400;
    }

    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      width: 44px;
      height: 44px;
      border-radius: 60px;
      cursor: pointer;
      font-size: 16px;
      transition: 0.15s;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }

    .search-wrap button:hover {
      background: #2563eb;
      transform: scale(1.02);
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .nav-actions a {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      width: 44px;
      height: 44px;
      border-radius: 60px;
      color: var(--secondary);
      transition: 0.15s;
      background: transparent;
      font-size: 18px;
      text-decoration: none;
    }

    .nav-actions a:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .cart-btn {
      position: relative;
      background: var(--accent-soft);
      color: var(--accent);
      width: auto;
      padding: 0 18px 0 14px;
      gap: 8px;
      font-weight: 600;
      font-size: 15px;
      border-radius: 60px;
      height: 44px;
    }

    .cart-btn i {
      font-size: 18px;
    }

    .cart-badge {
      background: var(--accent);
      color: white;
      font-size: 12px;
      font-weight: 700;
      min-width: 22px;
      height: 22px;
      border-radius: 40px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 0 6px;
    }

    /* mobile menu toggle */
    .menu-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 24px;
      color: var(--primary);
      cursor: pointer;
      width: 44px;
      height: 44px;
      border-radius: 60px;
      transition: 0.15s;
    }

    .menu-toggle:hover {
      background: var(--accent-soft);
    }

    /* mobile nav */
    .mobile-nav {
      display: none;
      background: white;
      padding: 16px 24px 24px;
      border-radius: 0 0 24px 24px;
      box-shadow: var(--shadow-sm);
      margin-top: 6px;
    }

    .mobile-nav a {
      display: block;
      padding: 12px 0;
      color: var(--primary);
      font-weight: 500;
      border-bottom: 1px solid var(--border-light);
      text-decoration: none;
    }

    .mobile-nav a:last-child {
      border-bottom: none;
    }

    /* ---------- HERO (welcoming) ---------- */
    .hero {
      background: linear-gradient(145deg, #0b1e33 0%, #1a3552 100%);
      border-radius: 32px;
      padding: 56px 40px;
      margin: 28px auto 20px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 30px;
      box-shadow: 0 20px 40px -12px rgba(0, 20, 40, 0.25);
    }

    .hero-content {
      max-width: 600px;
    }

    .hero-content .tag {
      background: rgba(255, 255, 255, 0.12);
      backdrop-filter: blur(4px);
      padding: 6px 16px;
      border-radius: 60px;
      font-size: 13px;
      font-weight: 600;
      display: inline-block;
      letter-spacing: 0.3px;
      margin-bottom: 14px;
    }

    .hero-content h1 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: clamp(32px, 5vw, 52px);
      line-height: 1.1;
      letter-spacing: -0.02em;
      margin-bottom: 16px;
    }

    .hero-content p {
      opacity: 0.85;
      max-width: 480px;
      font-size: 16px;
      margin-bottom: 28px;
    }

    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }

    .btn-primary,
    .btn-outline-light {
      border: none;
      padding: 14px 32px;
      border-radius: var(--radius-btn);
      font-weight: 600;
      font-size: 15px;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      cursor: pointer;
      transition: 0.2s;
      text-decoration: none;
    }

    .btn-primary {
      background: white;
      color: var(--primary);
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
    }

    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 12px 24px rgba(0, 0, 0, 0.12);
    }

    .btn-outline-light {
      background: transparent;
      color: white;
      border: 1.5px solid rgba(255, 255, 255, 0.35);
    }

    .btn-outline-light:hover {
      background: rgba(255, 255, 255, 0.08);
      border-color: rgba(255, 255, 255, 0.6);
    }

    .hero-visual {
      display: flex;
      align-items: center;
      gap: 14px;
    }

    .hero-visual i {
      font-size: 56px;
      opacity: 0.3;
      color: white;
    }

    /* ---------- SECTION headings ---------- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin: 40px 0 20px;
    }

    .section-head h2 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 700;
      font-size: 26px;
      letter-spacing: -0.01em;
    }

    .section-head .muted {
      color: var(--muted);
      font-size: 15px;
    }

    /* ---------- CATEGORIES ---------- */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(130px, 1fr));
      gap: 16px;
      margin-bottom: 8px;
    }

    .category-card {
      background: white;
      border-radius: var(--radius-card);
      padding: 18px 8px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid transparent;
    }

    .category-card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }

    .category-card i {
      font-size: 28px;
      color: var(--accent);
      background: var(--accent-soft);
      padding: 12px;
      border-radius: 60px;
      margin-bottom: 10px;
      display: inline-block;
    }

    .category-card h4 {
      font-weight: 600;
      font-size: 14px;
      margin-top: 4px;
    }

    .category-card .sub {
      font-size: 12px;
      color: var(--muted);
      margin-top: 4px;
    }

    /* ---------- PRODUCTS ---------- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }

    .product-card {
      background: white;
      border-radius: var(--radius-card);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(0, 0, 0, 0.02);
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
    }

    .product-img {
      height: 200px;
      background: #f2f6fe;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 48px;
      color: var(--secondary);
    }

    .product-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .product-body {
      padding: 16px 16px 12px;
      flex: 1;
    }

    .product-body .badge {
      background: var(--accent-soft);
      color: var(--accent);
      font-size: 11px;
      font-weight: 700;
      padding: 2px 12px;
      border-radius: 40px;
      display: inline-block;
      margin-bottom: 8px;
    }

    .product-body h5 {
      font-weight: 600;
      font-size: 16px;
      margin-bottom: 4px;
    }

    .product-body .category-tag {
      font-size: 13px;
      color: var(--muted);
      margin-bottom: 10px;
    }

    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
    }

    .price-current {
      font-weight: 700;
      font-size: 18px;
    }

    .price-old {
      color: var(--muted);
      font-size: 14px;
      text-decoration: line-through;
    }

    .rating {
      color: #f5b342;
      font-size: 14px;
      letter-spacing: 1px;
    }

    .product-footer {
      padding: 0 16px 16px;
      display: flex;
      gap: 8px;
    }

    .btn-add {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 12px 0;
      border-radius: 60px;
      font-weight: 600;
      font-size: 14px;
      cursor: pointer;
      transition: 0.15s;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }

    .btn-add:hover {
      background: var(--accent);
    }

    .btn-wish {
      background: transparent;
      border: 1px solid var(--border-light);
      border-radius: 60px;
      width: 46px;
      height: 46px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: 0.15s;
      color: var(--muted);
      font-size: 16px;
    }

    .btn-wish:hover {
      background: var(--accent-soft);
      color: var(--accent);
      border-color: var(--accent);
    }

    /* ---------- DEAL / FLASH SALE ---------- */
    .deal-card {
      background: white;
      border-radius: var(--radius-card);
      padding: 32px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 30px;
      box-shadow: var(--shadow-sm);
      margin: 16px 0 12px;
    }

    .deal-info {
      flex: 1 1 260px;
    }

    .deal-info h3 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 28px;
      font-weight: 700;
    }

    .deal-timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }

    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 12px;
      border-radius: 16px;
      min-width: 68px;
      text-align: center;
    }

    .time-box .num {
      font-size: 26px;
      font-weight: 700;
      line-height: 1.2;
    }

    .time-box .label {
      font-size: 11px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    .deal-price {
      display: flex;
      align-items: center;
      gap: 14px;
      flex-wrap: wrap;
    }

    .deal-price .current {
      font-size: 30px;
      font-weight: 700;
    }

    .deal-price .old {
      font-size: 18px;
      color: var(--muted);
      text-decoration: line-through;
    }

    .deal-badge {
      background: #f43f5e;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 14px;
    }

    .deal-visual {
      flex: 0 0 140px;
      height: 140px;
      background: var(--accent-soft);
      border-radius: 24px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 60px;
      color: var(--accent);
    }

    /* ---------- TESTIMONIALS ---------- */
    .testimonial-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 2px 20px;
      scroll-snap-type: x mandatory;
    }

    .testimonial-card {
      min-width: 280px;
      background: white;
      padding: 24px;
      border-radius: var(--radius-card);
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      flex-shrink: 0;
    }

    .testimonial-card .stars {
      color: #f5b342;
      font-size: 16px;
      margin-bottom: 8px;
    }

    .testimonial-card p {
      font-size: 15px;
      color: var(--secondary);
    }

    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 16px;
    }

    .testimonial-card .avatar {
      width: 40px;
      height: 40px;
      background: var(--accent-soft);
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      color: var(--accent);
    }

    /* ---------- NEWSLETTER ---------- */
    .newsletter-box {
      background: white;
      border-radius: var(--radius-card);
      padding: 40px 32px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      margin: 32px 0 16px;
    }

    .newsletter-box h3 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 26px;
      font-weight: 700;
    }

    .newsletter-box p {
      color: var(--muted);
      margin: 6px 0 20px;
    }

    .newsletter-form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 10px;
      max-width: 500px;
      margin: 0 auto;
    }

    .newsletter-form input {
      flex: 1 1 200px;
      padding: 14px 20px;
      border: 1px solid var(--border-light);
      border-radius: 60px;
      font-size: 15px;
      outline: none;
      background: var(--bg);
    }

    .newsletter-form input:focus {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px var(--accent-glow);
    }

    .newsletter-form button {
      background: var(--accent);
      border: none;
      color: white;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      cursor: pointer;
      transition: 0.15s;
    }

    .newsletter-form button:hover {
      background: #2563eb;
    }

    /* ---------- FOOTER ---------- */
    footer {
      margin-top: 40px;
      padding: 32px 0 24px;
      border-top: 1px solid var(--border-light);
      color: var(--muted);
    }

    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 32px;
      justify-content: space-between;
    }

    .footer-brand p {
      max-width: 300px;
      margin-top: 8px;
      font-size: 14px;
    }

    .footer-links {
      display: flex;
      gap: 48px;
      flex-wrap: wrap;
    }

    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 6px;
    }

    .footer-links .title {
      font-weight: 600;
      color: var(--primary);
      margin-bottom: 4px;
    }

    .footer-links a {
      text-decoration: none;
      color: var(--muted);
      font-size: 14px;
      transition: 0.1s;
    }

    .footer-links a:hover {
      color: var(--accent);
    }

    .footer-copy {
      text-align: center;
      margin-top: 28px;
      font-size: 13px;
      border-top: 1px solid var(--border-light);
      padding-top: 20px;
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 850px) {
      .search-wrap {
        flex: 1 1 180px;
        max-width: 260px;
      }
      .menu-toggle {
        display: inline-flex;
        align-items: center;
        justify-content: center;
      }
      .mobile-nav.open {
        display: block;
      }
      .hero {
        padding: 36px 24px;
        border-radius: 24px;
      }
    }

    @media (max-width: 600px) {
      .header-grid {
        flex-wrap: wrap;
      }
      .search-wrap {
        order: 3;
        flex: 1 1 100%;
        max-width: 100%;
      }
      .nav-actions a {
        width: 40px;
        height: 40px;
        font-size: 16px;
      }
      .cart-btn {
        padding: 0 12px 0 10px;
        height: 40px;
        font-size: 13px;
      }
      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 14px;
      }
      .deal-card {
        flex-direction: column;
        align-items: stretch;
        text-align: center;
      }
      .deal-visual {
        flex: 1 1 auto;
        height: 100px;
      }
      .deal-timer {
        justify-content: center;
      }
    }

    @media (max-width: 430px) {
      .product-grid {
        grid-template-columns: 1fr;
      }
      .category-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    /* utilities */
    .muted {
      color: var(--muted);
    }
    .mt-1 { margin-top: 6px; }
    .mb-1 { margin-bottom: 6px; }
  </style>
</head>
<body>
  <header>
    <div class="container header-grid">
      <!-- left: brand + mobile toggle -->
      <div style="display:flex;align-items:center;gap:6px;">
        <button class="menu-toggle" id="menuToggle" aria-label="Menu">
          <i class="fas fa-bars"></i>
        </button>
        <a href="#" class="brand" style="text-decoration:none;">
          <i class="fas fa-store-alt"></i> Nexus<span>shop</span>
        </a>
      </div>

      <!-- search -->
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search for products..." aria-label="Search">
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-arrow-right"></i></button>
      </div>

      <!-- right actions -->
      <div class="nav-actions">
        <a href="#" aria-label="Account"><i class="far fa-user-circle"></i></a>
        <a href="#" aria-label="Wishlist"><i class="far fa-heart"></i></a>
        <a href="#" class="cart-btn" id="cartBtn">
          <i class="fas fa-shopping-bag"></i> Cart
          <span class="cart-badge" id="cartCount">0</span>
        </a>
      </div>
    </div>

    <!-- mobile nav -->
    <div class="container mobile-nav" id="mobileNav">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#"><i class="fas fa-th-large"></i> Categories</a>
      <a href="#"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
      <a href="#"><i class="fas fa-info-circle"></i> About</a>
    </div>
  </header>

  <main class="container">
    <!-- HERO -->
    <section class="hero">
      <div class="hero-content">
        <div class="tag"><i class="fas fa-gem"></i> New winter collection</div>
        <h1>Premium picks, <br>curated for you</h1>
        <p>Discover the latest in fashion, tech &amp; lifestyle. Free shipping on orders over $50.</p>
        <div class="hero-actions">
          <button class="btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn-outline-light" id="exploreDeals">Explore deals</button>
        </div>
      </div>
      <div class="hero-visual">
        <i class="fas fa-cube"></i>
        <i class="fas fa-mobile-alt"></i>
        <i class="fas fa-headphones"></i>
      </div>
    </section>

    <!-- CATEGORIES -->
    <div class="section-head">
      <h2>Shop by category</h2>
      <span class="muted">Find what you love</span>
    </div>
    <div class="category-grid" id="categoriesGrid"></div>

    <!-- PRODUCTS -->
    <div class="section-head" id="productSection">
      <h2>Trending products</h2>
      <span class="muted">Popular right now</span>
    </div>
    <div class="product-grid" id="productsGrid"></div>

    <!-- DEAL / FLASH SALE -->
    <div class="section-head" id="deals">
      <h2>⚡ Flash sale</h2>
      <span class="muted">Limited time</span>
    </div>
    <div class="deal-card">
      <div class="deal-info">
        <h3>MacBook Air M2</h3>
        <p class="muted">Thin, light, and incredibly fast.</p>
        <div class="deal-timer">
          <div class="time-box"><span class="num" id="dealDays">0</span><div class="label">Days</div></div>
          <div class="time-box"><span class="num" id="dealHours">00</span><div class="label">Hrs</div></div>
          <div class="time-box"><span class="num" id="dealMinutes">00</span><div class="label">Min</div></div>
          <div class="time-box"><span class="num" id="dealSeconds">00</span><div class="label">Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="current">$999</span>
          <span class="old">$1,199</span>
          <span class="deal-badge">-17%</span>
        </div>
        <p style="margin-top:8px;"><strong>12</strong> items left at this price</p>
        <button class="btn-primary" id="buyDeal" style="margin-top:12px;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
      <div class="deal-visual">
        <i class="fas fa-laptop"></i>
      </div>
    </div>

    <!-- TESTIMONIALS -->
    <div class="section-head">
      <h2>What customers say</h2>
      <span class="muted">Real reviews</span>
    </div>
    <div class="testimonial-scroll" id="testimonials">
      <div class="testimonial-card">
        <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>"Super fast delivery and the quality exceeded my expectations!"</p>
        <div class="author"><span class="avatar">AM</span><div><strong>Ava Martin</strong><div class="muted">Verified buyer</div></div></div>
      </div>
      <div class="testimonial-card">
        <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
        <p>"Great selection and smooth checkout. Will definitely order again."</p>
        <div class="author"><span class="avatar">ML</span><div><strong>Michael Lee</strong><div class="muted">Frequent buyer</div></div></div>
      </div>
      <div class="testimonial-card">
        <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>"The customer support was incredibly helpful. Great experience!"</p>
        <div class="author"><span class="avatar">SR</span><div><strong>Sophia Rivera</strong><div class="muted">First time buyer</div></div></div>
      </div>
    </div>

    <!-- NEWSLETTER -->
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <p>Get exclusive offers and new arrivals straight to your inbox.</p>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
        <button type="submit" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px;font-size:14px;display:none;"></div>
    </div>
  </main>

  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <div style="font-weight:800;font-size:20px;display:flex;align-items:center;gap:6px;"><i class="fas fa-store-alt" style="color:var(--accent);"></i> NexusShop</div>
          <p>Modern e‑commerce demo built with ❤️. All rights reserved.</p>
          <div style="display:flex;gap:12px;margin-top:10px;">
            <a href="#" style="color:var(--muted);font-size:20px;"><i class="fab fa-facebook"></i></a>
            <a href="#" style="color:var(--muted);font-size:20px;"><i class="fab fa-twitter"></i></a>
            <a href="#" style="color:var(--muted);font-size:20px;"><i class="fab fa-instagram"></i></a>
          </div>
        </div>
        <div class="footer-links">
          <div><span class="title">Company</span><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
          <div><span class="title">Support</span><a href="#">Help Center</a><a href="#">Shipping &amp; returns</a><a href="#">Contact</a></div>
        </div>
      </div>
      <div class="footer-copy">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </div>
  </footer>

  <script>
    // ---- DATA ----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:
