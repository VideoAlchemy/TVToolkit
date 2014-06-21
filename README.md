###TVToolkit
a set of therapeutic visualization tools that use responsive graphics to enhance the mind's ability to influence the body's physical responses.

________________________


####new home of an ancient project previously known as:
- Recursion Projection Therapy
- Intelligent Healing Spaces
- Interactive Healing Spaces
- TherapyViz
- Enhanced Visualization Therapy

####Tools for the Kit (outdated yet interesting):
- Enhanced Visualization (EV) Therapy :: Technology :: 3 Parts :: 
	1. **EV_Projections (Enhanced Visualization Projections)** :: computer1 :: imagery projected directly onto client in physical space :: 
    2. **Acu_AR (Augmented Reality Acupressure)** :: computer2 :: visable as Augmented Reality in video goggles or on face-cradle display :: 
    	- [AcuNetics] - cybernetic acupressure
			- [AcuNetic_AR] - acupressure using autonomous objects in augmented reality (aka AcuAR)
			- [AcuNetic_Projections] - acupressure using 2D projection mapped autonomous objects
    3. **IHS (Intelligent Healing Space)**  :: responsive environment with sensors, feedback mechanisms, and awareness of client and session
- Naming Convention::
	- **EV_Projections** = drop "Projections" [eg EV_Projection_Foo --> EV_Foo] 
		- // updated from previous convention, which also added prefixes [eg Acu(EV_Projection)_Foo --> Acu(EV)_Foo (eg Acu(EV)_Point)]
    - **Acu_AR** = add underscore + suffix as necessary, such that FlowFieldFoo --> Acu_AR_FlowFieldFoo
        - // updated previous convention, which was :: 
        - base case = "EV_AR" :: drop "EV" [eg EV_AR_Foo --> AR_Foo] && Add prefixes [eg Acu(EV_AR)_Foo --> Acu(AR)_Foo (eg Acu(AR)_Point)]
    - **IHS** = add underscore + suffix as necessary, such that Strong A.I. = IHS_Awareness ;)

- EV_Projections::Computer1::Tronik::MacBookPro_Lion10.7::8gigsRam::Procesing1.5.1
    - uses the InFocus ShortThrow projector positioned over the massage table
    - uses Kinect positioned near the projector directly above massage table
    - includes:  
    	- **EV_PointGenerator** :: created and controlled via gesture and touchOSC (via iPad suspended in space and iPhone attached to my arm)
       	- **EV_Point** ::Acupressure Point via Projections
       	- **EV_Vehicle** :: "life-like and improvisational" particles with goals, desires, abilities, behaviors and awareness of self, others, and EV session details
       	- **EV_FlowFieldDepth** :: Vector Field :: Direction from depth contours, Force from slope angle + gravity - friction
       	- **EV_FlowFieldIllumination** :: Vector Field :: Direction from projected light's location :: Force Magnitude from Brightness of projected light as seen by Kinect1 RGB.
       	- **EV_FeedbackLoop**
- Acu_AR::Computer2::Megatronik::MacPro_8core_3GHz::6gigsRam[sigh]::Processing1.5.1 [after 8 weeks of openFrameworks]
	- 1st DVI out to 24inch main screen
    - 2nd DVI out downshifted to VGA and sent to VGA 1x4 splitter
    - 1x4 VGA Splitters out to:
    	1. Face-Cradle Display :: 19inch Dell (1024x768) attached to massage table via manfrotto clamp with articulating joint
        2. Vuzix 920 Video Goggles for client in supine position
        3. Vuzix 920 Video Goggles for therapist
        	- (Vuzix each also require USB-2 to Computer2 for Power (and Perhaps signal information as well (perhaps USB powered hub would work?))
        4. Video Projector:: rear projected at fabric above space
         	- making session viewable to public outside space while retaining coherence with healing space with curtains closed
- Acu_AR Objects include:
	- **Acu_AR_PointGenerator**
    - **Acu_AR_Point**
    - **Acu_AR_Object**
    - **Acu_AR_Vehicle**
    - **Acu_AR_FlowFieldDepth**
    - **Acu_AR_FlowFieldIllumination**
    - **Acu_AR_FeedbackLoop**

- [AcuNetics] - cybernetic acupressure
	- [AcuNetic_AR] - acupressure using autonomous objects in augmented reality (aka AcuAR)
	- [AcuNetic_Projections] - acupressure using 2D projection mapped autonomous objects

_____________________________

####Archived Documentation (outdated yet interesting):
#####EV Therapy Thesis Project NYU 2012
- [project blog] - EV Therapy Thesis
- [Enhanced Visualization Therapy on Github]





[AcuNetics]:http://itp.nyu.edu/~js5346/jayblog/2012/04/29/acunetics-cybernetic-acupressure/
[project blog]:http://itp.nyu.edu/~js5346/jayblog/ITP/nyu-thesis/
[Enhanced Visualization Therapy on Github]:https://github.com/jayjaycody/EnhancedVisualizationTherapy


