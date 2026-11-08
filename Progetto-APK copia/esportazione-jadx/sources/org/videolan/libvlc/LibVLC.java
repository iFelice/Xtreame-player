package org.videolan.libvlc;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.videolan.libvlc.interfaces.AbstractVLCEvent;
import org.videolan.libvlc.interfaces.ILibVLC;
import org.videolan.libvlc.util.HWDecoderUtil;

/* JADX INFO: loaded from: classes2.dex */
public class LibVLC extends VLCObject<ILibVLC.Event> implements ILibVLC {
    private static final String TAG = "VLC/LibVLC";
    private static boolean sLoaded = false;
    final Context mAppContext;

    public static class Event extends AbstractVLCEvent {
        public Event(int i8) {
            super(i8);
        }
    }

    public LibVLC(Context context, List<String> list) {
        this.mAppContext = context.getApplicationContext();
        loadLibraries();
        list = list == null ? new ArrayList<>() : list;
        boolean z7 = true;
        boolean z8 = true;
        for (String str : list) {
            z7 = str.startsWith("--aout=") ? false : z7;
            z8 = str.startsWith("--android-display-chroma") ? false : z8;
            if (!z7 && !z8) {
                break;
            }
        }
        if (z7 || z8) {
            if (z7) {
                if (HWDecoderUtil.getAudioOutputFromDevice() == HWDecoderUtil.AudioOutput.OPENSLES) {
                    list.add("--aout=opensles");
                } else {
                    list.add("--aout=android_audiotrack");
                }
            }
            if (z8) {
                list.add("--android-display-chroma");
                list.add("RV16");
            }
        }
        nativeNew((String[]) list.toArray(new String[list.size()]), context.getDir("vlc", 0).getAbsolutePath());
    }

    public static native String changeset();

    public static native String compiler();

    public static synchronized void loadLibraries() {
        if (sLoaded) {
            return;
        }
        sLoaded = true;
        try {
            System.loadLibrary("c++_shared");
        } catch (SecurityException unused) {
            Log.e(TAG, "Encountered a security issue when loading c++_shared library");
        } catch (UnsatisfiedLinkError unused2) {
            Log.e(TAG, "Can't load c++_shared library");
        }
        try {
            System.loadLibrary("vlc");
            System.loadLibrary("vlcjni");
        } catch (SecurityException e8) {
            Log.e(TAG, "Encountered a security issue when loading vlcjni library: " + e8);
            System.exit(1);
        } catch (UnsatisfiedLinkError e9) {
            Log.e(TAG, "Can't load vlcjni library: " + e9);
            System.exit(1);
        }
    }

    public static native int majorVersion();

    private native void nativeNew(String[] strArr, String str);

    private native void nativeRelease();

    private native void nativeSetUserAgent(String str, String str2);

    public static native String version();

    @Override // org.videolan.libvlc.interfaces.ILibVLC
    public Context getAppContext() {
        return this.mAppContext;
    }

    @Override // org.videolan.libvlc.VLCObject
    public /* bridge */ /* synthetic */ long getInstance() {
        return super.getInstance();
    }

    @Override // org.videolan.libvlc.VLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public /* bridge */ /* synthetic */ ILibVLC getLibVLC() {
        return super.getLibVLC();
    }

    @Override // org.videolan.libvlc.VLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public /* bridge */ /* synthetic */ boolean isReleased() {
        return super.isReleased();
    }

    @Override // org.videolan.libvlc.VLCObject
    public ILibVLC.Event onEventNative(int i8, long j8, long j9, float f8, String str) {
        return null;
    }

    @Override // org.videolan.libvlc.VLCObject
    public void onReleaseNative() {
        nativeRelease();
    }

    public void setUserAgent(String str, String str2) {
        nativeSetUserAgent(str, str2);
    }

    public LibVLC(Context context) {
        this(context, null);
    }
}
