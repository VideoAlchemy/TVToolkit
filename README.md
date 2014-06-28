###TVToolkit
a set of therapeutic visualization tools that use responsive graphics to enhance the mind's ability to influence the body's physical responses.

________________________

####[TVToolkit wiki](https://github.com/VideoAlchemy/TVToolkit/wiki)
####[TVToolkit project website](http://videoalchemy.github.io/TVToolkit)

________________________

###Archives:
####Outdated Documentation from previous versions:
- Recursion Projection Therapy
	- [at SOEX Gallery SF](https://www.flickr.com/photos/jaycody9/sets/72157625517220234/)
	- [at Oakland Art Space](https://www.flickr.com/photos/jaycody9/sets/72157626699434942/)
- Intelligent Healing Spaces
	- [Virtual Acupressure](https://www.flickr.com/photos/jaycody9/sets/72157626696632302/)
	- [Flow Field Massage](https://www.flickr.com/photos/jaycody9/sets/72157626696660108/)
- [Augmented Massage Table](https://www.flickr.com/photos/jaycody9/sets/72157637802847994/)
- Interactive Healing Spaces
	- [photo documentation of RnD](https://www.flickr.com/photos/jaycody9/sets/72157637800982304/)
- TherapyViz
- [Proprioception Enhancement Tools](https://www.flickr.com/photos/jaycody9/sets/72157637799085485/)
- Enhanced Visualization Therapy

####Archived Documentation (outdated yet interesting):
#####EV Therapy Thesis Project NYU 2012
- [project blog] - EV Therapy Thesis
- [Enhanced Visualization Therapy on Github]

_____________________________


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
#####EV Therapy Github README (outdated yet interesting)
###Project Videos:
[Vimeo] (https://vimeo.com/album/2004737)    
[youTube] (http://www.youtube.com/user/jaycody9)

###Press:    
[CNET] (http://news.cnet.com/8301-27083_3-20070346-247/kinect-hack-allows-for-intelligent-healing-massage/)    
[Gizmodo] (http://gizmodo.com/5910630/i-let-a-weird-man-rub-me-for-10-minutes-in-the-name-of-journalism)  
[PCWorld] (http://www.techhive.com/article/227759/kinect_hack_helps_therapists_track_their_session_progress.html)  
[engadget] (http://www.engadget.com/2011/05/14/kinect-hack-enables-psychedelic-acupressure-far-out-graphics-v/)  
[MedGadget:  Journal of Emerging Medical Technologies] (http://www.medgadget.com/2011/06/kinect-helps-power-a-futuristic-massage-table.html)  
[KinectHacks] (http://www.kinecthacks.com/massage-therapy-using-the-kinect/)  

________


Definition:
Interactive Healing Spaces are mixed-reality environments which augment, and assist with, traditional massage modalities.

Interactive Healing Spaces integrate therapeutic bodywork (deep tissue, sports massage, Swedish, Tui-Na, acupressure) with interactive technology (computer vision, augmented reality, volumetric sensors, video projections, video goggles). Using a depth-sensing camera, the system translates body shapes, positions, movements, and gestures into visualizations. During a massage session, these visuals are projected into both real space and augmented reality on and around the massage table. Two sets of video goggles provide the client and the therapist with a real-time out-of-body perspective of this mixed-reality environment.

REASON:
In the massage community, ancient modalities are often respected the most. But I believe that healers of every generation are presented with new ideas that can extend or supplement established methods. Interactive technology and augmented reality represent just a fraction of the novelty now available to alternative medicine practitioners. I chose these specific technologies because they offered themselves as ideal extensions to my own evolving practice in the healing arts.

Software Description:

1. AcuNetics: CyberNetic Acupressure.  The treatment of acupressure points using self-guided, self-steering, semi-autonomous objects in augmented reality (AcuNetic_AR) and in immersive video environments (AcuNetic_Projections).  See note*.  

2. Acu2D:  Virtual Pressure Objects.  
2-D objects projected directly onto the client

3. AcuAR:  Augmented Reality Acupressure  

4. Massage Table Matrix:    
A Conway Game of Life existing on the massage table.  Goal:  propagating waves and interference patterns affected by client’s body on the table.

5. Depth Informed Flow Field:    
A particle system whose behavior is informed by depth and movement on and around the massage table

6. Proprioception Enhancement Tools (PET):    
This app combines the scene’s RGB information with its point cloud information.  The Processing version proved to be too slow.  An OpenFrameworks version 

_____

AcuNetics:  Cybernetic Acupressure  -  an explanation:  

AcuNetics : An aspect of Enhanced Visualization (EV) Therapy :: EV_AcuNetic_AR and EV_AcuNetic_Projections. AcuNetic objects (both projections and AR) are distinguished from other methods of EV_Therapy by their intelligence, awareness, and ability to behave in life-like and improvisation ways. Whereas standard EV_Objects in AR and projected space may be placed at a specific location on the client’s body, AcuNetic objects are introduced into a session and are allowed to determine their own course of action based on the unique circumstances of the healing session. This allows the therapist the opportunity to continue working with the client, while self-guided AcuNetic objects determine for themselves their own behavior, location, and appearance. An AcuNetic object may sense shallow breathing and will position itself over the client’s chest and transform itself into a reflection of the client while allowing its own size and shape to be influenced by magnitude of client’s breathing. Or the AcuNetic object may sense a higher than normal heart rate, and in response may assemble with other AcuNetic object to form themselves into a pattern around the client’s heart that changes shape based on the heart rate. In this way, the client becomes aware of their own heart rate through a form of biofeedback. The difference between standard biofeedback and this AcuNetic feedback technique is that the therapist need not monitor the client’s heart rate, nor does the therapist need to stop the session in order to respond to a higher than average heart rate. A therapist need only invite the AcuNetic objects to the session.
The objects themselves will analyse the details of the treatment (and of all previous treatments with this client) and from that information will determine their own course of action. If an AcuNetic object senses that the therapist is spending extra time with one part of the client’s body, the object may resolve to directly assist the therapist by transforming into pulsating light at that spot, or it may decide to transform into a bright pulsating line that runs along the local acupressure meridian and connects the therapist’s treatment area with the previous 5 major acupressure points along the main meridian line. If an AcuNetic object senses that the therapist is already receiving adequate help from other objects, then the object will continue to act in other supporting ways. The object may notice that during the client’s previous 5 sessions, a considerable amount of attention was given to the right hand, but that during this current session, the client’s right hand has yet to be treated. Based on this, the AcuNetic object may decide to visit that area in the form of darkness, or bright light, or in the form of sprouting trees or flowing water. The AcuNetic Object may even inhabit the pixels from which the image of the hand is created, and they may change the color or dimensions of the hand to make it look bigger or smaller in an attempt to increase the client’s proprioception in that area. Whenever the therapist is occupied working on one part of the body, the AcuNetic objects can be off treating the rest of the body. In this way, the therapist doesn’t have to constantly direct the interactive visualizations during a session. The therapist can rely on the intelligence and self-determination of these objects. With situational awareness, awareness of their own goals, and equipped with their own abilities to take appropriate action, the AcuNetic objects can cooperate if need be, or can act as independent agents of light during a client’s treatment.

 








[AcuNetics]:http://itp.nyu.edu/~js5346/jayblog/2012/04/29/acunetics-cybernetic-acupressure/
[project blog]:http://itp.nyu.edu/~js5346/jayblog/ITP/nyu-thesis/
[Enhanced Visualization Therapy on Github]:https://github.com/jayjaycody/EnhancedVisualizationTherapy


