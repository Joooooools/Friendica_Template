{{if $welcome}}
<style>
    :root {
        --brand-color: #7c3aed;
        --brand-gradient: linear-gradient(135deg, #7c3aed 0%, #2563eb 100%);
        --bg-card: rgba(30, 41, 59, 0.98);
        --text-main: #ffffff;
        --text-muted: #cbd5e1;
    }

    /* Grund-Reset für Box-Sizing */
    .f-welcome-overlay *, .f-welcome-overlay *::before, .f-welcome-overlay *::after {
        box-sizing: border-box;
    }

    .f-welcome-overlay {
        position: fixed; top: 0; left: 0; width: 100%; height: 100%;
        background: #0f172a;
        background: radial-gradient(circle at 20% 20%, #1e1b4b 0%, #0f172a 100%);
        z-index: 10000; overflow-y: auto; display: block; padding: 40px 15px;
        font-family: 'Inter', -apple-system, sans-serif;
    }

    .f-welcome-container {
        max-width: 1200px; width: 100%; margin: 0 auto;
        background: var(--bg-card); backdrop-filter: blur(20px);
        border-radius: 24px; border: 1px solid rgba(255,255,255,0.1);
        box-shadow: 0 40px 100px rgba(0, 0, 0, 0.8);
        padding: 50px; color: var(--text-main);
    }

    .f-hero h1 { font-size: 42px !important; font-weight: 800; text-align: center; margin-bottom: 20px; background: var(--brand-gradient); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
    .f-hero p { font-size: 18px !important; line-height: 1.6; color: var(--text-muted); text-align: center; margin-bottom: 50px; max-width: 1050px; margin-left: auto; margin-right: auto; }

    .f-login-info { background: rgba(124, 58, 237, 0.1); border: 1px solid #7c3aed; padding: 20px; border-radius: 16px; margin-bottom: 30px; display: flex; align-items: center; gap: 20px; }
    .f-login-info i { font-size: 32px; color: #a78bfa; }
    .f-login-text { font-size: 17px !important; line-height: 1.5; }
    .f-login-text strong { background: #7c3aed; padding: 2px 8px; border-radius: 4px; color: white; font-family: monospace; }

    .f-section-title { font-size: 26px !important; font-weight: 700; color: white; display: flex; align-items: center; gap: 15px; margin: 50px 0 25px 0 !important; width: 100%; clear: both; }
    .f-section-title .badge { background: var(--brand-color); color: white; min-width: 40px; height: 40px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 20px; }

    .f-grid-apps { display: grid; grid-template-columns: repeat(4, 1fr); gap: 15px; }
    .f-grid-half { display: grid; grid-template-columns: 1fr 1fr; gap: 25px; }
    .f-grid-profile { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }

    .f-box { background: rgba(255,255,255,0.03); border: 1px solid rgba(255,255,255,0.08); border-radius: 20px; padding: 25px; height: 100%; display: flex; flex-direction: column; }
    .f-box-app { text-align: center; transition: 0.2s; text-decoration: none !important; color: white !important; }
    .f-box-app:hover { transform: translateY(-5px); border-color: #7c3aed; }
    .f-box-app strong { font-size: 20px !important; display: block; margin-bottom: 4px; }
    .f-box-app span { color: #a78bfa; font-size: 14px !important; font-weight: 700; text-transform: uppercase; letter-spacing: 0.5px; }

    .f-box p { font-size: 16px !important; line-height: 1.5; color: var(--text-muted); margin-bottom: 15px; }

    .f-qr-wrap { background: white; padding: 10px; border-radius: 12px; margin: 15px auto 0 auto; display: block; width: 100%; max-width: 140px; }

    .f-tag-cloud { display: flex; flex-wrap: wrap; gap: 8px; margin-top: 15px; }
    .f-tag { background: rgba(124, 58, 237, 0.15); border: 1px solid #7c3aed; color: #d8b4fe !important; padding: 8px 16px; border-radius: 50px; font-weight: 600; font-size: 15px !important; text-decoration: none; }

    .f-video-box { background: linear-gradient(45deg, #0f172a, #1e1b4b); text-align: center; align-items: center; justify-content: center; }
    .f-help-link { display: flex; align-items: center; gap: 12px; background: rgba(255,255,255,0.04); padding: 15px; border-radius: 12px; text-decoration: none; color: white !important; font-size: 16px !important; font-weight: 600; margin-bottom: 10px; border: 1px solid transparent; }
    .f-help-link:hover { border-color: #7c3aed; background: rgba(124, 58, 237, 0.1); }

    .f-btn { display: inline-flex; align-items: center; justify-content: center; gap: 10px; border-radius: 50px; font-weight: 700; text-decoration: none; transition: 0.2s; cursor: pointer; border: none; }
    .f-btn-red { background: #ef4444; color: white !important; padding: 12px 25px; font-size: 16px; }
    .f-btn-purple { background: #7c3aed; color: white !important; padding: 12px 30px; font-size: 17px; margin-top: auto; }
    .f-btn-green { background: #10b981; color: white !important; padding: 18px 50px; font-size: 22px; }
    .f-btn-action { background: var(--brand-gradient); color: white !important; width: 100%; padding: 12px; border-radius: 12px; font-size: 16px; margin-top: auto; }
    .f-btn:hover { transform: scale(1.03); filter: brightness(1.1); }

    .f-footer { text-align: center; margin: 60px 0 30px 0; clear: both; }

    @media (max-width: 850px) {
        .f-grid-apps { grid-template-columns: 1fr 1fr; }
        .f-grid-half, .f-grid-profile { grid-template-columns: 1fr; }
        .f-welcome-container { padding: 30px 20px; }
    }
</style>

<div class="f-welcome-overlay">
    <div class="f-welcome-container">

        <header class="f-hero">
            <h1>Willkommen bei missocial.de</h1>
            <p>Wir möchten dir einige Tipps und Links anbieten, die dir helfen könnten, den Einstieg angenehmer zu machen. Klicke auf ein Element, um die entsprechende Seite zu besuchen. Ein Link zu dieser Seite hier bleibt für dich an deiner Pinnwand für zwei Wochen nach dem Registrierungsdatum sichtbar und wird dann verschwinden. Du kannst diesen Link aber gerne unter deinen Favoriten abspeichern.</p>
        </header>

        <!-- Punkt 1 -->
        <div class="f-section-title"><span class="badge">1</span> Mobile Apps nutzen</div>
        <div class="f-login-info">
            <i class="fa fa-key"></i>
            <div class="f-login-text">
                Servername für deine App: <strong>{{$baseurl}}</strong><br>
                Nutze zum Login deinen <strong>Benutzernamen</strong> und dein <strong>Passwort</strong> von {{$baseurl}}.
            </div>
        </div>
        <div class="f-grid-apps">
            <a href="https://play.google.com/store/apps/details?id=com.livefast.eattrash.raccoonforfriendica" target="_blank" class="f-box f-box-app">
                <strong>Raccoon</strong><span>Android</span>
                <div class="f-qr-wrap"><img src="{{$baseurl}}/qrcodes/raccoon.jpg" width="100%"></div>
            </a>
            <a href="https://play.google.com/store/search?q=Tusky&c=apps" target="_blank" class="f-box f-box-app">
                <strong>Tusky</strong><span>Android</span>
                <div class="f-qr-wrap"><img src="{{$baseurl}}/qrcodes/tusky.jpg" width="100%"></div>
            </a>
            <a href="https://apps.apple.com/de/app/mona-classic/id1659154653" target="_blank" class="f-box f-box-app">
                <strong>Mona</strong><span>iOS</span>
                <div class="f-qr-wrap"><img src="{{$baseurl}}/qrcodes/mona.jpg" width="100%"></div>
            </a>
            <a href="https://apps.apple.com/de/app/ice-cubes-for-mastodon/id6444915884" target="_blank" class="f-box f-box-app">
                <strong>IceCubes</strong><span>iOS</span>
                <div class="f-qr-wrap"><img src="{{$baseurl}}/qrcodes/icecubes.jpg" width="100%"></div>
            </a>
        </div>

        <!-- Punkt 2 -->
        <div class="f-section-title"><span class="badge">2</span> Starthilfe & Wissen</div>
        <div class="f-grid-half">
            <div class="f-box f-video-box">
                <h3 style="font-size: 22px; margin-bottom: 10px;">Friendica - Timeline mit Inhalten füllen</h3>
                <p>Erfahre, wie du sofort Leben in deine Timeline bringst.</p>
                <a href="https://clip.place/w/9mH7RduEWaBhZBYxzycstG" target="_blank" class="f-btn f-btn-red"><i class="fa fa-play"></i> Video ansehen</a>
            </div>
            <div style="display: flex; flex-direction: column;">
                <a href="https://fediversum.info" target="_blank" class="f-help-link"><i class="fa fa-info-circle"></i> Einsteiger-Infos zum Fediverse auf fediversum.info</a>
                <a href="https://info.missocial.de" target="_blank" class="f-help-link"><i class="fa fa-globe"></i> Infobereich missocial.de</a>
                <a href="https://friendica-hilfe.gitbook.io/friendica-hilfe" target="_blank" class="f-help-link"><i class="fa fa-question-circle"></i> Friendica Hilfe</a>
            </div>
        </div>

        <!-- Punkt 3 & 4 (Abstand unten fixiert) -->
        <div class="f-grid-half" style="margin-top: 30px; margin-bottom: 100px;">
            <div>
                <div class="f-section-title" style="margin: 0 0 20px 0 !important;"><span class="badge">3</span> Themen finden</div>
                <div class="f-box">
                    <p>Suche interessante Themen über Hashtags:</p>
                    <div class="f-tag-cloud">
                        <a href="{{$baseurl}}/search?q=%23neuhier" class="f-tag">#neuhier</a>
                        <a href="{{$baseurl}}/search?q=%23fediverse" class="f-tag">#fediverse</a>
                        <a href="{{$baseurl}}/search?q=%23foto" class="f-tag">#foto</a>
                        <a href="{{$baseurl}}/search?q=%23katzen" class="f-tag">#katzen</a>
                        <a href="{{$baseurl}}/search?q=%23berlin" class="f-tag">#berlin</a>
                        <a href="{{$baseurl}}/search?q=%23followerpower" class="f-tag">#followerpower</a>
                        <a href="{{$baseurl}}/search?q=%23fedihilfe" class="f-tag">#fedihilfe</a>
                        <a href="{{$baseurl}}/search?q=%23kaufberatung" class="f-tag">#kaufberatung</a>
                    </div>
                </div>
            </div>
            <div>
                <div class="f-section-title" style="margin: 0 0 20px 0 !important;"><span class="badge">4</span> Sag "Hallo!"</div>
                <div class="f-box" style="background: rgba(124, 58, 237, 0.05); border: 1px dashed #7c3aed; text-align: center;">
                    <p>Wenn du magst, verfasse gleich deinen ersten Post und stell dich mit <strong>#neuhier</strong> vor, um schneller gefunden zu werden!</p>
                    <a href="{{$baseurl}}/compose" class="f-btn f-btn-purple"><i class="fa fa-pencil"></i> Beitrag erstellen</a>
                </div>
            </div>
        </div>

        <!-- Punkt 5 -->
        <div class="f-section-title"><span class="badge">5</span> Profil vervollständigen</div>
        <div class="f-grid-profile">
            <div class="f-box" style="text-align: center;">
                <i class="fa fa-camera fa-2x" style="color:#a78bfa; margin-bottom: 15px;"></i>
                <h4 style="font-size: 18px; margin-bottom: 10px;">Profilbild</h4>
                <a href="{{$baseurl}}/settings/profile/photo" class="f-btn f-btn-action">Foto hochladen</a>
            </div>
            <div class="f-box" style="text-align: center;">
                <i class="fa fa-link fa-2x" style="color:#a78bfa; margin-bottom: 15px;"></i>
                <h4 style="font-size: 18px; margin-bottom: 10px;">Netzwerke</h4>
                <a href="{{$baseurl}}/settings/connectors" class="f-btn f-btn-action">Verbinden</a>
            </div>
            <div class="f-box" style="text-align: center;">
                <i class="fa fa-cog fa-2x" style="color:#a78bfa; margin-bottom: 15px;"></i>
                <h4 style="font-size: 18px; margin-bottom: 10px;">Konto</h4>
                <a href="{{$baseurl}}/settings" class="f-btn f-btn-action">Einstellungen</a>
            </div>
        </div>

        <!-- Punkt 6 (NEU) -->
        <div class="f-section-title"><span class="badge">6</span> Kontakte importieren</div>
        <div class="f-box" style="text-align: center;">
            <i class="fa fa-users fa-2x" style="color:#a78bfa; margin-bottom: 15px;"></i>
            <p style="text-align:center;">Ziehst du von einer anderen Instanz um oder kommst von Mastodon? Hier kannst du deine Kontakte einfach mitnehmen.</p>
            <a href="{{$baseurl}}/settings/importcontacts" class="f-btn f-btn-action" style="max-width: 400px; margin: 0 auto;">Kontakte importieren</a>
        </div>

        <div class="f-footer">
            <button class="f-btn f-btn-green" onclick="finishOnboarding()">
                🚀 Hier geht es zu den Feeds in deiner Sprache!
            </button>
        </div>
    </div>
</div>

<script>
    function finishOnboarding() {
        window.location.href = "{{$baseurl}}/network?channel=language";
    }
</script>
{{/if}}
