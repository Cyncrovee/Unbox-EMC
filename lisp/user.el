;;; User-Specific Configuration
(setopt
 ;; This variable (user-boot-theme) sets the theme on boot.
 ;; The following options are available:
 ;; "light": ef-light
 ;; "spring": ef-spring
 ;; "summer": ef-summer
 ;; "owl": ef-owl
 ;; "autumn": ef-autumn
 ;; "winter": ef-winter
 ;; "bio": ef-bio
 ;; Any other value will not load a theme, allowing you to load your own.
 ;; Alternatively, comment out the line to show a theme selection promt at boot.
 user-boot-theme "summer"
 ;; This variable (user-completion-provider) sets the completion provider.
 ;; Set to "corfu" for corfu, or "company" for company.
 user-completion-provider "corfu")
