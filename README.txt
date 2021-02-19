PlayMulti local and streaming video jukebox. The documents here describe software and hardware to implement an audio and video jukebox using a Raspberry Pi 3 or 4. The jukebox has adaptations for people with motor or intellectual disabilities.  

The jukebox requires one switch for the user (typically a push button adaptive switch). The PlayMulti can play videos stored on thumb drives or stream audio or YouTube media sources. It can manage a mix of sources.

Operation: The user has one switch. Pressing the switch starts the next video or streaming source in a list (stored on a thumb drive). The user keeps pressing the switch until the desired video or Internet stream starts playing. When the end of the list is reached, the list wraps around and starts over. A second switch can be added to step backwards through the list.

Other features: The hardware interface can be quite simple, but the files here describe how to make a nicer interface to implement a wireless pushbutton. An adaptive wireless button based on a game controller design, is describe in detail at (https://hackaday.io/projects/hacker/445506). More hardware information is available at that site, as well.

The software allows you to assign a different loudness to each media source to normalize the audio levels. There is an option to restart any video when it finishes playing (replay). 

Source code: The PlayMulti files include all source code. PlayMulti is a turn-key system that does not require a keyboard or mouse. However, for modifying the source code, it is easy to plug in a keyboard and mouse and make changes to the software. Code::Blocks was used to build the software, but gcc can be used just as easily on the command line. After adding two library files to the build options, the PlayMulti source code can be modified and recompiled quite easily. The PlayMulti source code is not complicated. Most of the effort was the many small adjustments for turn-key startup and smooth system shutdown. 

Requirements: Raspberry Pi 3B, 3B+ or 4B with Raspberry Pi OS installed. A momentary switch is needed, usually an adaptive switch. 
