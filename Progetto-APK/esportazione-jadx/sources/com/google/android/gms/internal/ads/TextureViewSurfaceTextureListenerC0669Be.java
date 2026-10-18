package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import java.io.IOException;
import java.util.HashMap;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Be, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class TextureViewSurfaceTextureListenerC0669Be extends AbstractC0699De implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final HashMap f12384b0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final InterfaceC0863Oe f12385I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0877Pe f12386J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f12387K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f12388L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f12389M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public MediaPlayer f12390N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Uri f12391O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f12392P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f12393Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f12394R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public C0834Me f12395S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f12396T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f12397U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public InterfaceC0684Ce f12398V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f12399W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Integer f12400a0;

    static {
        HashMap map = new HashMap();
        f12384b0 = map;
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_ERROR_IO), "MEDIA_ERROR_IO");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_ERROR_MALFORMED), "MEDIA_ERROR_MALFORMED");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_ERROR_UNSUPPORTED), "MEDIA_ERROR_UNSUPPORTED");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_ERROR_TIMED_OUT), "MEDIA_ERROR_TIMED_OUT");
        map.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        map.put(100, "MEDIA_ERROR_SERVER_DIED");
        map.put(1, "MEDIA_ERROR_UNKNOWN");
        map.put(1, "MEDIA_INFO_UNKNOWN");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_VIDEO_TRACK_LAGGING), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_BUFFERING_START), "MEDIA_INFO_BUFFERING_START");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_BUFFERING_END), "MEDIA_INFO_BUFFERING_END");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_BAD_INTERLEAVING), "MEDIA_INFO_BAD_INTERLEAVING");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_NOT_SEEKABLE), "MEDIA_INFO_NOT_SEEKABLE");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_METADATA_UPDATE), "MEDIA_INFO_METADATA_UPDATE");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_UNSUPPORTED_SUBTITLE), "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        map.put(Integer.valueOf(org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_SUBTITLE_TIMED_OUT), "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public TextureViewSurfaceTextureListenerC0669Be(Context context, InterfaceC0863Oe interfaceC0863Oe, C0877Pe c0877Pe, boolean z7, boolean z8) {
        super(context);
        this.f12388L = 0;
        this.f12389M = 0;
        this.f12399W = false;
        this.f12400a0 = null;
        setSurfaceTextureListener(this);
        this.f12385I = interfaceC0863Oe;
        this.f12386J = c0877Pe;
        this.f12396T = z7;
        this.f12387K = z8;
        c0877Pe.a(this);
    }

    public final void D() {
        SurfaceTexture surfaceTexture;
        p113o3.I.k("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture2 = getSurfaceTexture();
        if (this.f12391O == null || surfaceTexture2 == null) {
            return;
        }
        E(false);
        try {
            F2.G g8 = p083k3.l.f25980A.f25999s;
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f12390N = mediaPlayer;
            mediaPlayer.setOnBufferingUpdateListener(this);
            this.f12390N.setOnCompletionListener(this);
            this.f12390N.setOnErrorListener(this);
            this.f12390N.setOnInfoListener(this);
            this.f12390N.setOnPreparedListener(this);
            this.f12390N.setOnVideoSizeChangedListener(this);
            this.f12394R = 0;
            if (this.f12396T) {
                C0834Me c0834Me = new C0834Me(getContext());
                this.f12395S = c0834Me;
                int width = getWidth();
                int height = getHeight();
                c0834Me.f14726S = width;
                c0834Me.f14725R = height;
                c0834Me.f14728U = surfaceTexture2;
                this.f12395S.start();
                C0834Me c0834Me2 = this.f12395S;
                if (c0834Me2.f14728U == null) {
                    surfaceTexture = null;
                } else {
                    try {
                        c0834Me2.f14733Z.await();
                    } catch (InterruptedException unused) {
                    }
                    surfaceTexture = c0834Me2.f14727T;
                }
                if (surfaceTexture != null) {
                    surfaceTexture2 = surfaceTexture;
                } else {
                    this.f12395S.c();
                    this.f12395S = null;
                }
            }
            this.f12390N.setDataSource(getContext(), this.f12391O);
            this.f12390N.setSurface(new Surface(surfaceTexture2));
            this.f12390N.setAudioStreamType(3);
            this.f12390N.setScreenOnWhilePlaying(true);
            this.f12390N.prepareAsync();
            F(1);
        } catch (IOException e8) {
            e = e8;
            p120p3.h.h("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.f12391O)), e);
            onError(this.f12390N, 1, 0);
        } catch (IllegalArgumentException e9) {
            e = e9;
            p120p3.h.h("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.f12391O)), e);
            onError(this.f12390N, 1, 0);
        } catch (IllegalStateException e10) {
            e = e10;
            p120p3.h.h("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.f12391O)), e);
            onError(this.f12390N, 1, 0);
        }
    }

    public final void E(boolean z7) {
        p113o3.I.k("AdMediaPlayerView release");
        C0834Me c0834Me = this.f12395S;
        if (c0834Me != null) {
            c0834Me.c();
            this.f12395S = null;
        }
        MediaPlayer mediaPlayer = this.f12390N;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f12390N.release();
            this.f12390N = null;
            F(0);
            if (z7) {
                this.f12389M = 0;
            }
        }
    }

    public final void F(int i8) {
        C0905Re c0905Re = this.f12836H;
        C0877Pe c0877Pe = this.f12386J;
        if (i8 == 3) {
            c0877Pe.b();
            c0905Re.f16274d = true;
            c0905Re.a();
        } else if (this.f12388L == 3) {
            c0877Pe.f15407m = false;
            c0905Re.f16274d = false;
            c0905Re.a();
        }
        this.f12388L = i8;
    }

    public final boolean G() {
        int i8;
        return (this.f12390N == null || (i8 = this.f12388L) == -1 || i8 == 0 || i8 == 1) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int j() {
        if (G()) {
            return this.f12390N.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int k() {
        if (Build.VERSION.SDK_INT < 26 || !G()) {
            return -1;
        }
        return this.f12390N.getMetrics().getInt("android.media.mediaplayer.dropped");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int l() {
        if (G()) {
            return this.f12390N.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int m() {
        MediaPlayer mediaPlayer = this.f12390N;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int n() {
        MediaPlayer mediaPlayer = this.f12390N;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final long o() {
        return 0L;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i8) {
        this.f12394R = i8;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        p113o3.I.k("AdMediaPlayerView completion");
        F(5);
        this.f12389M = 5;
        p113o3.O.f27924l.post(new RunnableC2352ze(this, 0));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i8, int i9) {
        HashMap map = f12384b0;
        String str = (String) map.get(Integer.valueOf(i8));
        String str2 = (String) map.get(Integer.valueOf(i9));
        p120p3.h.g("AdMediaPlayerView MediaPlayer error: " + str + ":" + str2);
        F(-1);
        this.f12389M = -1;
        p113o3.O.f27924l.post(new K.a(this, str, str2, 19));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i8, int i9) {
        HashMap map = f12384b0;
        p113o3.I.k("AdMediaPlayerView MediaPlayer info: " + ((String) map.get(Integer.valueOf(i8))) + ":" + ((String) map.get(Integer.valueOf(i9))));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0048  */
    /* JADX WARN: Code duplicated, block: B:26:0x0056 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    /* JADX WARN: Code duplicated, block: B:32:0x0067  */
    /* JADX WARN: Code duplicated, block: B:36:0x0073  */
    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        int i10;
        int i11;
        int i12;
        int i13;
        int defaultSize = View.getDefaultSize(this.f12392P, i8);
        int defaultSize2 = View.getDefaultSize(this.f12393Q, i9);
        if (this.f12392P > 0 && this.f12393Q > 0 && this.f12395S == null) {
            int mode = View.MeasureSpec.getMode(i8);
            int size = View.MeasureSpec.getSize(i8);
            int mode2 = View.MeasureSpec.getMode(i9);
            int size2 = View.MeasureSpec.getSize(i9);
            if (mode != 1073741824) {
                if (mode == 1073741824) {
                    i13 = (this.f12393Q * size) / this.f12392P;
                    if (mode2 == Integer.MIN_VALUE || i13 <= size2) {
                        defaultSize2 = i13;
                        defaultSize = size;
                    }
                    defaultSize = size;
                    defaultSize2 = size2;
                } else {
                    if (mode2 == 1073741824) {
                        i12 = (this.f12392P * size2) / this.f12393Q;
                        if (mode != Integer.MIN_VALUE && i12 > size) {
                            defaultSize = size;
                        }
                        defaultSize2 = size2;
                    } else {
                        i10 = this.f12392P;
                        i11 = this.f12393Q;
                        if (mode2 == Integer.MIN_VALUE || i11 <= size2) {
                            i12 = i10;
                            size2 = i11;
                        } else {
                            i12 = (size2 * i10) / i11;
                        }
                        if (mode == Integer.MIN_VALUE && i12 > size) {
                            defaultSize2 = (i11 * size) / i10;
                            defaultSize = size;
                        }
                    }
                    defaultSize = i12;
                    defaultSize2 = size2;
                }
            } else if (mode2 == 1073741824) {
                int i14 = this.f12392P;
                int i15 = i14 * size2;
                int i16 = this.f12393Q;
                int i17 = size * i16;
                if (i15 < i17) {
                    defaultSize = i15 / i16;
                } else {
                    if (i15 > i17) {
                        defaultSize2 = i17 / i14;
                        defaultSize = size;
                    }
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else {
                mode = 1073741824;
                if (mode == 1073741824) {
                    i13 = (this.f12393Q * size) / this.f12392P;
                    if (mode2 == Integer.MIN_VALUE) {
                    }
                    defaultSize2 = i13;
                    defaultSize = size;
                } else {
                    if (mode2 == 1073741824) {
                        i12 = (this.f12392P * size2) / this.f12393Q;
                        if (mode != Integer.MIN_VALUE) {
                        }
                    } else {
                        i10 = this.f12392P;
                        i11 = this.f12393Q;
                        if (mode2 == Integer.MIN_VALUE) {
                            i12 = i10;
                            size2 = i11;
                        } else {
                            i12 = i10;
                            size2 = i11;
                        }
                        if (mode == Integer.MIN_VALUE) {
                            defaultSize2 = (i11 * size) / i10;
                            defaultSize = size;
                        }
                    }
                    defaultSize = i12;
                    defaultSize2 = size2;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
        C0834Me c0834Me = this.f12395S;
        if (c0834Me != null) {
            c0834Me.b(defaultSize, defaultSize2);
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        p113o3.I.k("AdMediaPlayerView prepared");
        F(2);
        C0877Pe c0877Pe = this.f12386J;
        if (c0877Pe.f15403i && !c0877Pe.f15404j) {
            S3.e.v(c0877Pe.f15399e, c0877Pe.f15398d, "vfr2");
            c0877Pe.f15404j = true;
        }
        p113o3.O.f27924l.post(new RunnableC0755Ha(this, mediaPlayer, 15));
        this.f12392P = mediaPlayer.getVideoWidth();
        this.f12393Q = mediaPlayer.getVideoHeight();
        int i8 = this.f12397U;
        if (i8 != 0) {
            u(i8);
        }
        if (this.f12387K && G() && this.f12390N.getCurrentPosition() > 0 && this.f12389M != 3) {
            p113o3.I.k("AdMediaPlayerView nudging MediaPlayer");
            MediaPlayer mediaPlayer2 = this.f12390N;
            if (mediaPlayer2 != null) {
                try {
                    mediaPlayer2.setVolume(0.0f, 0.0f);
                } catch (IllegalStateException unused) {
                }
            } else {
                p120p3.h.g("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
            }
            this.f12390N.start();
            int currentPosition = this.f12390N.getCurrentPosition();
            p083k3.l.f25980A.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            while (G() && this.f12390N.getCurrentPosition() == currentPosition) {
                p083k3.l.f25980A.f25990j.getClass();
                if (System.currentTimeMillis() - jCurrentTimeMillis > 250) {
                    break;
                }
            }
            this.f12390N.pause();
            zzn();
        }
        p120p3.h.f("AdMediaPlayerView stream dimensions: " + this.f12392P + " x " + this.f12393Q);
        if (this.f12389M == 3) {
            t();
        }
        zzn();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i8, int i9) {
        p113o3.I.k("AdMediaPlayerView surface created");
        D();
        p113o3.O.f27924l.post(new RunnableC2352ze(this, 1));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        p113o3.I.k("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.f12390N;
        if (mediaPlayer != null && this.f12397U == 0) {
            this.f12397U = mediaPlayer.getCurrentPosition();
        }
        C0834Me c0834Me = this.f12395S;
        if (c0834Me != null) {
            c0834Me.c();
        }
        p113o3.O.f27924l.post(new RunnableC2352ze(this, 2));
        E(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i8, int i9) {
        p113o3.I.k("AdMediaPlayerView surface changed");
        int i10 = this.f12389M;
        int i11 = 0;
        boolean z7 = this.f12392P == i8 && this.f12393Q == i9;
        if (this.f12390N != null && i10 == 3 && z7) {
            int i12 = this.f12397U;
            if (i12 != 0) {
                u(i12);
            }
            t();
        }
        C0834Me c0834Me = this.f12395S;
        if (c0834Me != null) {
            c0834Me.b(i8, i9);
        }
        p113o3.O.f27924l.post(new RunnableC0654Ae(this, i8, i9, i11));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f12386J.d(this);
        this.f12835G.a(surfaceTexture, this.f12398V);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i8, int i9) {
        p113o3.I.k("AdMediaPlayerView size changed: " + i8 + " x " + i9);
        this.f12392P = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.f12393Q = videoHeight;
        if (this.f12392P == 0 || videoHeight == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i8) {
        p113o3.I.k("AdMediaPlayerView window visibility changed to " + i8);
        p113o3.O.f27924l.post(new androidx.leanback.widget.C(this, i8, 5));
        super.onWindowVisibilityChanged(i8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final long p() {
        if (this.f12400a0 != null) {
            return (q() * ((long) this.f12394R)) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final long q() {
        if (this.f12400a0 != null) {
            return ((long) l()) * ((long) this.f12400a0.intValue());
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final String r() {
        return "MediaPlayer".concat(true != this.f12396T ? HttpUrl.FRAGMENT_ENCODE_SET : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void s() {
        p113o3.I.k("AdMediaPlayerView pause");
        int i8 = 4;
        if (G() && this.f12390N.isPlaying()) {
            this.f12390N.pause();
            F(4);
            p113o3.O.f27924l.post(new RunnableC2352ze(this, i8));
        }
        this.f12389M = 4;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void t() {
        p113o3.I.k("AdMediaPlayerView play");
        int i8 = 3;
        if (G()) {
            this.f12390N.start();
            F(3);
            this.f12835G.f14175c = true;
            p113o3.O.f27924l.post(new RunnableC2352ze(this, i8));
        }
        this.f12389M = 3;
    }

    @Override // android.view.View
    public final String toString() {
        return com.google.protobuf.U2.l(TextureViewSurfaceTextureListenerC0669Be.class.getName(), "@", Integer.toHexString(hashCode()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void u(int i8) {
        p113o3.I.k("AdMediaPlayerView seek " + i8);
        if (!G()) {
            this.f12397U = i8;
        } else {
            this.f12390N.seekTo(i8);
            this.f12397U = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void v(InterfaceC0684Ce interfaceC0684Ce) {
        this.f12398V = interfaceC0684Ce;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void w(String str) {
        Uri uri = Uri.parse(str);
        C1758o6 c1758o6I = C1758o6.i(uri);
        if (c1758o6I == null || c1758o6I.f20234G != null) {
            if (c1758o6I != null) {
                uri = Uri.parse(c1758o6I.f20234G);
            }
            this.f12391O = uri;
            this.f12397U = 0;
            D();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void x() {
        p113o3.I.k("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.f12390N;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f12390N.release();
            this.f12390N = null;
            F(0);
            this.f12389M = 0;
        }
        this.f12386J.c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void y(float f8, float f9) {
        C0834Me c0834Me = this.f12395S;
        if (c0834Me != null) {
            c0834Me.d(f8, f9);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0891Qe
    public final void zzn() {
        C0905Re c0905Re = this.f12836H;
        float f8 = c0905Re.f16273c ? c0905Re.f16275e ? 0.0f : c0905Re.f16276f : 0.0f;
        MediaPlayer mediaPlayer = this.f12390N;
        if (mediaPlayer == null) {
            p120p3.h.g("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        } else {
            try {
                mediaPlayer.setVolume(f8, f8);
            } catch (IllegalStateException unused) {
            }
        }
    }
}
