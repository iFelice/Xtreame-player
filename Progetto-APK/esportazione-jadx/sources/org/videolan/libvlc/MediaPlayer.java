package org.videolan.libvlc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetFileDescriptor;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import java.io.File;
import java.io.IOException;
import org.videolan.libvlc.interfaces.AbstractVLCEvent;
import org.videolan.libvlc.interfaces.ILibVLC;
import org.videolan.libvlc.interfaces.IMedia;
import org.videolan.libvlc.interfaces.IVLCVout;
import org.videolan.libvlc.util.AndroidUtil;
import org.videolan.libvlc.util.DisplayManager;
import org.videolan.libvlc.util.VLCUtil;
import org.videolan.libvlc.util.VLCVideoLayout;

/* JADX INFO: loaded from: classes2.dex */
public class MediaPlayer extends VLCObject<Event> {
    public static final int SURFACE_SCALES_COUNT = ScaleType.values().length;
    private AssetFileDescriptor mAfd;
    private final AudioDeviceCallback mAudioDeviceCallback;
    private boolean mAudioDigitalOutputEnabled;
    private String mAudioOutput;
    private String mAudioOutputDevice;
    private String mAudioPlugOutputDevice;
    private final BroadcastReceiver mAudioPlugReceiver;
    private boolean mAudioPlugRegistered;
    private boolean mAudioReset;
    private boolean mCanDoPassthrough;
    Handler mHandlerMainThread;
    private boolean mListenAudioPlug;
    private IMedia mMedia;
    private boolean mPlayRequested;
    private boolean mPlaying;
    private RendererItem mRenderer;
    private Boolean mUseOrientationFromBounds;
    private VideoHelper mVideoHelper;
    private int mVoutCount;
    private final AWindow mWindow;

    public static class Chapter {
        public final long duration;
        public final String name;
        public final long timeOffset;

        private Chapter(long j8, long j9, String str) {
            this.timeOffset = j8;
            this.duration = j9;
            this.name = str;
        }
    }

    public static class Event extends AbstractVLCEvent {
        public static final int Buffering = 259;
        public static final int ESAdded = 276;
        public static final int ESDeleted = 277;
        public static final int ESSelected = 278;
        public static final int EncounteredError = 266;
        public static final int EndReached = 265;
        public static final int LengthChanged = 273;
        public static final int MediaChanged = 256;
        public static final int Opening = 258;
        public static final int PausableChanged = 270;
        public static final int Paused = 261;
        public static final int Playing = 260;
        public static final int PositionChanged = 268;
        public static final int RecordChanged = 286;
        public static final int SeekableChanged = 269;
        public static final int Stopped = 262;
        public static final int TimeChanged = 267;
        public static final int Vout = 274;

        public Event(int i8) {
            super(i8);
        }

        public float getBuffering() {
            return this.argf1;
        }

        public int getEsChangedID() {
            return (int) this.arg2;
        }

        public int getEsChangedType() {
            return (int) this.arg1;
        }

        public long getLengthChanged() {
            return this.arg1;
        }

        public boolean getPausable() {
            return this.arg1 != 0;
        }

        public float getPositionChanged() {
            return this.argf1;
        }

        public String getRecordPath() {
            return this.args1;
        }

        public boolean getRecording() {
            return this.arg1 != 0;
        }

        public boolean getSeekable() {
            return this.arg1 != 0;
        }

        public long getTimeChanged() {
            return this.arg1;
        }

        public int getVoutCount() {
            return (int) this.arg1;
        }

        public Event(int i8, long j8) {
            super(i8, j8);
        }

        public Event(int i8, long j8, long j9) {
            super(i8, j8, j9);
        }

        public Event(int i8, float f8) {
            super(i8, f8);
        }

        public Event(int i8, long j8, String str) {
            super(i8, j8, str);
        }
    }

    public interface EventListener extends AbstractVLCEvent.Listener<Event> {
    }

    public static class Navigate {
        public static final int Activate = 0;
        public static final int Down = 2;
        public static final int Left = 3;
        public static final int Right = 4;
        public static final int Up = 1;
    }

    public static class Position {
        public static final int Bottom = 6;
        public static final int BottomLeft = 7;
        public static final int BottomRight = 8;
        public static final int Center = 0;
        public static final int Disable = -1;
        public static final int Left = 1;
        public static final int Right = 2;
        public static final int Top = 3;
        public static final int TopLeft = 4;
        public static final int TopRight = 5;
    }

    public enum ScaleType {
        SURFACE_BEST_FIT(null),
        SURFACE_FIT_SCREEN(null),
        SURFACE_FILL(null),
        SURFACE_16_9(Float.valueOf(1.7777778f)),
        SURFACE_4_3(Float.valueOf(1.3333334f)),
        SURFACE_16_10(Float.valueOf(1.6f)),
        SURFACE_2_1(Float.valueOf(2.0f)),
        SURFACE_221_1(Float.valueOf(2.21f)),
        SURFACE_235_1(Float.valueOf(2.35f)),
        SURFACE_239_1(Float.valueOf(2.39f)),
        SURFACE_5_4(Float.valueOf(1.25f)),
        SURFACE_ORIGINAL(null);

        private final Float ratio;

        ScaleType(Float f8) {
            this.ratio = f8;
        }

        public static ScaleType[] getMainScaleTypes() {
            return new ScaleType[]{SURFACE_BEST_FIT, SURFACE_FIT_SCREEN, SURFACE_FILL, SURFACE_16_9, SURFACE_4_3, SURFACE_ORIGINAL};
        }

        public Float getRatio() {
            return this.ratio;
        }
    }

    public static class Title {
        public final long duration;
        private final int flags;
        public final String name;

        public static class Flags {
            public static final int INTERACTIVE = 2;
            public static final int MENU = 1;

            private Flags() {
            }
        }

        public Title(long j8, String str, int i8) {
            this.duration = j8;
            this.name = str;
            this.flags = i8;
        }

        public boolean isInteractive() {
            return (this.flags & 2) != 0;
        }

        public boolean isMenu() {
            return (this.flags & 1) != 0;
        }
    }

    public static class TrackDescription {
        public final int id;
        public final String name;

        private TrackDescription(int i8, String str) {
            this.id = i8;
            this.name = str;
        }
    }

    public MediaPlayer(ILibVLC iLibVLC) {
        super(iLibVLC);
        this.mUseOrientationFromBounds = Boolean.FALSE;
        this.mMedia = null;
        this.mRenderer = null;
        this.mAfd = null;
        this.mPlaying = false;
        this.mPlayRequested = false;
        this.mListenAudioPlug = true;
        this.mVoutCount = 0;
        this.mAudioReset = false;
        this.mAudioOutput = "android_audiotrack";
        this.mAudioOutputDevice = null;
        this.mAudioPlugRegistered = false;
        this.mAudioDigitalOutputEnabled = false;
        this.mAudioPlugOutputDevice = "stereo";
        this.mVideoHelper = null;
        AWindow aWindow = new AWindow(new AWindow.SurfaceCallback() { // from class: org.videolan.libvlc.MediaPlayer.1
            @Override // org.videolan.libvlc.AWindow.SurfaceCallback
            public void onSurfacesCreated(AWindow aWindow2) {
                boolean z7;
                boolean z8;
                synchronized (MediaPlayer.this) {
                    try {
                        z7 = false;
                        if (MediaPlayer.this.mPlaying || !MediaPlayer.this.mPlayRequested) {
                            z8 = MediaPlayer.this.mVoutCount == 0;
                        } else {
                            z8 = false;
                            z7 = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z7) {
                    MediaPlayer.this.play();
                } else if (z8) {
                    MediaPlayer.this.setVideoTrackEnabled(true);
                }
            }

            @Override // org.videolan.libvlc.AWindow.SurfaceCallback
            public void onSurfacesDestroyed(AWindow aWindow2) {
                boolean z7;
                synchronized (MediaPlayer.this) {
                    z7 = MediaPlayer.this.mVoutCount > 0;
                }
                if (z7) {
                    MediaPlayer.this.setVideoTrackEnabled(false);
                }
            }
        });
        this.mWindow = aWindow;
        this.mAudioPlugReceiver = (!AndroidUtil.isLolliPopOrLater || AndroidUtil.isMarshMallowOrLater) ? null : createAudioPlugReceiver();
        this.mAudioDeviceCallback = AndroidUtil.isMarshMallowOrLater ? createAudioDeviceCallback() : null;
        this.mHandlerMainThread = new Handler(Looper.getMainLooper());
        nativeNewFromLibVlc(iLibVLC, aWindow);
    }

    private AudioDeviceCallback createAudioDeviceCallback() {
        return new AudioDeviceCallback() { // from class: org.videolan.libvlc.MediaPlayer.3
            private SparseArray<Long> mEncodedDevices = new SparseArray<>();

            private void onAudioDevicesChanged() {
                long jLongValue = 0;
                for (int i8 = 0; i8 < this.mEncodedDevices.size(); i8++) {
                    jLongValue |= this.mEncodedDevices.valueAt(i8).longValue();
                }
                MediaPlayer.this.updateAudioOutputDevice(jLongValue, jLongValue == 0 ? "stereo" : "pcm");
            }

            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                    if (audioDeviceInfo.isSink()) {
                        long encodingFlags = MediaPlayer.this.getEncodingFlags(audioDeviceInfo.getEncodings());
                        if (encodingFlags != 0) {
                            this.mEncodedDevices.put(audioDeviceInfo.getId(), Long.valueOf(encodingFlags));
                        }
                    }
                }
                onAudioDevicesChanged();
            }

            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                    if (audioDeviceInfo.isSink()) {
                        this.mEncodedDevices.remove(audioDeviceInfo.getId());
                    }
                }
                onAudioDevicesChanged();
            }
        };
    }

    private BroadcastReceiver createAudioPlugReceiver() {
        return new BroadcastReceiver() { // from class: org.videolan.libvlc.MediaPlayer.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (action != null && action.equalsIgnoreCase("android.media.action.HDMI_AUDIO_PLUG")) {
                    MediaPlayer.this.updateAudioOutputDevice(intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 1 ? MediaPlayer.this.getEncodingFlags(intent.getIntArrayExtra("android.media.extra.ENCODINGS")) : 0L, "stereo");
                }
            }
        };
    }

    private static Chapter createChapterFromNative(long j8, long j9, String str) {
        return new Chapter(j8, j9, str);
    }

    private static Title createTitleFromNative(long j8, String str, int i8) {
        return new Title(j8, str, i8);
    }

    private static TrackDescription createTrackDescriptionFromNative(int i8, String str) {
        return new TrackDescription(i8, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getEncodingFlags(int[] iArr) {
        long j8 = 0;
        if (iArr == null) {
            return 0L;
        }
        for (int i8 : iArr) {
            if (isEncoded(i8)) {
                j8 |= (long) (1 << i8);
            }
        }
        return j8;
    }

    private boolean isAudioTrack() {
        String str = this.mAudioOutput;
        return str != null && str.equals("android_audiotrack");
    }

    private boolean isEncoded(int i8) {
        return i8 == 5 || i8 == 6 || i8 == 7 || i8 == 8 || i8 == 14;
    }

    private native boolean nativeAddSlave(int i8, String str, boolean z7);

    private native String nativeGetAspectRatio();

    private native long nativeGetAudioDelay();

    private native int nativeGetAudioTrack();

    private native TrackDescription[] nativeGetAudioTracks();

    private native int nativeGetAudioTracksCount();

    private native Chapter[] nativeGetChapters(int i8);

    private native float nativeGetScale();

    private native long nativeGetSpuDelay();

    private native int nativeGetSpuTrack();

    private native TrackDescription[] nativeGetSpuTracks();

    private native int nativeGetSpuTracksCount();

    private native int nativeGetTeletext();

    private native Title[] nativeGetTitles();

    private native int nativeGetVideoTrack();

    private native TrackDescription[] nativeGetVideoTracks();

    private native int nativeGetVideoTracksCount();

    private native void nativeNewFromLibVlc(ILibVLC iLibVLC, AWindow aWindow);

    private native void nativeNewFromMedia(IMedia iMedia, AWindow aWindow);

    private native void nativePlay();

    private native boolean nativeRecord(String str);

    private native void nativeRelease();

    private native void nativeSetAspectRatio(String str);

    private native boolean nativeSetAudioDelay(long j8);

    private native boolean nativeSetAudioOutput(String str);

    private native boolean nativeSetAudioOutputDevice(String str);

    private native boolean nativeSetAudioTrack(int i8);

    private native boolean nativeSetEqualizer(Equalizer equalizer);

    private native void nativeSetMedia(IMedia iMedia);

    private native int nativeSetRenderer(RendererItem rendererItem);

    private native void nativeSetScale(float f8);

    private native boolean nativeSetSpuDelay(long j8);

    private native boolean nativeSetSpuTrack(int i8);

    private native void nativeSetTeletext(int i8);

    private native void nativeSetVideoTitleDisplay(int i8, int i9);

    private native boolean nativeSetVideoTrack(int i8);

    private native void nativeStop();

    private native boolean nativeUpdateViewpoint(float f8, float f9, float f10, float f11, boolean z7);

    private void registerAudioPlug(boolean z7) {
        if (z7 == this.mAudioPlugRegistered) {
            return;
        }
        if (this.mAudioDeviceCallback != null) {
            registerAudioPlugV23(z7);
        } else if (this.mAudioPlugReceiver != null) {
            registerAudioPlugV21(z7);
        }
        this.mAudioPlugRegistered = z7;
    }

    private void registerAudioPlugV21(boolean z7) {
        if (!z7) {
            this.mILibVLC.getAppContext().unregisterReceiver(this.mAudioPlugReceiver);
            return;
        }
        Intent intentRegisterReceiver = this.mILibVLC.getAppContext().registerReceiver(this.mAudioPlugReceiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        if (intentRegisterReceiver != null) {
            this.mAudioPlugReceiver.onReceive(this.mILibVLC.getAppContext(), intentRegisterReceiver);
        }
    }

    private void registerAudioPlugV23(boolean z7) {
        AudioManager audioManager = (AudioManager) this.mILibVLC.getAppContext().getSystemService(AudioManager.class);
        if (!z7) {
            audioManager.unregisterAudioDeviceCallback(this.mAudioDeviceCallback);
        } else {
            this.mAudioDeviceCallback.onAudioDevicesAdded(audioManager.getDevices(2));
            audioManager.registerAudioDeviceCallback(this.mAudioDeviceCallback, null);
        }
    }

    private synchronized boolean setAudioOutputDeviceInternal(String str, boolean z7) {
        boolean zNativeSetAudioOutputDevice;
        try {
            this.mAudioOutputDevice = str;
            if (z7) {
                boolean z8 = str == null && isAudioTrack();
                this.mListenAudioPlug = z8;
                if (!z8) {
                    registerAudioPlug(false);
                }
            }
            zNativeSetAudioOutputDevice = nativeSetAudioOutputDevice(str);
            if (!zNativeSetAudioOutputDevice) {
                this.mAudioOutputDevice = null;
                this.mListenAudioPlug = false;
            }
            if (this.mListenAudioPlug) {
                registerAudioPlug(true);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zNativeSetAudioOutputDevice;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void updateAudioOutputDevice(long j8, String str) {
        boolean z7 = j8 != 0;
        try {
            this.mCanDoPassthrough = z7;
            if (this.mAudioDigitalOutputEnabled && z7) {
                str = "encoded:" + j8;
            }
            if (!str.equals(this.mAudioPlugOutputDevice)) {
                this.mAudioPlugOutputDevice = str;
                setAudioOutputDeviceInternal(str, false);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean addSlave(int i8, Uri uri, boolean z7) {
        return nativeAddSlave(i8, VLCUtil.encodeVLCUri(uri), z7);
    }

    public void attachViews(VLCVideoLayout vLCVideoLayout, DisplayManager displayManager, boolean z7, boolean z8) {
        VideoHelper videoHelper = new VideoHelper(this, vLCVideoLayout, displayManager, z7, z8);
        this.mVideoHelper = videoHelper;
        videoHelper.attachViews();
    }

    public boolean canDoPassthrough() {
        return this.mCanDoPassthrough;
    }

    public void detachViews() {
        VideoHelper videoHelper = this.mVideoHelper;
        if (videoHelper != null) {
            videoHelper.release();
            this.mVideoHelper = null;
        }
    }

    public synchronized boolean forceAudioDigitalEncodings(int[] iArr) {
        try {
            if (!isAudioTrack()) {
                return false;
            }
            if (iArr.length == 0) {
                setAudioOutputDeviceInternal(null, true);
            } else {
                String str = "encoded:" + getEncodingFlags(iArr);
                if (!str.equals(this.mAudioPlugOutputDevice)) {
                    this.mAudioPlugOutputDevice = str;
                    setAudioOutputDeviceInternal(str, true);
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public String getAspectRatio() {
        return nativeGetAspectRatio();
    }

    public long getAudioDelay() {
        return nativeGetAudioDelay();
    }

    public int getAudioTrack() {
        return nativeGetAudioTrack();
    }

    public TrackDescription[] getAudioTracks() {
        return nativeGetAudioTracks();
    }

    public int getAudioTracksCount() {
        return nativeGetAudioTracksCount();
    }

    public native int getChapter();

    public Chapter[] getChapters(int i8) {
        return nativeGetChapters(i8);
    }

    public IMedia.VideoTrack getCurrentVideoTrack() {
        if (getVideoTrack() == -1) {
            return null;
        }
        int trackCount = this.mMedia.getTrackCount();
        for (int i8 = 0; i8 < trackCount; i8++) {
            IMedia.Track track = this.mMedia.getTrack(i8);
            if (track.type == 1) {
                return (IMedia.VideoTrack) track;
            }
        }
        return null;
    }

    @Override // org.videolan.libvlc.VLCObject
    public /* bridge */ /* synthetic */ long getInstance() {
        return super.getInstance();
    }

    public native long getLength();

    @Override // org.videolan.libvlc.VLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public /* bridge */ /* synthetic */ ILibVLC getLibVLC() {
        return super.getLibVLC();
    }

    public synchronized IMedia getMedia() {
        try {
            IMedia iMedia = this.mMedia;
            if (iMedia != null) {
                iMedia.retain();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mMedia;
    }

    public native int getPlayerState();

    public native float getPosition();

    public native float getRate();

    public float getScale() {
        return nativeGetScale();
    }

    public long getSpuDelay() {
        return nativeGetSpuDelay();
    }

    public int getSpuTrack() {
        return nativeGetSpuTrack();
    }

    public TrackDescription[] getSpuTracks() {
        return nativeGetSpuTracks();
    }

    public int getSpuTracksCount() {
        return nativeGetSpuTracksCount();
    }

    public int getTeletext() {
        return nativeGetTeletext();
    }

    public native long getTime();

    public native int getTitle();

    public Title[] getTitles() {
        return nativeGetTitles();
    }

    public IVLCVout getVLCVout() {
        return this.mWindow;
    }

    public ScaleType getVideoScale() {
        VideoHelper videoHelper = this.mVideoHelper;
        return videoHelper != null ? videoHelper.getVideoScale() : ScaleType.SURFACE_BEST_FIT;
    }

    public int getVideoTrack() {
        return nativeGetVideoTrack();
    }

    public TrackDescription[] getVideoTracks() {
        return nativeGetVideoTracks();
    }

    public int getVideoTracksCount() {
        return nativeGetVideoTracksCount();
    }

    public native int getVolume();

    public synchronized boolean hasMedia() {
        return this.mMedia != null;
    }

    public native boolean isPlaying();

    @Override // org.videolan.libvlc.VLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public /* bridge */ /* synthetic */ boolean isReleased() {
        return super.isReleased();
    }

    public native boolean isSeekable();

    public native void nativeSetPosition(float f8, boolean z7);

    public native long nativeSetTime(long j8, boolean z7);

    public native void navigate(int i8);

    public native int nextChapter();

    @Override // org.videolan.libvlc.VLCObject
    public void onReleaseNative() {
        detachViews();
        this.mWindow.detachViews();
        registerAudioPlug(false);
        IMedia iMedia = this.mMedia;
        if (iMedia != null) {
            iMedia.release();
        }
        RendererItem rendererItem = this.mRenderer;
        if (rendererItem != null) {
            rendererItem.release();
        }
        this.mVoutCount = 0;
        nativeRelease();
    }

    public native void pause();

    public void play() {
        synchronized (this) {
            try {
                if (!this.mPlaying) {
                    if (this.mAudioReset) {
                        String str = this.mAudioOutput;
                        if (str != null) {
                            nativeSetAudioOutput(str);
                        }
                        String str2 = this.mAudioOutputDevice;
                        if (str2 != null) {
                            nativeSetAudioOutputDevice(str2);
                        }
                        this.mAudioReset = false;
                    }
                    if (this.mListenAudioPlug) {
                        registerAudioPlug(true);
                    }
                    this.mPlayRequested = true;
                    if (this.mWindow.areSurfacesWaiting()) {
                        return;
                    }
                }
                this.mPlaying = true;
                nativePlay();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void playAsset(Context context, String str) throws IOException {
        AssetFileDescriptor assetFileDescriptorOpenFd = context.getAssets().openFd(str);
        this.mAfd = assetFileDescriptorOpenFd;
        play(assetFileDescriptorOpenFd);
    }

    public native int previousChapter();

    public boolean record(String str) {
        return nativeRecord(str);
    }

    public void setAspectRatio(String str) {
        nativeSetAspectRatio(str);
    }

    public boolean setAudioDelay(long j8) {
        return nativeSetAudioDelay(j8);
    }

    public synchronized boolean setAudioDigitalOutputEnabled(boolean z7) {
        if (z7 == this.mAudioDigitalOutputEnabled) {
            return true;
        }
        if (this.mListenAudioPlug && isAudioTrack()) {
            registerAudioPlug(false);
            this.mAudioDigitalOutputEnabled = z7;
            registerAudioPlug(true);
            return true;
        }
        return false;
    }

    public synchronized boolean setAudioOutput(String str) {
        boolean zNativeSetAudioOutput;
        try {
            this.mAudioOutput = str;
            boolean zIsAudioTrack = isAudioTrack();
            this.mListenAudioPlug = zIsAudioTrack;
            if (!zIsAudioTrack) {
                registerAudioPlug(false);
            }
            zNativeSetAudioOutput = nativeSetAudioOutput(str);
            if (!zNativeSetAudioOutput) {
                this.mAudioOutput = null;
                this.mListenAudioPlug = false;
            }
            if (this.mListenAudioPlug) {
                registerAudioPlug(true);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zNativeSetAudioOutput;
    }

    public boolean setAudioOutputDevice(String str) {
        return setAudioOutputDeviceInternal(str, true);
    }

    public boolean setAudioTrack(int i8) {
        return nativeSetAudioTrack(i8);
    }

    public native void setChapter(int i8);

    public boolean setEqualizer(Equalizer equalizer) {
        return nativeSetEqualizer(equalizer);
    }

    public synchronized void setEventListener(EventListener eventListener) {
        super.setEventListener((AbstractVLCEvent.Listener) eventListener);
    }

    public void setMedia(IMedia iMedia) {
        if (iMedia != null) {
            if (iMedia.isReleased()) {
                throw new IllegalArgumentException("Media is released");
            }
            iMedia.setDefaultMediaPlayerOptions();
        }
        nativeSetMedia(iMedia);
        synchronized (this) {
            try {
                IMedia iMedia2 = this.mMedia;
                if (iMedia2 != null) {
                    iMedia2.release();
                }
                if (iMedia != null) {
                    iMedia.retain();
                }
                this.mMedia = iMedia;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setPosition(float f8, boolean z7) {
        nativeSetPosition(f8, z7);
    }

    public native void setRate(float f8);

    public int setRenderer(RendererItem rendererItem) {
        RendererItem rendererItem2 = this.mRenderer;
        if (rendererItem2 != null) {
            rendererItem2.release();
        }
        if (rendererItem != null) {
            rendererItem.retain();
        }
        this.mRenderer = rendererItem;
        return nativeSetRenderer(rendererItem);
    }

    public void setScale(float f8) {
        nativeSetScale(f8);
    }

    public boolean setSpuDelay(long j8) {
        return nativeSetSpuDelay(j8);
    }

    public boolean setSpuTrack(int i8) {
        return nativeSetSpuTrack(i8);
    }

    public void setTeletext(int i8) {
        nativeSetTeletext(i8);
    }

    public long setTime(long j8, boolean z7) {
        return nativeSetTime(j8, z7);
    }

    public native void setTitle(int i8);

    public void setUseOrientationFromBounds(Boolean bool) {
        this.mUseOrientationFromBounds = bool;
    }

    public void setVideoScale(ScaleType scaleType) {
        VideoHelper videoHelper = this.mVideoHelper;
        if (videoHelper != null) {
            videoHelper.setVideoScale(scaleType);
        }
    }

    public void setVideoTitleDisplay(int i8, int i9) {
        nativeSetVideoTitleDisplay(i8, i9);
    }

    public boolean setVideoTrack(int i8) {
        if (i8 == -1 || (this.mWindow.areViewsAttached() && !this.mWindow.areSurfacesWaiting())) {
            return nativeSetVideoTrack(i8);
        }
        return false;
    }

    public void setVideoTrackEnabled(boolean z7) {
        TrackDescription[] videoTracks;
        if (!z7) {
            setVideoTrack(-1);
            return;
        }
        if (isReleased() || !hasMedia() || getVideoTrack() != -1 || (videoTracks = getVideoTracks()) == null) {
            return;
        }
        for (TrackDescription trackDescription : videoTracks) {
            int i8 = trackDescription.id;
            if (i8 != -1) {
                setVideoTrack(i8);
                return;
            }
        }
    }

    public native int setVolume(int i8);

    public void stop() {
        synchronized (this) {
            this.mPlayRequested = false;
            this.mPlaying = false;
            this.mAudioReset = true;
        }
        nativeStop();
        AssetFileDescriptor assetFileDescriptor = this.mAfd;
        if (assetFileDescriptor != null) {
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    public void updateVideoSurfaces() {
        VideoHelper videoHelper = this.mVideoHelper;
        if (videoHelper != null) {
            videoHelper.updateVideoSurfaces();
        }
    }

    public boolean updateViewpoint(float f8, float f9, float f10, float f11, boolean z7) {
        return nativeUpdateViewpoint(f8, f9, f10, f11, z7);
    }

    public Boolean useOrientationFromBounds() {
        return this.mUseOrientationFromBounds;
    }

    public static class Equalizer {
        private long mInstance;

        private Equalizer() {
            nativeNew();
        }

        public static Equalizer create() {
            return new Equalizer();
        }

        public static Equalizer createFromPreset(int i8) {
            return new Equalizer(i8);
        }

        public static int getBandCount() {
            return nativeGetBandCount();
        }

        public static float getBandFrequency(int i8) {
            return nativeGetBandFrequency(i8);
        }

        public static int getPresetCount() {
            return nativeGetPresetCount();
        }

        public static String getPresetName(int i8) {
            return nativeGetPresetName(i8);
        }

        private native float nativeGetAmp(int i8);

        private static native int nativeGetBandCount();

        private static native float nativeGetBandFrequency(int i8);

        private native float nativeGetPreAmp();

        private static native int nativeGetPresetCount();

        private static native String nativeGetPresetName(int i8);

        private native void nativeNew();

        private native void nativeNewFromPreset(int i8);

        private native void nativeRelease();

        private native boolean nativeSetAmp(int i8, float f8);

        private native boolean nativeSetPreAmp(float f8);

        public void finalize() throws Throwable {
            try {
                nativeRelease();
            } finally {
                super.finalize();
            }
        }

        public float getAmp(int i8) {
            return nativeGetAmp(i8);
        }

        public float getPreAmp() {
            return nativeGetPreAmp();
        }

        public boolean setAmp(int i8, float f8) {
            return nativeSetAmp(i8, f8);
        }

        public boolean setPreAmp(float f8) {
            return nativeSetPreAmp(f8);
        }

        private Equalizer(int i8) {
            nativeNewFromPreset(i8);
        }
    }

    public boolean addSlave(int i8, String str, boolean z7) {
        return addSlave(i8, Uri.fromFile(new File(str)), z7);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:44:0x006b  */
    @Override // org.videolan.libvlc.VLCObject
    public synchronized Event onEventNative(int i8, long j8, long j9, float f8, String str) {
        try {
            if (i8 == 256) {
                this.mVoutCount = 0;
                notify();
            } else {
                if (i8 == 286) {
                    return new Event(i8, j8, str);
                }
                if (i8 == 273) {
                    return new Event(i8, j8);
                }
                if (i8 == 274) {
                    this.mVoutCount = (int) j8;
                    notify();
                    this.mHandlerMainThread.post(new Runnable() { // from class: org.videolan.libvlc.MediaPlayer.4
                        @Override // java.lang.Runnable
                        public void run() {
                            MediaPlayer.this.updateVideoSurfaces();
                        }
                    });
                    return new Event(i8, j8);
                }
                switch (i8) {
                    case Event.Opening /* 258 */:
                    case Event.Buffering /* 259 */:
                        break;
                    case Event.Playing /* 260 */:
                    case Event.Paused /* 261 */:
                        return new Event(i8);
                    case Event.Stopped /* 262 */:
                        this.mVoutCount = 0;
                        notify();
                        break;
                    default:
                        switch (i8) {
                            case Event.EndReached /* 265 */:
                            case Event.EncounteredError /* 266 */:
                                this.mVoutCount = 0;
                                notify();
                                break;
                            case Event.TimeChanged /* 267 */:
                                return new Event(i8, j8);
                            case Event.PositionChanged /* 268 */:
                                return new Event(i8, f8);
                            case Event.SeekableChanged /* 269 */:
                            case Event.PausableChanged /* 270 */:
                                return new Event(i8, j8);
                            default:
                                switch (i8) {
                                    case Event.ESAdded /* 276 */:
                                    case Event.ESDeleted /* 277 */:
                                    case Event.ESSelected /* 278 */:
                                        return new Event(i8, j8, j9);
                                    default:
                                        return null;
                                }
                        }
                        break;
                }
            }
            return new Event(i8, f8);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setPosition(float f8) {
        nativeSetPosition(f8, false);
    }

    public long setTime(long j8) {
        return nativeSetTime(j8, false);
    }

    public void play(AssetFileDescriptor assetFileDescriptor) {
        play(new Media(this.mILibVLC, assetFileDescriptor));
    }

    public void play(String str) {
        play(new Media(this.mILibVLC, str));
    }

    public MediaPlayer(IMedia iMedia) {
        super(iMedia);
        this.mUseOrientationFromBounds = Boolean.FALSE;
        this.mMedia = null;
        this.mRenderer = null;
        this.mAfd = null;
        this.mPlaying = false;
        this.mPlayRequested = false;
        this.mListenAudioPlug = true;
        this.mVoutCount = 0;
        this.mAudioReset = false;
        this.mAudioOutput = "android_audiotrack";
        this.mAudioOutputDevice = null;
        this.mAudioPlugRegistered = false;
        this.mAudioDigitalOutputEnabled = false;
        this.mAudioPlugOutputDevice = "stereo";
        this.mVideoHelper = null;
        AWindow aWindow = new AWindow(new AWindow.SurfaceCallback() { // from class: org.videolan.libvlc.MediaPlayer.1
            @Override // org.videolan.libvlc.AWindow.SurfaceCallback
            public void onSurfacesCreated(AWindow aWindow2) {
                boolean z7;
                boolean z8;
                synchronized (MediaPlayer.this) {
                    try {
                        z7 = false;
                        if (MediaPlayer.this.mPlaying || !MediaPlayer.this.mPlayRequested) {
                            z8 = MediaPlayer.this.mVoutCount == 0;
                        } else {
                            z8 = false;
                            z7 = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z7) {
                    MediaPlayer.this.play();
                } else if (z8) {
                    MediaPlayer.this.setVideoTrackEnabled(true);
                }
            }

            @Override // org.videolan.libvlc.AWindow.SurfaceCallback
            public void onSurfacesDestroyed(AWindow aWindow2) {
                boolean z7;
                synchronized (MediaPlayer.this) {
                    z7 = MediaPlayer.this.mVoutCount > 0;
                }
                if (z7) {
                    MediaPlayer.this.setVideoTrackEnabled(false);
                }
            }
        });
        this.mWindow = aWindow;
        this.mAudioPlugReceiver = (!AndroidUtil.isLolliPopOrLater || AndroidUtil.isMarshMallowOrLater) ? null : createAudioPlugReceiver();
        this.mAudioDeviceCallback = AndroidUtil.isMarshMallowOrLater ? createAudioDeviceCallback() : null;
        this.mHandlerMainThread = new Handler(Looper.getMainLooper());
        if (iMedia != null && !iMedia.isReleased()) {
            this.mMedia = iMedia;
            iMedia.retain();
            nativeNewFromMedia(this.mMedia, aWindow);
            return;
        }
        throw new IllegalArgumentException("Media is null or released");
    }

    public void play(Uri uri) {
        play(new Media(this.mILibVLC, uri));
    }

    public void play(IMedia iMedia) {
        setMedia(iMedia);
        iMedia.release();
        play();
    }
}
