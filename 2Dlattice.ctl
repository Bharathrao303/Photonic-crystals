(set! num-bands 8)
(set! k-points (list (vector3 0 0 0)          ; Gamma
                     (vector3 0 0.5 0)        ; M
                     (vector3 (/ -3) (/ 3) 0) ; K
                     (vector3 0 0 0)))        ; Gamma
(set! k-points (interpolate 10 k-points))

(set! geometry-lattice (make lattice (size 1 1 no-size)
                         (basis1 (/ (sqrt 3) 2) 0.5)
                         (basis2 (/ (sqrt 3) 2) -0.5)))
;(set! geometry (list (make cylinder
;                       (center 0 0 0) (radius 0.35) (height infinity)
;(material (make dielectric (epsilon 3.61))))))

(set! default-material (make dielectric (epsilon 3.61)))
(set! geometry (list (make cylinder (center 0) (material air)
			   (radius 0.4) (height infinity))))

(set! resolution 200)
(run-tm (output-at-kpoint (vector3 (/ -3) (/ 3) 0) 
			  fix-efield-phase output-efield-z))
(run-te)
