<!DOCTYPE html>
<html>
    <head>
      {% include 'home/layouts/includes/header.tpl' %}
    </head>
    <body>
        <section class="hero is-light{% if block('fullscreenHeroBody') is defined %} is-fullheight{% endif %} {{ block('heroClass')|raw }}" id="frontMatter">
            <div class="hero-head">
              {% include 'home/layouts/includes/nav.tpl' %}
            </div>

            {% if block('fullscreenHeroBody') is defined %}
              <div class="hero-body">
                {{ block('fullscreenHeroBody')|raw }}
              </div>
            {% endif %}
        </section>

        {% block content %}{% endblock %}

        {% include 'home/layouts/includes/footer.tpl' %}

        <!--<script async="" src="https://embed.tawk.to/58d50c1ef97dd14875f59ebf/default" charset="UTF-8" crossorigin="*"></script>-->
        <script src="assets/js/bulma.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.0.9/flickity.pkgd.min.js"></script>
        <script src="assets/js/animate.js"></script>
        <script>
        var animate = new Animate({
            target: '[data-animate]',
            animatedClass: 'visible',
            offset: [0.20, 0.5],
            delay: 0,
            remove: false,
            reverse: false,
            scrolled: false,
            debug: false,
            onLoad: true,
            onScroll: true,
            onResize: false,
            callbackOnInit: function() {
                console.log('Initialised');
            },
            callbackOnAnimate: function(element) {
                console.log(element);
            }
        });

        animate.init();
    </script>

    </body>
</html>