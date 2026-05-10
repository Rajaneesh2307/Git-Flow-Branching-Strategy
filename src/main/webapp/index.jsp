<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>NovaMart Glassmorphism UI</title>

<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

:root{
    --bg-primary:#070b16;
    --bg-secondary:#0f172a;

    --glass-bg:rgba(255,255,255,0.08);
    --glass-border:rgba(255,255,255,0.12);

    --glass-shadow:
        0 8px 32px rgba(0,0,0,0.35);

    --text-primary:#f8fafc;
    --text-secondary:#cbd5e1;

    --accent:#60a5fa;
    --accent-dark:#3b82f6;

    --radius-sm:18px;
    --radius-md:28px;
    --radius-lg:40px;
    --radius-full:9999px;

    --transition:all .35s cubic-bezier(.4,0,.2,1);

    --gradient-main:
        radial-gradient(circle at top left, rgba(59,130,246,.18), transparent 30%),
        radial-gradient(circle at bottom right, rgba(139,92,246,.18), transparent 30%),
        linear-gradient(135deg,#070b16 0%,#0f172a 100%);
}

body{
    font-family:'Plus Jakarta Sans',sans-serif;
    background:var(--gradient-main);
    color:var(--text-primary);
    min-height:100vh;
    overflow-x:hidden;
}

html{
    scroll-behavior:smooth;
}

.container{
    max-width:1280px;
    margin:auto;
    padding:0 24px;
}

/* =========================
   NAVBAR
========================= */

.glass-header{
    position:sticky;
    top:18px;
    z-index:999;

    width:calc(100% - 40px);
    margin:20px auto;

    background:rgba(15,23,42,.55);

    backdrop-filter:blur(18px);
    -webkit-backdrop-filter:blur(18px);

    border:1px solid rgba(255,255,255,.08);

    border-radius:24px;

    box-shadow:0 10px 40px rgba(0,0,0,.35);
}

.header-flex{
    display:flex;
    justify-content:space-between;
    align-items:center;
    gap:24px;
    padding:18px 24px;
}

.logo{
    font-size:28px;
    font-weight:800;

    background:linear-gradient(135deg,#60a5fa,#8b5cf6);

    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.nav-links{
    display:flex;
    gap:28px;
}

.nav-link{
    text-decoration:none;
    color:var(--text-secondary);
    font-weight:600;
    transition:var(--transition);
}

.nav-link:hover{
    color:white;
}

.search-bar{
    background:rgba(255,255,255,.06);

    border:1px solid rgba(255,255,255,.08);

    backdrop-filter:blur(14px);

    border-radius:999px;

    padding:10px 18px;

    display:flex;
    align-items:center;
    gap:10px;

    width:280px;
}

.search-bar input{
    background:transparent;
    border:none;
    outline:none;
    color:white;
    width:100%;
}

.icon-group{
    display:flex;
    gap:14px;
}

.icon-circle{
    width:44px;
    height:44px;

    border-radius:50%;

    background:rgba(255,255,255,.08);

    border:1px solid rgba(255,255,255,.08);

    display:flex;
    justify-content:center;
    align-items:center;

    cursor:pointer;

    transition:var(--transition);
}

.icon-circle:hover{
    transform:translateY(-4px);
    background:rgba(255,255,255,.12);
}

.cart-badge{
    position:relative;
}

.cart-count{
    position:absolute;
    top:-4px;
    right:-4px;

    width:20px;
    height:20px;

    border-radius:50%;

    background:var(--accent);

    display:flex;
    justify-content:center;
    align-items:center;

    font-size:11px;
    font-weight:700;
}

/* =========================
   HERO
========================= */

.hero{
    position:relative;

    margin:40px 20px;

    border-radius:40px;

    overflow:hidden;

    padding:120px 0;

    background:
        linear-gradient(
            135deg,
            rgba(15,23,42,.92),
            rgba(30,41,59,.88)
        );

    border:1px solid rgba(255,255,255,.08);

    backdrop-filter:blur(20px);

    box-shadow:0 25px 60px rgba(0,0,0,.45);
}

.hero::before{
    content:'';

    position:absolute;
    inset:0;

    background:
        radial-gradient(circle at 20% 30%, rgba(59,130,246,.25), transparent 40%),
        radial-gradient(circle at 80% 70%, rgba(139,92,246,.25), transparent 40%);
}

.hero-content{
    position:relative;
    z-index:2;
    text-align:center;
}

.hero-badge{
    display:inline-block;

    padding:8px 18px;

    border-radius:999px;

    background:rgba(255,255,255,.08);

    border:1px solid rgba(255,255,255,.12);

    backdrop-filter:blur(10px);

    margin-bottom:24px;

    font-size:14px;
    font-weight:600;
}

.hero h1{
    font-size:72px;
    font-weight:800;
    line-height:1.1;

    margin-bottom:24px;
}

.hero p{
    max-width:700px;
    margin:auto;

    color:var(--text-secondary);

    font-size:18px;
    line-height:1.7;
}

.hero-buttons{
    display:flex;
    justify-content:center;
    gap:18px;

    margin-top:40px;
}

.btn-primary{
    background:linear-gradient(135deg,#60a5fa,#3b82f6);

    border:none;

    padding:15px 34px;

    border-radius:999px;

    color:white;

    font-weight:700;

    cursor:pointer;

    transition:var(--transition);

    box-shadow:0 12px 30px rgba(59,130,246,.35);
}

.btn-primary:hover{
    transform:translateY(-4px) scale(1.03);

    box-shadow:0 18px 45px rgba(59,130,246,.45);
}

.btn-secondary{
    background:rgba(255,255,255,.08);

    border:1px solid rgba(255,255,255,.08);

    color:white;

    padding:15px 34px;

    border-radius:999px;

    cursor:pointer;

    backdrop-filter:blur(12px);

    transition:var(--transition);
}

.btn-secondary:hover{
    transform:translateY(-4px);
}

/* =========================
   SECTIONS
========================= */

.section{
    padding:70px 0;
}

.section-title{
    text-align:center;
    margin-bottom:50px;
}

.section-title h2{
    font-size:42px;
    margin-bottom:10px;
}

.section-title p{
    color:var(--text-secondary);
}

/* =========================
   CATEGORY CARDS
========================= */

.category-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(180px,1fr));
    gap:24px;
}

.category-card{
    background:rgba(255,255,255,.06);

    backdrop-filter:blur(16px);

    border:1px solid rgba(255,255,255,.08);

    border-radius:28px;

    padding:35px 20px;

    text-align:center;

    transition:var(--transition);

    box-shadow:var(--glass-shadow);

    cursor:pointer;
}

.category-card:hover{
    transform:translateY(-10px);

    background:rgba(255,255,255,.1);

    border-color:rgba(96,165,250,.45);
}

.category-icon{
    font-size:42px;
    margin-bottom:18px;
    color:var(--accent);
}

/* =========================
   PRODUCTS
========================= */

.product-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(290px,1fr));
    gap:32px;
}

.product-card{
    background:rgba(255,255,255,.06);

    backdrop-filter:blur(18px);

    border:1px solid rgba(255,255,255,.08);

    border-radius:30px;

    overflow:hidden;

    position:relative;

    transition:var(--transition);

    box-shadow:var(--glass-shadow);
}

.product-card::before{
    content:'';

    position:absolute;
    inset:0;

    background:
        linear-gradient(
            135deg,
            rgba(255,255,255,.15),
            rgba(255,255,255,.02)
        );

    pointer-events:none;
}

.product-card:hover{
    transform:translateY(-12px) scale(1.02);

    border-color:rgba(96,165,250,.35);

    box-shadow:
        0 25px 50px rgba(59,130,246,.18),
        0 15px 30px rgba(0,0,0,.4);
}

.product-img{
    width:100%;
    height:260px;
    object-fit:cover;

    transition:transform .5s ease;
}

.product-card:hover .product-img{
    transform:scale(1.06);
}

.product-info{
    padding:24px;
}

.product-title{
    font-size:20px;
    font-weight:700;
    margin-bottom:12px;
}

.price{
    font-size:28px;
    font-weight:800;
    color:var(--accent);
}

.old-price{
    text-decoration:line-through;
    color:gray;
    margin-left:10px;
}

.product-actions{
    display:flex;
    gap:14px;
    margin-top:22px;
}

.btn-add{
    flex:1;

    background:rgba(255,255,255,.08);

    border:1px solid rgba(255,255,255,.08);

    color:white;

    padding:12px;

    border-radius:999px;

    cursor:pointer;

    transition:var(--transition);
}

.btn-add:hover{
    background:var(--accent);
}

/* =========================
   NEWSLETTER
========================= */

.newsletter{
    margin-top:70px;

    background:rgba(255,255,255,.06);

    border:1px solid rgba(255,255,255,.08);

    backdrop-filter:blur(18px);

    border-radius:40px;

    padding:70px 30px;

    text-align:center;
}

.newsletter h2{
    font-size:42px;
    margin-bottom:18px;
}

.newsletter p{
    color:var(--text-secondary);
}

.newsletter-form{
    display:flex;
    justify-content:center;
    gap:16px;

    flex-wrap:wrap;

    margin-top:30px;
}

.newsletter-form input{
    width:340px;

    padding:16px 20px;

    border-radius:999px;

    border:none;

    background:rgba(255,255,255,.08);

    color:white;

    outline:none;
}

/* =========================
   FOOTER
========================= */

footer{
    margin-top:90px;
    padding:40px 0;

    text-align:center;

    color:var(--text-secondary);
}

/* =========================
   ANIMATION
========================= */

.product-card,
.category-card,
.newsletter{
    animation:fadeUp .8s ease;
}

@keyframes fadeUp{
    from{
        opacity:0;
        transform:translateY(30px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

/* =========================
   RESPONSIVE
========================= */

@media(max-width:900px){

    .nav-links{
        display:none;
    }

    .hero h1{
        font-size:48px;
    }

    .hero-buttons{
        flex-direction:column;
        align-items:center;
    }
}

@media(max-width:600px){

    .search-bar{
        display:none;
    }

    .hero{
        padding:90px 0;
    }

    .hero h1{
        font-size:38px;
    }

    .section-title h2{
        font-size:32px;
    }
}
</style>
</head>

<body>

<header class="glass-header">
    <div class="header-flex">

        <div class="logo">
            <i class="fas fa-bolt"></i> NovaMart
        </div>

        <div class="nav-links">
            <a href="#" class="nav-link">Home</a>
            <a href="#" class="nav-link">Shop</a>
            <a href="#" class="nav-link">Deals</a>
            <a href="#" class="nav-link">Insights</a>
        </div>

        <div class="search-bar">
            <i class="fas fa-search"></i>
            <input type="text" placeholder="Search products...">
        </div>

        <div class="icon-group">

            <div class="icon-circle">
                <i class="fas fa-moon"></i>
            </div>

            <div class="icon-circle">
                <i class="far fa-heart"></i>
            </div>

            <div class="icon-circle cart-badge">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count">2</span>
            </div>

        </div>

    </div>
</header>

<section class="hero">
    <div class="container hero-content">

        <div class="hero-badge">
            ✨ Premium Glassmorphism Experience
        </div>

        <h1>
            Futuristic <br>
            Shopping Experience
        </h1>

        <p>
            Discover premium products with a smooth modern glassmorphism UI designed to feel elegant, immersive and professional.
        </p>

        <div class="hero-buttons">
            <button class="btn-primary">
                Shop Collection
            </button>

            <button class="btn-secondary">
                Explore Deals
            </button>
        </div>

    </div>
</section>

<div class="container">

    <section class="section">

        <div class="section-title">
            <h2>Curated Categories</h2>
            <p>Beautiful premium shopping categories</p>
        </div>

        <div class="category-grid">

            <div class="category-card">
                <div class="category-icon">
                    <i class="fas fa-headphones"></i>
                </div>
                <h3>Audio</h3>
            </div>

            <div class="category-card">
                <div class="category-icon">
                    <i class="fas fa-gamepad"></i>
                </div>
                <h3>Gaming</h3>
            </div>

            <div class="category-card">
                <div class="category-icon">
                    <i class="fas fa-watch-smart"></i>
                </div>
                <h3>Wearables</h3>
            </div>

            <div class="category-card">
                <div class="category-icon">
                    <i class="fas fa-gem"></i>
                </div>
                <h3>Luxury</h3>
            </div>

        </div>

    </section>

    <section class="section">

        <div class="section-title">
            <h2>Trending Products</h2>
            <p>Most loved products by customers</p>
        </div>

        <div class="product-grid">

            <div class="product-card">

                <img
                    class="product-img"
                    src="https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=800&q=80"
                >

                <div class="product-info">

                    <div class="product-title">
                        Sony WH-1000XM6
                    </div>

                    <div>
                        <span class="price">$399</span>
                        <span class="old-price">$499</span>
                    </div>

                    <div class="product-actions">

                        <button class="btn-add">
                            Add To Cart
                        </button>

                        <button class="btn-add" style="flex:0.3;">
                            <i class="far fa-heart"></i>
                        </button>

                    </div>

                </div>

            </div>

            <div class="product-card">

                <img
                    class="product-img"
                    src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=80"
                >

                <div class="product-info">

                    <div class="product-title">
                        Apple Watch Ultra
                    </div>

                    <div>
                        <span class="price">$749</span>
                        <span class="old-price">$899</span>
                    </div>

                    <div class="product-actions">

                        <button class="btn-add">
                            Add To Cart
                        </button>

                        <button class="btn-add" style="flex:0.3;">
                            <i class="far fa-heart"></i>
                        </button>

                    </div>

                </div>

            </div>

            <div class="product-card">

                <img
                    class="product-img"
                    src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=80"
                >

                <div class="product-info">

                    <div class="product-title">
                        Razer Blade 16
                    </div>

                    <div>
                        <span class="price">$2799</span>
                        <span class="old-price">$3199</span>
                    </div>

                    <div class="product-actions">

                        <button class="btn-add">
                            Add To Cart
                        </button>

                        <button class="btn-add" style="flex:0.3;">
                            <i class="far fa-heart"></i>
                        </button>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <section class="newsletter">

        <h2>Join The Premium Club</h2>

        <p>
            Get early access to exclusive sales and futuristic collections
        </p>

        <form class="newsletter-form">

            <input
                type="email"
                placeholder="Enter your email"
            >

            <button class="btn-primary">
                Subscribe
            </button>

        </form>

    </section>

</div>

<footer>
    © 2026 NovaMart — Premium Glassmorphism UI
</footer>

</body>
</html>
