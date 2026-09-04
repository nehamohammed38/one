<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5" />
  <title>NexusShop · friendly e‑commerce</title>
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
      --bg: #f6f9fc;
      --surface: #ffffff;
      --primary: #0b1e33;
      --secondary: #2b4b6f;
      --accent: #3b82f6;
      --accent-soft: #e8f0fe;
      --accent-glow: rgba(59, 130, 246, 0.18);
      --muted: #5e6f8d;
      --border-light: #e2e9f2;
      --shadow-sm: 0 6px 18px rgba(0, 20, 50, 0.05);
      --shadow-hover: 0 14px 32px rgba(0, 20, 50, 0.10);
      --radius-card: 20px;
      --radius-btn: 60px;
      --transition: 0.2s ease;
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
      padding: 0 20px;
    }

    /* ---------- HEADER (clean, inviting) ---------- */
    header {
      background: rgba(255, 255, 255, 0.88);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.02);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 8px 0;
    }

    .header-grid {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      flex-wrap: wrap;
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
      text-decoration: none;
    }

    .brand i {
      color: var(--accent);
      font-size: 24px;
    }

    .brand span {
      background: var(--accent);
      color: white;
      font-size: 11px;
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
      padding: 3px 3px 3px 18px;
      box-shadow: var(--shadow-sm);
      transition: 0.2s;
      flex: 1 1 260px;
      max-width: 400px;
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
      gap: 4px;
    }

    .nav-actions a {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      width: 42px;
      height: 42px;
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
      background: var(--accent-soft);
      color: var(--accent);
      width: auto;
      padding: 0 16px 0 12px;
      gap: 6px;
      font-weight: 600;
      font-size: 14px;
      border-radius: 60px;
      height: 42px;
    }

    .cart-btn i {
      font-size: 17px;
    }

    .cart-badge {
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
      min-width: 20px;
      height: 20px;
      border-radius: 40px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 0 6px;
    }

    .menu-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 22px;
      color: var(--primary);
      cursor: pointer;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      transition: 0.15s;
    }

    .menu-toggle:hover {
      background: var(--accent-soft);
    }

    .mobile-nav {
      display: none;
      background: white;
      padding: 16px 20px 20px;
      border-radius: 0 0 24px 24px;
      box-shadow: var(--shadow-sm);
      margin-top: 4px;
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

    /* ---------- HERO (warm, welcoming) ---------- */
    .hero {
      background: linear-gradient(135deg, #0b1e33 0%, #1f3b5c 100%);
      border-radius: 32px;
      padding: 48px 36px;
      margin: 24px auto 20px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      box-shadow: 0 16px 40px -8px rgba(0, 20, 40, 0.3);
    }

    .hero-content {
      max-width: 560px;
    }

    .hero-content .tag {
      background: rgba(255, 255, 255, 0.12);
      backdrop-filter: blur(4px);
      padding: 5px 16px;
      border-radius: 60px;
      font-size: 13px;
      font-weight: 600;
      display: inline-block;
      letter-spacing: 0.3px;
      margin-bottom: 12px;
    }

    .hero-content h1 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: clamp(30px, 4.5vw, 48px);
      line-height: 1.1;
      letter-spacing: -0.02em;
      margin-bottom: 14px;
    }

    .hero-content p {
      opacity: 0.85;
      max-width: 440px;
      font-size: 16px;
      margin-bottom: 24px;
    }

    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }

    .btn-primary,
    .btn-outline-light {
      border: none;
      padding: 13px 28px;
      border-radius: var(--radius-btn);
      font-weight: 600;
      font-size: 15px;
      display: inline-flex;
      align-items: center;
      gap: 8px;
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
      box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
    }

    .btn-outline-light {
      background: transparent;
      color: white;
      border: 1.5px solid rgba(255, 255, 255, 0.3);
    }

    .btn-outline-light:hover {
      background: rgba(255, 255, 255, 0.08);
      border-color: rgba(255, 255, 255, 0.6);
    }

    .hero-visual {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .hero-visual i {
      font-size: 48px;
      opacity: 0.25;
      color: white;
    }

    /* ---------- SECTION headings ---------- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 10px;
      margin: 36px 0 18px;
    }

    .section-head h2 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 700;
      font-size: 24px;
      letter-spacing: -0.01em;
    }

    .section-head .muted {
      color: var(--muted);
      font-size: 14px;
    }

    /* ---------- CATEGORIES (friendly tiles) ---------- */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
      gap: 14px;
      margin-bottom: 6px;
    }

    .category-card {
      background: white;
      border-radius: var(--radius-card);
      padding: 16px 6px;
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
      font-size: 26px;
      color: var(--accent);
      background: var(--accent-soft);
      padding: 10px;
      border-radius: 60px;
      margin-bottom: 8px;
      display: inline-block;
    }

    .category-card h4 {
      font-weight: 600;
      font-size: 13px;
      margin-top: 4px;
    }

    .category-card .sub {
      font-size: 11px;
      color: var(--muted);
      margin-top: 2px;
    }

    /* ---------- PRODUCTS (clean cards) ---------- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
      gap: 20px;
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
      height: 180px;
      background: #f2f6fe;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 40px;
      color: var(--secondary);
    }

    .product-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .product-body {
      padding: 14px 14px 10px;
      flex: 1;
    }

    .product-body .badge {
      background: var(--accent-soft);
      color: var(--accent);
      font-size: 10px;
      font-weight: 700;
      padding: 2px 10px;
      border-radius: 40px;
      display: inline-block;
      margin-bottom: 6px;
    }

    .product-body h5 {
      font-weight: 600;
      font-size: 15px;
      margin-bottom: 2px;
    }

    .product-body .category-tag {
      font-size: 12px;
      color: var(--muted);
      margin-bottom: 8px;
    }

    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      flex-wrap: wrap;
    }

    .price-current {
      font-weight: 700;
      font-size: 17px;
    }

    .price-old {
      color: var(--muted);
      font-size: 13px;
      text-decoration: line-through;
    }

    .rating {
      color: #f5b342;
      font-size: 13px;
      letter-spacing: 1px;
    }

    .product-footer {
      padding: 0 14px 14px;
      display: flex;
      gap: 8px;
    }

    .btn-add {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 10px 0;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
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
      width: 42px;
      height: 42px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: 0.15s;
      color: var(--muted);
      font-size: 15px;
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
      padding: 28px 30px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 24px;
      box-shadow: var(--shadow-sm);
      margin: 14px 0 10px;
    }

    .deal-info {
      flex: 1 1 240px;
    }

    .deal-info h3 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 26px;
      font-weight: 700;
    }

    .deal-timer {
      display: flex;
      gap: 10px;
      margin: 14px 0;
    }

    .time-box {
      background: var(--primary);
      color: white;
      padding: 8px 10px;
      border-radius: 14px;
      min-width: 60px;
      text-align: center;
    }

    .time-box .num {
      font-size: 22px;
      font-weight: 700;
      line-height: 1.2;
    }

    .time-box .label {
      font-size: 10px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.4px;
    }

    .deal-price {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
    }

    .deal-price .current {
      font-size: 28px;
      font-weight: 700;
    }

    .deal-price .old {
      font-size: 16px;
      color: var(--muted);
      text-decoration: line-through;
    }

    .deal-badge {
      background: #f43f5e;
      color: white;
      padding: 3px 12px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 13px;
    }

    .deal-visual {
      flex: 0 0 120px;
      height: 120px;
      background: var(--accent-soft);
      border-radius: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 52px;
      color: var(--accent);
    }

    /* ---------- TESTIMONIALS (scrollable) ---------- */
    .testimonial-scroll {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 6px 2px 18px;
      scroll-snap-type: x mandatory;
    }

    .testimonial-card {
      min-width: 260px;
      background: white;
      padding: 22px;
      border-radius: var(--radius-card);
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      flex-shrink: 0;
    }

    .testimonial-card .stars {
      color: #f5b342;
      font-size: 15px;
      margin-bottom: 6px;
    }

    .testimonial-card p {
      font-size: 14px;
      color: var(--secondary);
    }

    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 14px;
    }

    .testimonial-card .avatar {
      width: 36px;
      height: 36px;
      background: var(--accent-soft);
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      color: var(--accent);
      font-size: 14px;
    }

    /* ---------- NEWSLETTER ---------- */
    .newsletter-box {
      background: white;
      border-radius: var(--radius-card);
      padding: 32px 24px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      margin: 28px 0 12px;
    }

    .newsletter-box h3 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 24px;
      font-weight: 700;
    }

    .newsletter-box p {
      color: var(--muted);
      margin: 4px 0 16px;
      font-size: 15px;
    }

    .newsletter-form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 8px;
      max-width: 480px;
      margin: 0 auto;
    }

    .newsletter-form input {
      flex: 1 1 180px;
      padding: 12px 18px;
      border: 1px solid var(--border-light);
      border-radius: 60px;
      font-size: 14px;
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
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 14px;
      cursor: pointer;
      transition: 0.15s;
    }

    .newsletter-form button:hover {
      background: #2563eb;
    }

    /* ---------- FOOTER ---------- */
    footer {
      margin-top: 32px;
      padding: 28px 0 20px;
      border-top: 1px solid var(--border-light);
      color: var(--muted);
    }

    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 28px;
      justify-content: space-between;
    }

    .footer-brand p {
      max-width: 280px;
      margin-top: 6px;
      font-size: 13px;
    }

    .footer-links {
      display: flex;
      gap: 40px;
      flex-wrap: wrap;
    }

    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 4px;
    }

    .footer-links .title {
      font-weight: 600;
      color: var(--primary);
      margin-bottom: 2px;
      font-size: 14px;
    }

    .footer-links a {
      text-decoration: none;
      color: var(--muted);
      font-size: 13px;
      transition: 0.1s;
    }

    .footer-links a:hover {
      color: var(--accent);
    }

    .footer-copy {
      text-align: center;
      margin-top: 24px;
      font-size: 13px;
      border-top: 1px solid var(--border-light);
      padding-top: 18px;
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 850px) {
      .search-wrap {
        flex: 1 1 160px;
        max-width: 240px;
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
        padding: 32px 24px;
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
        width: 38px;
        height: 38px;
        font-size: 15px;
      }
      .cart-btn {
        padding: 0 10px 0 8px;
        height: 38px;
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
        padding: 20px;
      }
      .deal-visual {
        flex: 1 1 auto;
        height: 90px;
      }
      .deal-timer {
        justify-content: center;
      }
      .hero {
        padding: 28px 18px;
      }
      .hero-visual i {
        font-size: 32px;
      }
    }

    @media (max-width: 430px) {
      .product-grid {
        grid-template-columns: 1fr;
      }
      .category-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .testimonial-card {
        min-width: 220px;
      }
    }

    /* utilities */
    .muted {
      color: var(--muted);
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-grid">
      <div style="display:flex;align-items:center;gap:6px;">
        <button class="menu-toggle" id="menuToggle" aria-label="Menu">
          <i class="fas fa-bars"></i>
        </button>
        <a href="#" class="brand">
          <i class="fas fa-store-alt"></i> Nexus<span>shop</span>
        </a>
      </div>

      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search">
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-arrow-right"></i></button>
      </div>

      <div class="nav-actions">
        <a href="#" aria-label="Account"><i class="far fa-user-circle"></i></a>
        <a href="#" aria-label="Wishlist"><i class="far fa-heart"></i></a>
        <a href="#" class="cart-btn" id="cartBtn">
          <i class="fas fa-shopping-bag"></i> Cart
          <span class="cart-badge" id="cartCount">0</span>
        </a>
      </div>
    </div>

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

    <!-- DEAL -->
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
        <p style="margin-top:8px; font-size:14px;"><strong>12</strong> items left at this price</p>
        <button class="btn-primary" id="buyDeal" style="margin-top:10px;"><i class="fas fa-bolt"></i> Buy now</button>
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
      <div id="newsletterMsg" style="margin-top:10px;font-size:14px;display:none;"></div>
    </div>
  </main>

  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <div style="font-weight:800;font-size:20px;display:flex;align-items:center;gap:6px;"><i class="fas fa-store-alt" style="color:var(--accent);"></i> NexusShop</div>
          <p>Modern e‑commerce demo built with ❤️. All rights reserved.</p>
          <div style="display:flex;gap:12px;margin-top:8px;">
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
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
    ];

    // ---- RENDER ----
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    let cartCount = 0;

    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'category-card';
        el.innerHTML = `
          <i class="fas ${cat.icon}"></i>
          <h4>${cat.name}</h4>
          <div class="sub">Explore</div>
        `;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('productSection').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        const ratingStars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        card.innerHTML = `
          <div class="product-img">
            <img src="${p.img}" alt="${p.title}" loading="lazy">
          </div>
          <div class="product-body">
            ${p.badge ? `<span class="badge">${p.badge}</span>` : ''}
            <h5>${p.title}</h5>
            <div class="category-tag">${p.category}</div>
            <div class="price-row">
              <span class="price-current">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
              <span class="rating">${ratingStars} <span style="color:var(--muted);font-size:11px;">(${p.reviews})</span></span>
            </div>
          </div>
          <div class="product-footer">
            <button class="btn-add" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="btn-wish" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(card);
      });

      document.querySelectorAll('.btn-add').forEach(btn => {
        btn.addEventListener('click', () => {
          const id = Number(btn.dataset.id);
          addToCart(id);
        });
      });
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => 
        p.title.toLowerCase().includes(q) || 
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    function addToCart(id) {
      const p = PRODUCTS.find(x => x.id === id);
      if (!p) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      const btn = document.querySelector(`.btn-add[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = 'Added ✓';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000);
      }
    }

    function updateCartCount() { cartCountEl.textContent = cartCount; }

    // ---- SEARCH ----
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // ---- MOBILE MENU ----
    const menuToggle = document.getElementById('menuToggle');
    const mobileNav = document.getElementById('mobileNav');
    menuToggle.addEventListener('click', () => {
      mobileNav.classList.toggle('open');
    });

    // ---- NEWSLETTER ----
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email address.';
        msg.style.color = '#b91c1c';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = '✅ Thanks! You\'re subscribed.';
      msg.style.color = '#1e6f3f';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3000);
    });

    // ---- DEAL TIMER ----
    (function setupDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        const days = Math.floor(diff / (24 * 3600 * 1000));
        const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
        if (diff <= 0) clearInterval(interval);
      }
      tick();
      const interval = setInterval(tick, 1000);
    })();

    // ---- BUTTONS ----
    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('productSection').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('buyDeal').addEventListener('click', () => {
      cartCount++;
      updateCartCount();
      alert('✅ Deal added to cart (demo).');
    });

    // ---- INIT ----
    (function init() {
      renderCategories();
      renderProducts(PRODUCTS);
      updateCartCount();
      document.getElementById('year').textContent = new Date().getFullYear();
    })();
  </script>
</body>
</html>
