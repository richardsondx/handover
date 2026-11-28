/* Handover landing page: multi-angle scroll movie.
   The hero is a pinned stage with 4 angle layers. Scroll progress drives
   a camera through 4 stops, each angle dollying toward its own subject
   while it holds, with a fade through the night sky between angles, so
   it feels like one camera moving through the space, not a slideshow.
   Motion is smoothed with a lerp in requestAnimationFrame, transform
   and opacity only, so it stays smooth on touch scroll. Reduced motion
   or no JS leaves a plain full-viewport hero with all content visible.
*/

(function () {
  'use strict';

  var reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  /* ---- Scroll reveal for sections (skipped under reduced motion) ---- */
  var revealEls = Array.prototype.slice.call(document.querySelectorAll(
    '.step, .engine-card, .engine-umbrella, .stat, .gate-card, .guide-card, ' +
    '.core-four, .engines-chart, .proof-media, .seal-media, .limits-list li'
  ));
  if (!reduceMotion && 'IntersectionObserver' in window && revealEls.length) {
    document.documentElement.classList.add('js-reveal');
    revealEls.forEach(function (el) { el.classList.add('reveal'); });
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add('in-view');
          io.unobserve(entry.target);
        }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -8% 0px' });
    revealEls.forEach(function (el) { io.observe(el); });
  }

/* ---- Multi-angle hero ----
   The hero is a pinned stage with 4 stacked angle layers (wide, low,
   scroll close-up, profile). Scroll progress moves through 4 stops
   (0, 1/3, 2/3, 1); each angle holds at its stop, dollying toward its
   own subject, and the move passes through the night sky between angles:
   the outgoing angle fades out before the midpoint and the incoming
   fades in after it. A straight dissolve was tried first and failed on
   the frames: two Hermeses at once, a double exposure. Motion is
   smoothed with a lerp in requestAnimationFrame, transform and opacity
   only. Reduced motion or no JS leaves a static first angle with all
   content visible. */

  var hero = document.querySelector('.hero');
  var angles = Array.prototype.slice.call(document.querySelectorAll('.hero-angle'));
  var fg = document.querySelector('.hero-fg');
  var content = document.querySelector('.hero-content');
  var cue = document.querySelector('.scroll-cue');
  var progressBar = document.querySelector('.hero-progress span');
  if (!hero || !angles.length || reduceMotion) return;

  document.documentElement.classList.add('js-cine');

  var STOPS = [0, 1 / 3, 2 / 3, 1];
  var MIDS = [1 / 6, 1 / 2, 5 / 6]; /* midpoints between stops */
  /* Transitions dip through the night sky instead of dissolving straight
     across: the outgoing angle fades out before the midpoint and the
     incoming fades in after it, leaving a short dark window where only
     the night background and mist show. A straight dissolve was tried
     first and failed on the frames: the scroll close-up is so much larger
     than the full figure that the midpoint showed two Hermeses at once,
     a double exposure, not one camera moving. The dip is the same indigo
     as the sky, so it reads as flying through darkness between
     viewpoints, and it lets each angle keep its own camera. */
  var FADE_HALF = 0.11; /* fade out/in half-width around each midpoint */
  var DIP_HALF = 0.015; /* half-width of the dark window at the midpoint */
  var ROTATE_TO = 0.25;
  /* One dolly per angle, toward its own subject, over the window around
     its stop. The low angle also sits lower in the frame (more on mobile,
     where the sticky header covers the top of the stage) so the hair
     clears the header. */
  var CAM = [
    { dx: -1.2, dy: -0.6 },
    { dx: -0.8, dy: -0.8 },
    { dx: -1.0, dy: -0.5 },
    { dx: -1.4, dy: -0.4 }
  ];
  var isMobile = window.matchMedia('(max-width: 639px)').matches;
  var LOW_Y = isMobile ? 8 : 3;

  var heroTop = 0;
  var runway = 1;
  var target = 0;   /* raw scroll progress, 0 to 1 */
  var current = 0;  /* smoothed progress */
  var lastApplied = -1;
  var lastTime = 0;

  function easeInOutCubic(t) {
    return t < 0.5 ? 4 * t * t * t : 1 - Math.pow(-2 * t + 2, 3) / 2;
  }

  function smoothstep(a, b, x) {
    var t = Math.min(Math.max((x - a) / (b - a), 0), 1);
    return t * t * (3 - 2 * t);
  }

  /* Opacity of angle i at progress p: 1 at its stop, 0 at the
     neighbouring stops, fading out before each midpoint and in after
     it, so the two angles never overlap on screen. */
  function angleOpacity(i, p) {
    var o = 1;
    if (i > 0) o *= smoothstep(MIDS[i - 1] + DIP_HALF, MIDS[i - 1] + FADE_HALF, p);
    if (i < 3) o *= 1 - smoothstep(MIDS[i] - FADE_HALF, MIDS[i] - DIP_HALF, p);
    return o;
  }

  /* Local dolly progress for angle i: 0 at a quarter before its stop,
     1 at a quarter after, eased. Each angle dollies 1.00 to 1.08 across
     its own hold. */
  function localProgress(i, p) {
    var t = (p - (STOPS[i] - 0.25)) / 0.5;
    return easeInOutCubic(Math.min(Math.max(t, 0), 1));
  }

  function measure() {
    var rect = hero.getBoundingClientRect();
    heroTop = rect.top + (window.scrollY || window.pageYOffset || 0);
    runway = Math.max(hero.offsetHeight - window.innerHeight, 1);
    isMobile = window.matchMedia('(max-width: 639px)').matches;
    LOW_Y = isMobile ? 8 : 3;
  }

  function frame(now) {
    var y = window.scrollY || window.pageYOffset || 0;
    target = Math.min(Math.max((y - heroTop) / runway, 0), 1);
    /* Frame-rate independent smoothing: a 150ms time constant, so the
       move converges in the same wall-clock time at any frame rate. */
    var dt = lastTime ? Math.min(now - lastTime, 500) : 16;
    lastTime = now;
    current += (target - current) * (1 - Math.exp(-dt / 150));
    if (Math.abs(target - current) < 0.0004) current = target;

    if (Math.abs(current - lastApplied) > 0.0004) {
      lastApplied = current;
      var p = easeInOutCubic(current);

      /* Each angle dollies toward its own subject (zoom centre set per
         angle in CSS) and drifts a little with it. A shared slow rotation
         runs over the whole move. */
      var rot = ROTATE_TO * p;
      angles.forEach(function (img, i) {
        var l = localProgress(i, current);
        var scale = 1.0 + 0.08 * l;
        var tx = CAM[i].dx * l;
        var ty = CAM[i].dy * l + (i === 1 ? LOW_Y : 0);
        img.style.transform = 'translate3d(' + tx.toFixed(2) + '%,' + ty.toFixed(2) +
          '%,0) scale(' + scale.toFixed(4) + ') rotate(' + rot.toFixed(3) + 'deg)';
        img.style.opacity = angleOpacity(i, current).toFixed(3);
      });

      /* Foreground mist passes the lens: it rises, grows slightly, and
         thins as the camera pushes past it. */
      if (fg) {
        var fgY = -70 * current;
        var fgScale = 1.05 + 0.07 * p;
        fg.style.transform =
          'translate3d(0,' + fgY.toFixed(1) + 'px,0) scale(' + fgScale.toFixed(3) + ')';
        fg.style.opacity = (0.7 - 0.35 * current).toFixed(3);
      }

      /* Headline rises and fades by a quarter through the move, so the
         wide shot carries the words and the low angle arrives clean. */
      if (content) {
        var fade = Math.min(current / 0.25, 1);
        content.style.opacity = (1 - fade).toFixed(3);
        content.style.transform = 'translate3d(0,' + (-56 * fade).toFixed(1) + 'px,0)';
      }

      /* Scroll cue fades early. */
      if (cue) {
        cue.style.opacity = (1 - Math.min(current / 0.12, 1)).toFixed(3);
      }

      /* Gold progress hairline tracks the move. */
      if (progressBar) {
        progressBar.style.width = (current * 100).toFixed(2) + '%';
      }
    }

    window.requestAnimationFrame(frame);
  }

  measure();
  window.addEventListener('resize', measure, { passive: true });
  window.addEventListener('orientationchange', measure, { passive: true });
  window.requestAnimationFrame(frame);
})();
