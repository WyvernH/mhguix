(define-module (wyvernh home services)
  #:use-module (gnu home services desktop)
  #:use-module (gnu home services shells)
  #:use-module (gnu home services shepherd)
  #:use-module (gnu home services sound)
  #:use-module (gnu home)
  #:use-module (gnu services)
  #:use-module (gnu home services)
  ;#:use-module (wyvernh home emacs)
  ;#:use-module (wyvernh home ssh)
  #:use-module (wyvernh home sway)
  #:use-module (wyvernh home waybar)
  #:use-module (wyvernh home wayland)
  #:export (%wyvernh-home-services))

(define %wyvernh-home-services
  (list
   (simple-service 'env-vars-service
		home-environment-variables-service-type
		`(("PATH" . "$PATH:/home/matthew/.cargo/bin")))
   (service home-dbus-service-type)
   (service home-shepherd-service-type)
   (service home-pipewire-service-type)
   ;(service wyvernh-emacs-service-type)
   ;(service wyvernh-ssh-service-type)
   (service wyvernh-sway-service-type)
   (service wyvernh-waybar-service-type)
   (service wyvernh-wayland-service-type)))
