package pe.hf.black20;

import B0.C0073x;
import B0.C0075z;
import B0.O;
import G0.j;
import O0.AbstractC0277a;
import O0.N;
import W0.p;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.media3.exoplayer.dash.DashMediaSource$Factory;
import androidx.media3.exoplayer.hls.HlsMediaSource$Factory;
import androidx.media3.ui.PlayerView;
import b7.C0532l;
import b7.P;
import b7.U;
import b7.V;
import b7.W;
import b7.X;
import b7.Y;
import c7.a;
import c7.b;
import c7.c;
import c7.d;
import com.google.protobuf.U2;
import h7.i;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.videolan.libvlc.LibVLC;
import org.videolan.libvlc.Media;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IVLCVout;
import org.videolan.libvlc.util.HWDecoderUtil;
import p000a.r;
import p034e2.z;
import p094m0.I;
import p094m0.j0;
import p117p0.M;
import p141s0.InterfaceC3183h;
import pe.hf.black20.MultiScreenActivityEXO;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class MultiScreenActivityEXO extends Activity {

    /* JADX INFO: renamed from: S1, reason: collision with root package name */
    public static InterfaceC3183h f28655S1;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public ImageButton f28656A0;

    /* JADX INFO: renamed from: A1, reason: collision with root package name */
    public int f28657A1;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public ImageButton f28658B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public ImageButton f28660C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public ImageButton f28662D0;

    /* JADX INFO: renamed from: D1, reason: collision with root package name */
    public JSONArray f28663D1;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public ImageButton f28664E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public Button f28666F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public Button f28669G0;

    /* JADX INFO: renamed from: G1, reason: collision with root package name */
    public PlayerView f28670G1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f28671H;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public Button f28672H0;

    /* JADX INFO: renamed from: H1, reason: collision with root package name */
    public PlayerView f28673H1;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public String f28674I;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public Button f28675I0;

    /* JADX INFO: renamed from: I1, reason: collision with root package name */
    public PlayerView f28676I1;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f28677J;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public int f28678J0;

    /* JADX INFO: renamed from: J1, reason: collision with root package name */
    public PlayerView f28679J1;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f28680K;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public int f28681K0;

    /* JADX INFO: renamed from: K1, reason: collision with root package name */
    public O f28682K1;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f28683L;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public int f28684L0;

    /* JADX INFO: renamed from: L1, reason: collision with root package name */
    public O f28685L1;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public SurfaceView f28686M;

    /* JADX INFO: renamed from: M1, reason: collision with root package name */
    public O f28688M1;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public SurfaceView f28689N;

    /* JADX INFO: renamed from: N1, reason: collision with root package name */
    public O f28691N1;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public SurfaceView f28692O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public SurfaceView f28695P;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public MediaPlayer f28706T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public MediaPlayer f28708U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public MediaPlayer f28710V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public MediaPlayer f28712W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public FrameLayout f28714X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public FrameLayout f28716Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public FrameLayout f28718Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public FrameLayout f28720a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public FrameLayout f28722b0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public GestureDetector f28723b1;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public FrameLayout f28724c0;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public ProgressBar f28725c1;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public FrameLayout f28726d0;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public ListView f28727d1;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public FrameLayout f28728e0;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public ListView f28729e1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public FrameLayout f28730f0;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public d f28731f1;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public FrameLayout f28732g0;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public b f28733g1;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public ImageButton f28734h0;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public b f28735h1;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public ImageButton f28736i0;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public c f28737i1;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public ImageButton f28738j0;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public i f28739j1;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ImageButton f28740k0;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public z f28741k1;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public ImageButton f28742l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public ImageButton f28744m0;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public ArrayList f28745m1;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public ImageButton f28746n0;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public ArrayList f28747n1;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public ImageButton f28748o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public ImageButton f28750p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public ImageButton f28752q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public ImageButton f28754r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public ImageButton f28756s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public ImageButton f28758t0;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public TextView f28759t1;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public ImageButton f28760u0;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public TextView f28761u1;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public ImageButton f28762v0;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public TextView f28763v1;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public ImageButton f28764w0;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public TextView f28765w1;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public ImageButton f28766x0;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public int f28767x1;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public ImageButton f28768y0;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public int f28769y1;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public ImageButton f28770z0;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public int f28771z1;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final MultiScreenActivityEXO f28668G = this;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public String f28698Q = "300";

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String f28701R = "300";

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public String f28704S = "300";

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public String f28687M0 = "p1";

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public String f28690N0 = "p1";

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public float f28693O0 = 0.0f;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public float f28696P0 = 0.0f;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public float f28699Q0 = 0.0f;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public float f28702R0 = 0.0f;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public int f28705S0 = 0;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public int f28707T0 = 0;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public int f28709U0 = 0;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public int f28711V0 = 0;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public int f28713W0 = 0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public int f28715X0 = 0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public int f28717Y0 = 0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public int f28719Z0 = 0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public int f28721a1 = 0;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public ArrayList f28743l1 = new ArrayList();

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public ArrayList f28749o1 = new ArrayList();

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final String f28751p1 = "no";

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public String f28753q1 = "0";

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public String f28755r1 = "0";

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public final String f28757s1 = "ASC";

    /* JADX INFO: renamed from: B1, reason: collision with root package name */
    public int f28659B1 = 0;

    /* JADX INFO: renamed from: C1, reason: collision with root package name */
    public final boolean f28661C1 = true;

    /* JADX INFO: renamed from: E1, reason: collision with root package name */
    public boolean f28665E1 = true;

    /* JADX INFO: renamed from: F1, reason: collision with root package name */
    public String f28667F1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: O1, reason: collision with root package name */
    public final W f28694O1 = new W(this, 0);

    /* JADX INFO: renamed from: P1, reason: collision with root package name */
    public final W f28697P1 = new W(this, 1);

    /* JADX INFO: renamed from: Q1, reason: collision with root package name */
    public final W f28700Q1 = new W(this, 2);

    /* JADX INFO: renamed from: R1, reason: collision with root package name */
    public final W f28703R1 = new W(this, 3);

    static {
        System.loadLibrary("native-lib");
    }

    public static void a(MultiScreenActivityEXO multiScreenActivityEXO) {
        multiScreenActivityEXO.f28693O0 = 0.0f;
        multiScreenActivityEXO.f28696P0 = 0.0f;
        multiScreenActivityEXO.f28699Q0 = 0.0f;
        multiScreenActivityEXO.f28702R0 = 0.0f;
        multiScreenActivityEXO.f28705S0 = 0;
        multiScreenActivityEXO.f28707T0 = 0;
        multiScreenActivityEXO.f28709U0 = 0;
        multiScreenActivityEXO.f28711V0 = 0;
        O o4 = multiScreenActivityEXO.f28682K1;
        if (o4 != null) {
            o4.W(0.0f);
        }
        O o7 = multiScreenActivityEXO.f28685L1;
        if (o7 != null) {
            o7.W(0.0f);
        }
        O o8 = multiScreenActivityEXO.f28688M1;
        if (o8 != null) {
            o8.W(0.0f);
        }
        O o9 = multiScreenActivityEXO.f28691N1;
        if (o9 != null) {
            o9.W(0.0f);
        }
        MediaPlayer mediaPlayer = multiScreenActivityEXO.f28706T;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(0);
        }
        MediaPlayer mediaPlayer2 = multiScreenActivityEXO.f28708U;
        if (mediaPlayer2 != null) {
            mediaPlayer2.setVolume(0);
        }
        MediaPlayer mediaPlayer3 = multiScreenActivityEXO.f28710V;
        if (mediaPlayer3 != null) {
            mediaPlayer3.setVolume(0);
        }
        MediaPlayer mediaPlayer4 = multiScreenActivityEXO.f28712W;
        if (mediaPlayer4 != null) {
            mediaPlayer4.setVolume(0);
        }
        r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28750p0);
        r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28752q0);
        r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28754r0);
        r.r(multiScreenActivityEXO, R.drawable.multi_mute, multiScreenActivityEXO.f28756s0);
    }

    public static void b(MultiScreenActivityEXO multiScreenActivityEXO) {
        if (multiScreenActivityEXO.f28730f0.getVisibility() == 8) {
            multiScreenActivityEXO.f28666F0.setClickable(false);
            multiScreenActivityEXO.f28669G0.setClickable(false);
            multiScreenActivityEXO.f28672H0.setClickable(false);
            multiScreenActivityEXO.f28675I0.setClickable(false);
            multiScreenActivityEXO.f28766x0.requestFocus();
            multiScreenActivityEXO.f28722b0.setVisibility(8);
            multiScreenActivityEXO.f28724c0.setVisibility(8);
            multiScreenActivityEXO.f28726d0.setVisibility(8);
            multiScreenActivityEXO.f28728e0.setVisibility(8);
            multiScreenActivityEXO.f28730f0.setVisibility(0);
        }
    }

    public static void c(MultiScreenActivityEXO multiScreenActivityEXO) {
        multiScreenActivityEXO.f28732g0.setVisibility(0);
        multiScreenActivityEXO.o();
        new Y(multiScreenActivityEXO).execute(new Void[0]);
        multiScreenActivityEXO.w();
    }

    public static AbstractC0277a n(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        int I7 = TextUtils.isEmpty(lastPathSegment) ? M.I(uri) : M.J(lastPathSegment);
        if (I7 == 2) {
            HlsMediaSource$Factory hlsMediaSource$Factory = new HlsMediaSource$Factory(f28655S1);
            hlsMediaSource$Factory.f9468i = true;
            hlsMediaSource$Factory.f9461b = new H0.d(9, false);
            return hlsMediaSource$Factory.b(I.a(uri));
        }
        if (I7 == 0) {
            return new DashMediaSource$Factory(f28655S1).b(I.a(uri));
        }
        if (I7 != 4) {
            throw new IllegalStateException(r.f("Unsupported type: ", I7));
        }
        InterfaceC3183h interfaceC3183h = f28655S1;
        C0073x c0073x = new C0073x(new p(), 19);
        j jVar = new j();
        U4.b bVar = new U4.b();
        I iA = I.a(uri);
        iA.f26702b.getClass();
        return new N(iA, interfaceC3183h, c0073x, jVar.b(iA), bVar, 1048576);
    }

    public final void d(String str) {
        O oA = new C0075z(this).a();
        this.f28682K1 = oA;
        oA.W(this.f28693O0);
        this.f28670G1.setPlayer(this.f28682K1);
        this.f28682K1.Q(n(Uri.parse(str)));
        this.f28682K1.K();
        this.f28682K1.h();
    }

    public final void e(String str) {
        O oA = new C0075z(this).a();
        this.f28685L1 = oA;
        oA.W(this.f28696P0);
        this.f28673H1.setPlayer(this.f28685L1);
        this.f28685L1.Q(n(Uri.parse(str)));
        this.f28685L1.K();
        this.f28685L1.h();
    }

    public final void f(String str) {
        O oA = new C0075z(this).a();
        this.f28688M1 = oA;
        oA.W(this.f28699Q0);
        this.f28676I1.setPlayer(this.f28688M1);
        this.f28688M1.Q(n(Uri.parse(str)));
        this.f28688M1.K();
        this.f28688M1.h();
    }

    public final void g(String str) {
        O oA = new C0075z(this).a();
        this.f28691N1 = oA;
        oA.W(this.f28702R0);
        this.f28679J1.setPlayer(this.f28691N1);
        this.f28691N1.Q(n(Uri.parse(str)));
        this.f28691N1.K();
        this.f28691N1.h();
    }

    public final void h(String str) {
        this.f28674I = str.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        q();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f28698Q);
        arrayList.add(this.f28701R);
        arrayList.add("--input-fast-seek");
        arrayList.add("--http-reconnect");
        arrayList.add("--repeat");
        arrayList.add("--avcodec-hw=any");
        if (HWDecoderUtil.getAudioOutputFromDevice() == HWDecoderUtil.AudioOutput.OPENSLES) {
            arrayList.add("--aout=opensles");
        } else {
            arrayList.add("--aout=android_audiotrack");
        }
        arrayList.add("--audio-time-stretch");
        arrayList.add("--avcodec-skip-frame");
        arrayList.add("--avcodec-skip-idct");
        arrayList.add("--audio-time-stretch");
        arrayList.add("--no-ts-trust-pcr");
        LibVLC libVLC = new LibVLC(this.f28668G, arrayList);
        this.f28686M.getHolder().setKeepScreenOn(true);
        MediaPlayer mediaPlayer = new MediaPlayer(libVLC);
        this.f28706T = mediaPlayer;
        mediaPlayer.setAudioDigitalOutputEnabled(true);
        Media media = new Media(libVLC, Uri.parse(this.f28674I));
        media.addOption(this.f28704S);
        media.addOption(":no-sout-all");
        media.addOption(":sout-keep");
        media.addOption(":http-user-agent=" + this.f28667F1);
        if (this.f28671H.contains("vlc_hw")) {
            if (this.f28671H.getString("vlc_hw", null).equals("yes")) {
                media.setHWDecoderEnabled(true, true);
            } else {
                media.setHWDecoderEnabled(false, true);
            }
        }
        this.f28706T.setMedia(media);
        IVLCVout vLCVout = this.f28706T.getVLCVout();
        vLCVout.setVideoView(this.f28686M);
        vLCVout.attachViews();
        this.f28706T.play();
        this.f28706T.setVolume(this.f28705S0);
        this.f28706T.getVLCVout().setWindowSize(this.f28714X.getWidth(), this.f28714X.getHeight());
        this.f28706T.setAspectRatio("16:9");
        this.f28706T.setScale(0.0f);
    }

    public final void i(String str) {
        this.f28677J = str.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        r();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f28698Q);
        arrayList.add(this.f28701R);
        arrayList.add("--input-fast-seek");
        arrayList.add("--http-reconnect");
        arrayList.add("--repeat");
        arrayList.add("--avcodec-hw=any");
        if (HWDecoderUtil.getAudioOutputFromDevice() == HWDecoderUtil.AudioOutput.OPENSLES) {
            arrayList.add("--aout=opensles");
        } else {
            arrayList.add("--aout=android_audiotrack");
        }
        arrayList.add("--audio-time-stretch");
        arrayList.add("--avcodec-skip-frame");
        arrayList.add("--avcodec-skip-idct");
        arrayList.add("--audio-time-stretch");
        arrayList.add("--no-ts-trust-pcr");
        LibVLC libVLC = new LibVLC(this.f28668G, arrayList);
        this.f28689N.getHolder().setKeepScreenOn(true);
        MediaPlayer mediaPlayer = new MediaPlayer(libVLC);
        this.f28708U = mediaPlayer;
        mediaPlayer.setAudioDigitalOutputEnabled(true);
        Media media = new Media(libVLC, Uri.parse(this.f28677J));
        media.addOption(this.f28704S);
        media.addOption(":no-sout-all");
        media.addOption(":sout-keep");
        media.addOption(":http-user-agent=" + this.f28667F1);
        if (this.f28671H.contains("vlc_hw")) {
            if (this.f28671H.getString("vlc_hw", null).equals("yes")) {
                media.setHWDecoderEnabled(true, true);
            } else {
                media.setHWDecoderEnabled(false, true);
            }
        }
        this.f28708U.setMedia(media);
        IVLCVout vLCVout = this.f28708U.getVLCVout();
        vLCVout.setVideoView(this.f28689N);
        vLCVout.attachViews();
        this.f28708U.play();
        this.f28708U.setVolume(this.f28707T0);
        this.f28708U.getVLCVout().setWindowSize(this.f28716Y.getWidth(), this.f28716Y.getHeight());
        this.f28708U.setAspectRatio("16:9");
        this.f28708U.setScale(0.0f);
    }

    public final void j(String str) {
        this.f28680K = str.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        s();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f28698Q);
        arrayList.add(this.f28701R);
        arrayList.add("--input-fast-seek");
        arrayList.add("--http-reconnect");
        arrayList.add("--repeat");
        arrayList.add("--avcodec-hw=any");
        if (HWDecoderUtil.getAudioOutputFromDevice() == HWDecoderUtil.AudioOutput.OPENSLES) {
            arrayList.add("--aout=opensles");
        } else {
            arrayList.add("--aout=android_audiotrack");
        }
        arrayList.add("--audio-time-stretch");
        arrayList.add("--avcodec-skip-frame");
        arrayList.add("--avcodec-skip-idct");
        arrayList.add("--audio-time-stretch");
        arrayList.add("--no-ts-trust-pcr");
        LibVLC libVLC = new LibVLC(this.f28668G, arrayList);
        this.f28692O.getHolder().setKeepScreenOn(true);
        MediaPlayer mediaPlayer = new MediaPlayer(libVLC);
        this.f28710V = mediaPlayer;
        mediaPlayer.setAudioDigitalOutputEnabled(true);
        Media media = new Media(libVLC, Uri.parse(this.f28680K));
        media.addOption(this.f28704S);
        media.addOption(":no-sout-all");
        media.addOption(":sout-keep");
        media.addOption(":http-user-agent=" + this.f28667F1);
        if (this.f28671H.contains("vlc_hw")) {
            if (this.f28671H.getString("vlc_hw", null).equals("yes")) {
                media.setHWDecoderEnabled(true, true);
            } else {
                media.setHWDecoderEnabled(false, true);
            }
        }
        this.f28710V.setMedia(media);
        IVLCVout vLCVout = this.f28710V.getVLCVout();
        vLCVout.setVideoView(this.f28692O);
        vLCVout.attachViews();
        this.f28710V.play();
        this.f28710V.setVolume(this.f28709U0);
        this.f28710V.getVLCVout().setWindowSize(this.f28718Z.getWidth(), this.f28718Z.getHeight());
        this.f28710V.setAspectRatio("16:9");
        this.f28710V.setScale(0.0f);
    }

    public final void k(String str) {
        this.f28683L = str.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        t();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f28698Q);
        arrayList.add(this.f28701R);
        arrayList.add("--input-fast-seek");
        arrayList.add("--http-reconnect");
        arrayList.add("--repeat");
        arrayList.add("--avcodec-hw=any");
        if (HWDecoderUtil.getAudioOutputFromDevice() == HWDecoderUtil.AudioOutput.OPENSLES) {
            arrayList.add("--aout=opensles");
        } else {
            arrayList.add("--aout=android_audiotrack");
        }
        arrayList.add("--audio-time-stretch");
        arrayList.add("--avcodec-skip-frame");
        arrayList.add("--avcodec-skip-idct");
        arrayList.add("--audio-time-stretch");
        arrayList.add("--no-ts-trust-pcr");
        LibVLC libVLC = new LibVLC(this.f28668G, arrayList);
        this.f28695P.getHolder().setKeepScreenOn(true);
        MediaPlayer mediaPlayer = new MediaPlayer(libVLC);
        this.f28712W = mediaPlayer;
        mediaPlayer.setAudioDigitalOutputEnabled(true);
        Media media = new Media(libVLC, Uri.parse(this.f28683L));
        media.addOption(this.f28704S);
        media.addOption(":no-sout-all");
        media.addOption(":sout-keep");
        media.addOption(":http-user-agent=" + this.f28667F1);
        if (this.f28671H.contains("vlc_hw")) {
            if (this.f28671H.getString("vlc_hw", null).equals("yes")) {
                media.setHWDecoderEnabled(true, true);
            } else {
                media.setHWDecoderEnabled(false, true);
            }
        }
        this.f28712W.setMedia(media);
        IVLCVout vLCVout = this.f28712W.getVLCVout();
        vLCVout.setVideoView(this.f28695P);
        vLCVout.attachViews();
        this.f28712W.play();
        this.f28712W.setVolume(this.f28711V0);
        this.f28712W.getVLCVout().setWindowSize(this.f28720a0.getWidth(), this.f28720a0.getHeight());
        this.f28712W.setAspectRatio("16:9");
        this.f28712W.setScale(0.0f);
    }

    public final void l() {
        this.f28666F0.setClickable(true);
        this.f28669G0.setClickable(true);
        this.f28672H0.setClickable(true);
        this.f28675I0.setClickable(true);
    }

    public final void m() {
        MultiScreenActivityEXO multiScreenActivityEXO = this.f28668G;
        View viewInflate = LayoutInflater.from(multiScreenActivityEXO).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(multiScreenActivityEXO).create();
        ((TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText("Your Maximum connections limit is " + this.f28659B1);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText("OK");
        button.setOnClickListener(new X(this, alertDialogCreate, 0));
        alertDialogCreate.show();
    }

    public final void o() {
        l();
        this.f28730f0.setVisibility(8);
        this.f28766x0.requestFocus();
        this.f28722b0.setVisibility(8);
        this.f28724c0.setVisibility(8);
        this.f28726d0.setVisibility(8);
        this.f28728e0.setVisibility(8);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i8;
        Cursor cursorQuery;
        z zVar;
        String str;
        z zVar2;
        super.onCreate(bundle);
        getWindow().addFlags(128);
        setContentView(R.layout.activity_multiscreen_exo);
        setRequestedOrientation(-1);
        setRequestedOrientation(14);
        MultiScreenActivityEXO multiScreenActivityEXO = this.f28668G;
        this.f28671H = multiScreenActivityEXO.getSharedPreferences("pe.hf.black20", 0);
        this.f28731f1 = new d(multiScreenActivityEXO);
        this.f28739j1 = A0.O.x("ORT_PROFILE", "Default (XC)", new a(this, 0));
        final int i9 = 1;
        this.f28733g1 = new b(multiScreenActivityEXO, 1);
        this.f28735h1 = new b(multiScreenActivityEXO, 0);
        c cVar = new c(multiScreenActivityEXO, 0);
        this.f28737i1 = cVar;
        try {
            cursorQuery = cVar.getReadableDatabase().query("multiscreen", null, "profile=?", new String[]{this.f28739j1.f25479b}, null, null, null, null);
            try {
                if (cursorQuery.getCount() > 0) {
                    cursorQuery.moveToFirst();
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    String string3 = cursorQuery.getString(2);
                    String string4 = cursorQuery.getString(3);
                    String string5 = cursorQuery.getString(4);
                    String string6 = cursorQuery.getString(5);
                    String string7 = cursorQuery.getString(6);
                    String string8 = cursorQuery.getString(7);
                    String string9 = cursorQuery.getString(8);
                    i8 = 9;
                    try {
                        String string10 = cursorQuery.getString(9);
                        zVar2 = new z();
                        zVar2.f24852a = string;
                        zVar2.f24853b = string2;
                        zVar2.f24854c = string3;
                        zVar2.f24855d = string4;
                        zVar2.f24856e = string5;
                        zVar2.f24857f = string6;
                        zVar2.f24858g = string7;
                        zVar2.f24859h = string8;
                        zVar2.f24860i = string9;
                        zVar2.f24861j = string10;
                    } catch (Throwable unused) {
                        if (cursorQuery != null && !cursorQuery.isClosed()) {
                            cursorQuery.close();
                        }
                        zVar = null;
                    }
                } else {
                    i8 = 9;
                    zVar2 = null;
                }
                if (!cursorQuery.isClosed()) {
                    cursorQuery.close();
                }
                zVar = zVar2;
            } catch (Throwable unused2) {
                i8 = 9;
            }
        } catch (Throwable unused3) {
            i8 = 9;
            cursorQuery = null;
        }
        this.f28741k1 = zVar;
        if (this.f28661C1 && U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            str = null;
            this.f28659B1 = Integer.parseInt(this.f28671H.getString("max_connections", null));
        } else {
            str = null;
        }
        if (this.f28671H.contains("agent")) {
            this.f28667F1 = this.f28671H.getString("agent", str);
        }
        f28655S1 = e7.a.f(multiScreenActivityEXO, f28655S1, this.f28667F1);
        new j0().b();
        if (this.f28671H.contains("whichplayer_ms")) {
            if (this.f28671H.getString("whichplayer_ms", str).equals("EXO")) {
                this.f28665E1 = true;
            } else {
                this.f28665E1 = false;
            }
        }
        this.f28670G1 = (PlayerView) findViewById(R.id.player_v1);
        this.f28673H1 = (PlayerView) findViewById(R.id.player_v2);
        this.f28676I1 = (PlayerView) findViewById(R.id.player_v3);
        this.f28679J1 = (PlayerView) findViewById(R.id.player_v4);
        this.f28670G1.setUseController(false);
        this.f28673H1.setUseController(false);
        this.f28676I1.setUseController(false);
        this.f28679J1.setUseController(false);
        this.f28686M = (SurfaceView) findViewById(R.id.player_vlc_1);
        this.f28689N = (SurfaceView) findViewById(R.id.player_vlc_2);
        this.f28692O = (SurfaceView) findViewById(R.id.player_vlc_3);
        this.f28695P = (SurfaceView) findViewById(R.id.player_vlc_4);
        if (this.f28665E1) {
            this.f28670G1.setVisibility(0);
            this.f28673H1.setVisibility(0);
            this.f28676I1.setVisibility(0);
            this.f28679J1.setVisibility(0);
        } else {
            this.f28686M.setVisibility(0);
            this.f28689N.setVisibility(0);
            this.f28692O.setVisibility(0);
            this.f28695P.setVisibility(0);
            if (this.f28671H.contains("plyer_vlc_buffer") && this.f28671H.getString("plyer_vlc_buffer", str) != null) {
                this.f28698Q = U2.h(this.f28671H, "plyer_vlc_buffer", str, new StringBuilder("--live-caching="));
                this.f28701R = U2.h(this.f28671H, "plyer_vlc_buffer", str, new StringBuilder("--file-caching="));
                this.f28704S = U2.h(this.f28671H, "plyer_vlc_buffer", str, new StringBuilder(":network-caching="));
            }
        }
        this.f28759t1 = (TextView) findViewById(R.id.txt_ch_name_p1);
        this.f28761u1 = (TextView) findViewById(R.id.txt_ch_name_p2);
        this.f28763v1 = (TextView) findViewById(R.id.txt_ch_name_p3);
        this.f28765w1 = (TextView) findViewById(R.id.txt_ch_name_p4);
        this.f28714X = (FrameLayout) findViewById(R.id.layout_p1);
        this.f28716Y = (FrameLayout) findViewById(R.id.layout_p2);
        this.f28718Z = (FrameLayout) findViewById(R.id.layout_p3);
        this.f28720a0 = (FrameLayout) findViewById(R.id.layout_p4);
        this.f28722b0 = (FrameLayout) findViewById(R.id.layout_btn_p1);
        this.f28724c0 = (FrameLayout) findViewById(R.id.layout_btn_p2);
        this.f28726d0 = (FrameLayout) findViewById(R.id.layout_btn_p3);
        this.f28728e0 = (FrameLayout) findViewById(R.id.layout_btn_p4);
        this.f28730f0 = (FrameLayout) findViewById(R.id.layout_selector);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.layout_channel_selector);
        this.f28732g0 = frameLayout;
        frameLayout.setVisibility(8);
        this.f28734h0 = (ImageButton) findViewById(R.id.btn_add_p1);
        this.f28736i0 = (ImageButton) findViewById(R.id.btn_add_p2);
        this.f28738j0 = (ImageButton) findViewById(R.id.btn_add_p3);
        this.f28740k0 = (ImageButton) findViewById(R.id.btn_add_p4);
        this.f28758t0 = (ImageButton) findViewById(R.id.btn_zoom_p1);
        this.f28760u0 = (ImageButton) findViewById(R.id.btn_zoom_p2);
        this.f28762v0 = (ImageButton) findViewById(R.id.btn_zoom_p3);
        this.f28764w0 = (ImageButton) findViewById(R.id.btn_zoom_p4);
        this.f28742l0 = (ImageButton) findViewById(R.id.btn_play_pause_p1);
        this.f28744m0 = (ImageButton) findViewById(R.id.btn_play_pause_p2);
        this.f28746n0 = (ImageButton) findViewById(R.id.btn_play_pause_p3);
        this.f28748o0 = (ImageButton) findViewById(R.id.btn_play_pause_p4);
        this.f28750p0 = (ImageButton) findViewById(R.id.btn_sound_p1);
        this.f28752q0 = (ImageButton) findViewById(R.id.btn_sound_p2);
        this.f28754r0 = (ImageButton) findViewById(R.id.btn_sound_p3);
        this.f28756s0 = (ImageButton) findViewById(R.id.btn_sound_p4);
        this.f28666F0 = (Button) findViewById(R.id.btn_action_p1);
        this.f28669G0 = (Button) findViewById(R.id.btn_action_p2);
        this.f28672H0 = (Button) findViewById(R.id.btn_action_p3);
        this.f28675I0 = (Button) findViewById(R.id.btn_action_p4);
        this.f28664E0 = (ImageButton) findViewById(R.id.btn_close_selector);
        this.f28656A0 = (ImageButton) findViewById(R.id.btn_close_p1);
        this.f28658B0 = (ImageButton) findViewById(R.id.btn_close_p2);
        this.f28660C0 = (ImageButton) findViewById(R.id.btn_close_p3);
        this.f28662D0 = (ImageButton) findViewById(R.id.btn_close_p4);
        this.f28727d1 = (ListView) findViewById(R.id.listViewCat);
        this.f28729e1 = (ListView) findViewById(R.id.listViewChVod);
        this.f28725c1 = (ProgressBar) findViewById(R.id.progress_bar);
        this.f28730f0.setVisibility(8);
        this.f28722b0.setVisibility(8);
        this.f28724c0.setVisibility(8);
        this.f28726d0.setVisibility(8);
        this.f28728e0.setVisibility(8);
        this.f28766x0 = (ImageButton) findViewById(R.id.btn_layout_type1);
        this.f28768y0 = (ImageButton) findViewById(R.id.btn_layout_type2);
        this.f28770z0 = (ImageButton) findViewById(R.id.btn_layout_type3);
        if (this.f28737i1.O(this.f28739j1.f25479b).equals("yes")) {
            z zVar3 = this.f28741k1;
            this.f28674I = (String) zVar3.f24854c;
            this.f28677J = (String) zVar3.f24855d;
            this.f28680K = (String) zVar3.f24856e;
            this.f28683L = (String) zVar3.f24857f;
            String str2 = (String) zVar3.f24858g;
            String str3 = (String) zVar3.f24859h;
            String str4 = (String) zVar3.f24860i;
            String str5 = (String) zVar3.f24861j;
            if (str2 == null || str2.isEmpty() || str2.equals("null")) {
                this.f28759t1.setText("Select Stream");
            } else {
                this.f28759t1.setText(str2);
            }
            if (str3 == null || str3.isEmpty() || str3.equals("null")) {
                this.f28761u1.setText("Select Stream");
            } else {
                this.f28761u1.setText(str3);
            }
            if (str4 == null || str4.isEmpty() || str4.equals("null")) {
                this.f28763v1.setText("Select Stream");
            } else {
                this.f28763v1.setText(str4);
            }
            if (str5 == null || str5.isEmpty() || str5.equals("null")) {
                this.f28765w1.setText("Select Stream");
            } else {
                this.f28765w1.setText(str5);
            }
        } else {
            this.f28674I = HttpUrl.FRAGMENT_ENCODE_SET;
            this.f28677J = HttpUrl.FRAGMENT_ENCODE_SET;
            this.f28680K = HttpUrl.FRAGMENT_ENCODE_SET;
            this.f28683L = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 30) {
            getDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        int i10 = displayMetrics.heightPixels;
        this.f28678J0 = i10;
        int i11 = displayMetrics.widthPixels;
        this.f28681K0 = i11;
        this.f28684L0 = displayMetrics.densityDpi / 160;
        this.f28767x1 = i10;
        this.f28769y1 = i11;
        this.f28771z1 = i11 / 12;
        this.f28657A1 = i11 / 14;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f28734h0.getLayoutParams();
        int i12 = this.f28657A1;
        layoutParams.height = i12;
        layoutParams.width = i12;
        this.f28734h0.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f28736i0.getLayoutParams();
        int i13 = this.f28657A1;
        layoutParams2.height = i13;
        layoutParams2.width = i13;
        this.f28736i0.setLayoutParams(layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f28738j0.getLayoutParams();
        int i14 = this.f28657A1;
        layoutParams3.height = i14;
        layoutParams3.width = i14;
        this.f28738j0.setLayoutParams(layoutParams3);
        LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) this.f28740k0.getLayoutParams();
        int i15 = this.f28657A1;
        layoutParams4.height = i15;
        layoutParams4.width = i15;
        this.f28740k0.setLayoutParams(layoutParams4);
        LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.f28758t0.getLayoutParams();
        int i16 = this.f28657A1;
        layoutParams5.height = i16;
        layoutParams5.width = i16;
        this.f28758t0.setLayoutParams(layoutParams5);
        LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) this.f28760u0.getLayoutParams();
        int i17 = this.f28657A1;
        layoutParams6.height = i17;
        layoutParams6.width = i17;
        this.f28762v0.setLayoutParams(layoutParams6);
        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) this.f28762v0.getLayoutParams();
        int i18 = this.f28657A1;
        layoutParams7.height = i18;
        layoutParams7.width = i18;
        this.f28762v0.setLayoutParams(layoutParams7);
        LinearLayout.LayoutParams layoutParams8 = (LinearLayout.LayoutParams) this.f28764w0.getLayoutParams();
        int i19 = this.f28657A1;
        layoutParams8.height = i19;
        layoutParams8.width = i19;
        this.f28764w0.setLayoutParams(layoutParams8);
        LinearLayout.LayoutParams layoutParams9 = (LinearLayout.LayoutParams) this.f28742l0.getLayoutParams();
        int i20 = this.f28657A1;
        layoutParams9.height = i20;
        layoutParams9.width = i20;
        this.f28742l0.setLayoutParams(layoutParams9);
        LinearLayout.LayoutParams layoutParams10 = (LinearLayout.LayoutParams) this.f28744m0.getLayoutParams();
        int i21 = this.f28657A1;
        layoutParams10.height = i21;
        layoutParams10.width = i21;
        this.f28744m0.setLayoutParams(layoutParams10);
        LinearLayout.LayoutParams layoutParams11 = (LinearLayout.LayoutParams) this.f28746n0.getLayoutParams();
        int i22 = this.f28657A1;
        layoutParams11.height = i22;
        layoutParams11.width = i22;
        this.f28746n0.setLayoutParams(layoutParams11);
        LinearLayout.LayoutParams layoutParams12 = (LinearLayout.LayoutParams) this.f28748o0.getLayoutParams();
        int i23 = this.f28657A1;
        layoutParams12.height = i23;
        layoutParams12.width = i23;
        this.f28748o0.setLayoutParams(layoutParams12);
        LinearLayout.LayoutParams layoutParams13 = (LinearLayout.LayoutParams) this.f28750p0.getLayoutParams();
        int i24 = this.f28657A1;
        layoutParams13.height = i24;
        layoutParams13.width = i24;
        this.f28750p0.setLayoutParams(layoutParams13);
        LinearLayout.LayoutParams layoutParams14 = (LinearLayout.LayoutParams) this.f28752q0.getLayoutParams();
        int i25 = this.f28657A1;
        layoutParams14.height = i25;
        layoutParams14.width = i25;
        this.f28752q0.setLayoutParams(layoutParams14);
        LinearLayout.LayoutParams layoutParams15 = (LinearLayout.LayoutParams) this.f28754r0.getLayoutParams();
        int i26 = this.f28657A1;
        layoutParams15.height = i26;
        layoutParams15.width = i26;
        this.f28754r0.setLayoutParams(layoutParams15);
        LinearLayout.LayoutParams layoutParams16 = (LinearLayout.LayoutParams) this.f28756s0.getLayoutParams();
        int i27 = this.f28657A1;
        layoutParams16.height = i27;
        layoutParams16.width = i27;
        this.f28756s0.setLayoutParams(layoutParams16);
        LinearLayout.LayoutParams layoutParams17 = (LinearLayout.LayoutParams) this.f28766x0.getLayoutParams();
        int i28 = this.f28767x1 / 3;
        layoutParams17.height = i28;
        layoutParams17.width = i28;
        this.f28766x0.setLayoutParams(layoutParams17);
        LinearLayout.LayoutParams layoutParams18 = (LinearLayout.LayoutParams) this.f28768y0.getLayoutParams();
        int i29 = this.f28767x1 / 3;
        layoutParams18.height = i29;
        layoutParams18.width = i29;
        this.f28768y0.setLayoutParams(layoutParams18);
        LinearLayout.LayoutParams layoutParams19 = (LinearLayout.LayoutParams) this.f28770z0.getLayoutParams();
        int i30 = this.f28767x1 / 3;
        layoutParams19.height = i30;
        layoutParams19.width = i30;
        this.f28770z0.setLayoutParams(layoutParams19);
        this.f28734h0.setOnFocusChangeListener(new P(this, 2));
        r.v(this, 6, this.f28736i0);
        r.v(this, 13, this.f28738j0);
        r.v(this, 19, this.f28740k0);
        this.f28734h0.setOnClickListener(new V(this, 18));
        this.f28736i0.setOnClickListener(new V(this, 21));
        this.f28738j0.setOnClickListener(new V(this, 22));
        this.f28740k0.setOnClickListener(new V(this, 23));
        r.v(this, 25, this.f28758t0);
        r.v(this, 26, this.f28760u0);
        r.v(this, 0, this.f28762v0);
        r.v(this, 1, this.f28764w0);
        this.f28758t0.setOnClickListener(new V(this, 0));
        this.f28760u0.setOnClickListener(new V(this, i9));
        this.f28762v0.setOnClickListener(new V(this, 2));
        this.f28764w0.setOnClickListener(new V(this, 3));
        r.v(this, 2, this.f28742l0);
        r.v(this, 3, this.f28744m0);
        r.v(this, 4, this.f28746n0);
        r.v(this, 5, this.f28748o0);
        final int i31 = 0;
        this.f28742l0.setOnClickListener(new View.OnClickListener(this) { // from class: b7.T

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ MultiScreenActivityEXO f10231H;

            {
                this.f10231H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i31;
                MultiScreenActivityEXO multiScreenActivityEXO2 = this.f10231H;
                switch (i32) {
                    case 0:
                        InterfaceC3183h interfaceC3183h = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i33 = multiScreenActivityEXO2.f28659B1;
                        if (i33 != 0 && multiScreenActivityEXO2.f28713W0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i33) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str6 = multiScreenActivityEXO2.f28674I;
                            if (str6 != null && !str6.isEmpty() && !multiScreenActivityEXO2.f28674I.equals("null")) {
                                if (multiScreenActivityEXO2.f28713W0 != 0) {
                                    multiScreenActivityEXO2.f28713W0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28742l0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.q();
                                    } else if (multiScreenActivityEXO2.f28706T.isPlaying()) {
                                        multiScreenActivityEXO2.f28706T.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28713W0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.d(multiScreenActivityEXO2.f28674I);
                                    } else {
                                        multiScreenActivityEXO2.h(multiScreenActivityEXO2.f28674I);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28742l0);
                                }
                                break;
                            }
                        }
                        break;
                    case 1:
                        InterfaceC3183h interfaceC3183h2 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i34 = multiScreenActivityEXO2.f28659B1;
                        if (i34 != 0 && multiScreenActivityEXO2.f28715X0 == 0 && multiScreenActivityEXO2.f28713W0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i34) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str7 = multiScreenActivityEXO2.f28677J;
                            if (str7 != null && !str7.isEmpty() && !multiScreenActivityEXO2.f28677J.equals("null")) {
                                if (multiScreenActivityEXO2.f28715X0 != 0) {
                                    multiScreenActivityEXO2.f28715X0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28744m0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.r();
                                    } else if (multiScreenActivityEXO2.f28708U.isPlaying()) {
                                        multiScreenActivityEXO2.f28708U.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28715X0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.e(multiScreenActivityEXO2.f28677J);
                                    } else {
                                        multiScreenActivityEXO2.i(multiScreenActivityEXO2.f28677J);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28744m0);
                                }
                                break;
                            }
                        }
                        break;
                    case 2:
                        InterfaceC3183h interfaceC3183h3 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i35 = multiScreenActivityEXO2.f28659B1;
                        if (i35 != 0 && multiScreenActivityEXO2.f28717Y0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28713W0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i35) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str8 = multiScreenActivityEXO2.f28680K;
                            if (str8 != null && !str8.isEmpty() && !multiScreenActivityEXO2.f28680K.equals("null")) {
                                if (multiScreenActivityEXO2.f28717Y0 != 0) {
                                    multiScreenActivityEXO2.f28717Y0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28746n0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.s();
                                    } else if (multiScreenActivityEXO2.f28710V.isPlaying()) {
                                        multiScreenActivityEXO2.f28710V.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28717Y0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.f(multiScreenActivityEXO2.f28680K);
                                    } else {
                                        multiScreenActivityEXO2.j(multiScreenActivityEXO2.f28680K);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28746n0);
                                }
                                break;
                            }
                        }
                        break;
                    default:
                        InterfaceC3183h interfaceC3183h4 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i36 = multiScreenActivityEXO2.f28659B1;
                        if (i36 != 0 && multiScreenActivityEXO2.f28719Z0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28713W0 != 0 && multiScreenActivityEXO2.f28721a1 >= i36) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str9 = multiScreenActivityEXO2.f28683L;
                            if (str9 != null && !str9.isEmpty() && !multiScreenActivityEXO2.f28683L.equals("null")) {
                                if (multiScreenActivityEXO2.f28719Z0 != 0) {
                                    multiScreenActivityEXO2.f28719Z0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28748o0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.t();
                                    } else if (multiScreenActivityEXO2.f28712W.isPlaying()) {
                                        multiScreenActivityEXO2.f28712W.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28719Z0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.g(multiScreenActivityEXO2.f28683L);
                                    } else {
                                        multiScreenActivityEXO2.k(multiScreenActivityEXO2.f28683L);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28748o0);
                                }
                                break;
                            }
                        }
                        break;
                }
            }
        });
        this.f28744m0.setOnClickListener(new View.OnClickListener(this) { // from class: b7.T

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ MultiScreenActivityEXO f10231H;

            {
                this.f10231H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i9;
                MultiScreenActivityEXO multiScreenActivityEXO2 = this.f10231H;
                switch (i32) {
                    case 0:
                        InterfaceC3183h interfaceC3183h = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i33 = multiScreenActivityEXO2.f28659B1;
                        if (i33 != 0 && multiScreenActivityEXO2.f28713W0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i33) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str6 = multiScreenActivityEXO2.f28674I;
                            if (str6 != null && !str6.isEmpty() && !multiScreenActivityEXO2.f28674I.equals("null")) {
                                if (multiScreenActivityEXO2.f28713W0 != 0) {
                                    multiScreenActivityEXO2.f28713W0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28742l0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.q();
                                    } else if (multiScreenActivityEXO2.f28706T.isPlaying()) {
                                        multiScreenActivityEXO2.f28706T.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28713W0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.d(multiScreenActivityEXO2.f28674I);
                                    } else {
                                        multiScreenActivityEXO2.h(multiScreenActivityEXO2.f28674I);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28742l0);
                                }
                                break;
                            }
                        }
                        break;
                    case 1:
                        InterfaceC3183h interfaceC3183h2 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i34 = multiScreenActivityEXO2.f28659B1;
                        if (i34 != 0 && multiScreenActivityEXO2.f28715X0 == 0 && multiScreenActivityEXO2.f28713W0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i34) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str7 = multiScreenActivityEXO2.f28677J;
                            if (str7 != null && !str7.isEmpty() && !multiScreenActivityEXO2.f28677J.equals("null")) {
                                if (multiScreenActivityEXO2.f28715X0 != 0) {
                                    multiScreenActivityEXO2.f28715X0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28744m0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.r();
                                    } else if (multiScreenActivityEXO2.f28708U.isPlaying()) {
                                        multiScreenActivityEXO2.f28708U.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28715X0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.e(multiScreenActivityEXO2.f28677J);
                                    } else {
                                        multiScreenActivityEXO2.i(multiScreenActivityEXO2.f28677J);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28744m0);
                                }
                                break;
                            }
                        }
                        break;
                    case 2:
                        InterfaceC3183h interfaceC3183h3 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i35 = multiScreenActivityEXO2.f28659B1;
                        if (i35 != 0 && multiScreenActivityEXO2.f28717Y0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28713W0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i35) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str8 = multiScreenActivityEXO2.f28680K;
                            if (str8 != null && !str8.isEmpty() && !multiScreenActivityEXO2.f28680K.equals("null")) {
                                if (multiScreenActivityEXO2.f28717Y0 != 0) {
                                    multiScreenActivityEXO2.f28717Y0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28746n0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.s();
                                    } else if (multiScreenActivityEXO2.f28710V.isPlaying()) {
                                        multiScreenActivityEXO2.f28710V.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28717Y0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.f(multiScreenActivityEXO2.f28680K);
                                    } else {
                                        multiScreenActivityEXO2.j(multiScreenActivityEXO2.f28680K);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28746n0);
                                }
                                break;
                            }
                        }
                        break;
                    default:
                        InterfaceC3183h interfaceC3183h4 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i36 = multiScreenActivityEXO2.f28659B1;
                        if (i36 != 0 && multiScreenActivityEXO2.f28719Z0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28713W0 != 0 && multiScreenActivityEXO2.f28721a1 >= i36) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str9 = multiScreenActivityEXO2.f28683L;
                            if (str9 != null && !str9.isEmpty() && !multiScreenActivityEXO2.f28683L.equals("null")) {
                                if (multiScreenActivityEXO2.f28719Z0 != 0) {
                                    multiScreenActivityEXO2.f28719Z0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28748o0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.t();
                                    } else if (multiScreenActivityEXO2.f28712W.isPlaying()) {
                                        multiScreenActivityEXO2.f28712W.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28719Z0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.g(multiScreenActivityEXO2.f28683L);
                                    } else {
                                        multiScreenActivityEXO2.k(multiScreenActivityEXO2.f28683L);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28748o0);
                                }
                                break;
                            }
                        }
                        break;
                }
            }
        });
        final int i32 = 2;
        this.f28746n0.setOnClickListener(new View.OnClickListener(this) { // from class: b7.T

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ MultiScreenActivityEXO f10231H;

            {
                this.f10231H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i33 = i32;
                MultiScreenActivityEXO multiScreenActivityEXO2 = this.f10231H;
                switch (i33) {
                    case 0:
                        InterfaceC3183h interfaceC3183h = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i34 = multiScreenActivityEXO2.f28659B1;
                        if (i34 != 0 && multiScreenActivityEXO2.f28713W0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i34) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str6 = multiScreenActivityEXO2.f28674I;
                            if (str6 != null && !str6.isEmpty() && !multiScreenActivityEXO2.f28674I.equals("null")) {
                                if (multiScreenActivityEXO2.f28713W0 != 0) {
                                    multiScreenActivityEXO2.f28713W0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28742l0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.q();
                                    } else if (multiScreenActivityEXO2.f28706T.isPlaying()) {
                                        multiScreenActivityEXO2.f28706T.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28713W0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.d(multiScreenActivityEXO2.f28674I);
                                    } else {
                                        multiScreenActivityEXO2.h(multiScreenActivityEXO2.f28674I);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28742l0);
                                }
                                break;
                            }
                        }
                        break;
                    case 1:
                        InterfaceC3183h interfaceC3183h2 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i35 = multiScreenActivityEXO2.f28659B1;
                        if (i35 != 0 && multiScreenActivityEXO2.f28715X0 == 0 && multiScreenActivityEXO2.f28713W0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i35) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str7 = multiScreenActivityEXO2.f28677J;
                            if (str7 != null && !str7.isEmpty() && !multiScreenActivityEXO2.f28677J.equals("null")) {
                                if (multiScreenActivityEXO2.f28715X0 != 0) {
                                    multiScreenActivityEXO2.f28715X0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28744m0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.r();
                                    } else if (multiScreenActivityEXO2.f28708U.isPlaying()) {
                                        multiScreenActivityEXO2.f28708U.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28715X0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.e(multiScreenActivityEXO2.f28677J);
                                    } else {
                                        multiScreenActivityEXO2.i(multiScreenActivityEXO2.f28677J);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28744m0);
                                }
                                break;
                            }
                        }
                        break;
                    case 2:
                        InterfaceC3183h interfaceC3183h3 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i36 = multiScreenActivityEXO2.f28659B1;
                        if (i36 != 0 && multiScreenActivityEXO2.f28717Y0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28713W0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i36) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str8 = multiScreenActivityEXO2.f28680K;
                            if (str8 != null && !str8.isEmpty() && !multiScreenActivityEXO2.f28680K.equals("null")) {
                                if (multiScreenActivityEXO2.f28717Y0 != 0) {
                                    multiScreenActivityEXO2.f28717Y0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28746n0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.s();
                                    } else if (multiScreenActivityEXO2.f28710V.isPlaying()) {
                                        multiScreenActivityEXO2.f28710V.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28717Y0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.f(multiScreenActivityEXO2.f28680K);
                                    } else {
                                        multiScreenActivityEXO2.j(multiScreenActivityEXO2.f28680K);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28746n0);
                                }
                                break;
                            }
                        }
                        break;
                    default:
                        InterfaceC3183h interfaceC3183h4 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i37 = multiScreenActivityEXO2.f28659B1;
                        if (i37 != 0 && multiScreenActivityEXO2.f28719Z0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28713W0 != 0 && multiScreenActivityEXO2.f28721a1 >= i37) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str9 = multiScreenActivityEXO2.f28683L;
                            if (str9 != null && !str9.isEmpty() && !multiScreenActivityEXO2.f28683L.equals("null")) {
                                if (multiScreenActivityEXO2.f28719Z0 != 0) {
                                    multiScreenActivityEXO2.f28719Z0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28748o0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.t();
                                    } else if (multiScreenActivityEXO2.f28712W.isPlaying()) {
                                        multiScreenActivityEXO2.f28712W.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28719Z0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.g(multiScreenActivityEXO2.f28683L);
                                    } else {
                                        multiScreenActivityEXO2.k(multiScreenActivityEXO2.f28683L);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28748o0);
                                }
                                break;
                            }
                        }
                        break;
                }
            }
        });
        final int i33 = 3;
        this.f28748o0.setOnClickListener(new View.OnClickListener(this) { // from class: b7.T

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ MultiScreenActivityEXO f10231H;

            {
                this.f10231H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i34 = i33;
                MultiScreenActivityEXO multiScreenActivityEXO2 = this.f10231H;
                switch (i34) {
                    case 0:
                        InterfaceC3183h interfaceC3183h = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i35 = multiScreenActivityEXO2.f28659B1;
                        if (i35 != 0 && multiScreenActivityEXO2.f28713W0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i35) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str6 = multiScreenActivityEXO2.f28674I;
                            if (str6 != null && !str6.isEmpty() && !multiScreenActivityEXO2.f28674I.equals("null")) {
                                if (multiScreenActivityEXO2.f28713W0 != 0) {
                                    multiScreenActivityEXO2.f28713W0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28742l0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.q();
                                    } else if (multiScreenActivityEXO2.f28706T.isPlaying()) {
                                        multiScreenActivityEXO2.f28706T.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28713W0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.d(multiScreenActivityEXO2.f28674I);
                                    } else {
                                        multiScreenActivityEXO2.h(multiScreenActivityEXO2.f28674I);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28742l0);
                                }
                                break;
                            }
                        }
                        break;
                    case 1:
                        InterfaceC3183h interfaceC3183h2 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i36 = multiScreenActivityEXO2.f28659B1;
                        if (i36 != 0 && multiScreenActivityEXO2.f28715X0 == 0 && multiScreenActivityEXO2.f28713W0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i36) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str7 = multiScreenActivityEXO2.f28677J;
                            if (str7 != null && !str7.isEmpty() && !multiScreenActivityEXO2.f28677J.equals("null")) {
                                if (multiScreenActivityEXO2.f28715X0 != 0) {
                                    multiScreenActivityEXO2.f28715X0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28744m0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.r();
                                    } else if (multiScreenActivityEXO2.f28708U.isPlaying()) {
                                        multiScreenActivityEXO2.f28708U.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28715X0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.e(multiScreenActivityEXO2.f28677J);
                                    } else {
                                        multiScreenActivityEXO2.i(multiScreenActivityEXO2.f28677J);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28744m0);
                                }
                                break;
                            }
                        }
                        break;
                    case 2:
                        InterfaceC3183h interfaceC3183h3 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i37 = multiScreenActivityEXO2.f28659B1;
                        if (i37 != 0 && multiScreenActivityEXO2.f28717Y0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28713W0 + multiScreenActivityEXO2.f28719Z0 != 0 && multiScreenActivityEXO2.f28721a1 >= i37) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str8 = multiScreenActivityEXO2.f28680K;
                            if (str8 != null && !str8.isEmpty() && !multiScreenActivityEXO2.f28680K.equals("null")) {
                                if (multiScreenActivityEXO2.f28717Y0 != 0) {
                                    multiScreenActivityEXO2.f28717Y0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28746n0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.s();
                                    } else if (multiScreenActivityEXO2.f28710V.isPlaying()) {
                                        multiScreenActivityEXO2.f28710V.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28717Y0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.f(multiScreenActivityEXO2.f28680K);
                                    } else {
                                        multiScreenActivityEXO2.j(multiScreenActivityEXO2.f28680K);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28746n0);
                                }
                                break;
                            }
                        }
                        break;
                    default:
                        InterfaceC3183h interfaceC3183h4 = MultiScreenActivityEXO.f28655S1;
                        Log.d("XCIPTV_TAG", "-----------------numbeeOfOpenConnection-------" + multiScreenActivityEXO2.f28721a1);
                        int i38 = multiScreenActivityEXO2.f28659B1;
                        if (i38 != 0 && multiScreenActivityEXO2.f28719Z0 == 0 && multiScreenActivityEXO2.f28715X0 + multiScreenActivityEXO2.f28717Y0 + multiScreenActivityEXO2.f28713W0 != 0 && multiScreenActivityEXO2.f28721a1 >= i38) {
                            multiScreenActivityEXO2.m();
                            break;
                        } else {
                            String str9 = multiScreenActivityEXO2.f28683L;
                            if (str9 != null && !str9.isEmpty() && !multiScreenActivityEXO2.f28683L.equals("null")) {
                                if (multiScreenActivityEXO2.f28719Z0 != 0) {
                                    multiScreenActivityEXO2.f28719Z0 = 0;
                                    multiScreenActivityEXO2.f28721a1--;
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_play, multiScreenActivityEXO2.f28748o0);
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.t();
                                    } else if (multiScreenActivityEXO2.f28712W.isPlaying()) {
                                        multiScreenActivityEXO2.f28712W.stop();
                                    }
                                } else {
                                    multiScreenActivityEXO2.f28719Z0 = 1;
                                    multiScreenActivityEXO2.f28721a1++;
                                    if (multiScreenActivityEXO2.f28665E1) {
                                        multiScreenActivityEXO2.g(multiScreenActivityEXO2.f28683L);
                                    } else {
                                        multiScreenActivityEXO2.k(multiScreenActivityEXO2.f28683L);
                                    }
                                    p000a.r.r(multiScreenActivityEXO2, R.drawable.multi_pause, multiScreenActivityEXO2.f28748o0);
                                }
                                break;
                            }
                        }
                        break;
                }
            }
        });
        r.v(this, 7, this.f28750p0);
        r.v(this, 8, this.f28752q0);
        r.v(this, i8, this.f28754r0);
        r.v(this, 10, this.f28756s0);
        this.f28750p0.setOnClickListener(new V(this, 4));
        this.f28752q0.setOnClickListener(new V(this, 5));
        this.f28754r0.setOnClickListener(new V(this, 6));
        this.f28756s0.setOnClickListener(new V(this, 7));
        r.v(this, 11, this.f28766x0);
        r.v(this, 12, this.f28768y0);
        r.v(this, 14, this.f28770z0);
        this.f28766x0.setOnClickListener(new V(this, 8));
        this.f28768y0.setOnClickListener(new V(this, i8));
        this.f28770z0.setOnClickListener(new V(this, 10));
        this.f28666F0.setOnFocusChangeListener(new U(this, 15));
        this.f28669G0.setOnFocusChangeListener(new U(this, 16));
        this.f28672H0.setOnFocusChangeListener(new U(this, 17));
        this.f28675I0.setOnFocusChangeListener(new U(this, 18));
        this.f28666F0.setOnClickListener(new V(this, 11));
        this.f28669G0.setOnClickListener(new V(this, 12));
        this.f28672H0.setOnClickListener(new V(this, 13));
        this.f28675I0.setOnClickListener(new V(this, 14));
        r.v(this, 20, this.f28664E0);
        this.f28664E0.setOnClickListener(new V(this, 15));
        r.v(this, 21, this.f28656A0);
        r.v(this, 22, this.f28658B0);
        r.v(this, 23, this.f28660C0);
        r.v(this, 24, this.f28662D0);
        this.f28656A0.setOnClickListener(new V(this, 16));
        this.f28658B0.setOnClickListener(new V(this, 17));
        this.f28660C0.setOnClickListener(new V(this, 19));
        this.f28662D0.setOnClickListener(new V(this, 20));
        this.f28723b1 = new GestureDetector(this, new C0532l(this, i9));
        this.f28714X.setOnTouchListener(this.f28694O1);
        this.f28716Y.setOnTouchListener(this.f28697P1);
        this.f28718Z.setOnTouchListener(this.f28700Q1);
        this.f28720a0.setOnTouchListener(this.f28703R1);
        LinearLayout.LayoutParams layoutParams20 = (LinearLayout.LayoutParams) this.f28766x0.getLayoutParams();
        int i34 = this.f28681K0 / 6;
        layoutParams20.height = i34;
        layoutParams20.width = i34;
        this.f28766x0.setLayoutParams(layoutParams20);
        LinearLayout.LayoutParams layoutParams21 = (LinearLayout.LayoutParams) this.f28768y0.getLayoutParams();
        int i35 = this.f28681K0 / 6;
        layoutParams21.height = i35;
        layoutParams21.width = i35;
        this.f28768y0.setLayoutParams(layoutParams21);
        LinearLayout.LayoutParams layoutParams22 = (LinearLayout.LayoutParams) this.f28770z0.getLayoutParams();
        int i36 = this.f28681K0 / 6;
        layoutParams22.height = i36;
        layoutParams22.width = i36;
        this.f28770z0.setLayoutParams(layoutParams22);
        p();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        Log.v("XCIPTV_TAG", "onDestroy()...");
        q();
        r();
        s();
        t();
        setRequestedOrientation(4);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i8, KeyEvent keyEvent) {
        Log.i("XCIPTV_TAG", "Keycode: " + i8);
        if (i8 == 4) {
            Log.d("XCIPTV_TAG", "BACK button pressed");
            if (this.f28732g0.getVisibility() == 0) {
                this.f28732g0.setVisibility(8);
                o();
                new Y(this).execute(new Void[0]);
                o();
            } else if (this.f28730f0.getVisibility() != 8 || this.f28722b0.getVisibility() == 0 || this.f28724c0.getVisibility() == 0 || this.f28726d0.getVisibility() == 0 || this.f28728e0.getVisibility() == 0) {
                o();
            } else {
                o();
                MultiScreenActivityEXO multiScreenActivityEXO = this.f28668G;
                View viewInflate = LayoutInflater.from(multiScreenActivityEXO).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
                AlertDialog alertDialogCreate = new AlertDialog.Builder(multiScreenActivityEXO).create();
                ((TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText("Are you sure you want to exit?");
                Button button = (Button) viewInflate.findViewById(R.id.button_yes);
                button.setText("YES");
                button.setOnClickListener(new X(this, alertDialogCreate, 1));
                Button button2 = (Button) viewInflate.findViewById(R.id.button_no);
                button2.setText("NO");
                button2.setOnClickListener(new X(this, alertDialogCreate, 2));
                alertDialogCreate.show();
            }
            return true;
        }
        switch (i8) {
            case 19:
                Log.d("XCIPTV_TAG", "UP button pressed");
                l();
                if (this.f28732g0.getVisibility() == 8 && this.f28730f0.getVisibility() == 8) {
                    v();
                }
                return false;
            case 20:
                Log.d("XCIPTV_TAG", "DOWN button pressed");
                l();
                if (this.f28732g0.getVisibility() == 8 && this.f28730f0.getVisibility() == 8) {
                    v();
                }
                return false;
            case 21:
                Log.d("XCIPTV_TAG", "LEFT button pressed");
                l();
                if (this.f28732g0.getVisibility() == 8 && this.f28730f0.getVisibility() == 8) {
                    v();
                }
                return false;
            case 22:
                Log.d("XCIPTV_TAG", "RIGHT button pressed");
                l();
                if (this.f28732g0.getVisibility() == 8 && this.f28730f0.getVisibility() == 8) {
                    v();
                }
                return false;
            case 23:
                Log.i("XCIPTV_TAG", "KEYCODE_DPAD_CENTER Pressed ---  ");
                v();
                return false;
            default:
                return super.onKeyUp(i8, keyEvent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28668G)) {
                return;
            }
            if (Build.VERSION.SDK_INT < 30) {
                getWindow().getDecorView().setSystemUiVisibility(4098);
                getWindow().getDecorView().setSystemUiVisibility(3846);
                return;
            }
            getWindow().setDecorFitsSystemWindows(false);
            if (getWindow().getInsetsController() != null) {
                getWindow().getInsetsController().hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
                getWindow().getInsetsController().setSystemBarsBehavior(2);
            }
        }
    }

    public final void p() {
        this.f28672H0.setFocusable(true);
        this.f28675I0.setFocusable(true);
        int i8 = this.f28769y1 / 2;
        int i9 = this.f28684L0;
        int i10 = i8 - (i9 * 2);
        int i11 = (this.f28767x1 / 2) - (i9 * 2);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28714X.getLayoutParams();
        layoutParams.height = i11;
        layoutParams.width = i10;
        int i12 = this.f28684L0;
        layoutParams.setMargins(i12 * 2, i12 * 2, i12, i12 * 2);
        layoutParams.gravity = 51;
        this.f28714X.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f28716Y.getLayoutParams();
        layoutParams2.height = i11;
        layoutParams2.width = i10;
        int i13 = this.f28684L0;
        layoutParams2.setMargins((i13 * 4) + i10, i13 * 2, i13 * 2, i13);
        layoutParams2.gravity = 53;
        this.f28716Y.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f28718Z.getLayoutParams();
        layoutParams3.height = i11;
        layoutParams3.width = i10;
        int i14 = this.f28684L0;
        layoutParams3.setMargins(i14 * 2, (i14 * 4) + i11, i14, i14 * 2);
        layoutParams3.gravity = 83;
        this.f28718Z.setLayoutParams(layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.f28720a0.getLayoutParams();
        layoutParams4.height = i11;
        layoutParams4.width = i10;
        int i15 = this.f28684L0;
        layoutParams4.setMargins((i15 * 4) + i10, (i15 * 4) + i11, i15 * 2, i15 * 2);
        layoutParams4.gravity = 85;
        this.f28720a0.setLayoutParams(layoutParams4);
        FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.f28666F0.getLayoutParams();
        layoutParams5.height = this.f28678J0 / 2;
        layoutParams5.width = this.f28681K0 / 2;
        layoutParams5.setMargins(0, 0, 0, 0);
        layoutParams5.gravity = 51;
        this.f28666F0.setLayoutParams(layoutParams5);
        FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) this.f28669G0.getLayoutParams();
        layoutParams6.height = this.f28678J0 / 2;
        int i16 = this.f28681K0;
        layoutParams6.width = i16 / 2;
        layoutParams6.setMargins(i16 / 2, 0, 0, 0);
        layoutParams6.gravity = 53;
        this.f28669G0.setLayoutParams(layoutParams6);
        FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) this.f28672H0.getLayoutParams();
        int i17 = this.f28678J0;
        layoutParams7.height = i17 / 2;
        layoutParams7.width = this.f28681K0 / 2;
        layoutParams7.setMargins(0, i17 / 2, 0, 0);
        layoutParams7.gravity = 83;
        this.f28672H0.setLayoutParams(layoutParams7);
        FrameLayout.LayoutParams layoutParams8 = (FrameLayout.LayoutParams) this.f28675I0.getLayoutParams();
        int i18 = this.f28678J0;
        layoutParams8.height = i18 / 2;
        int i19 = this.f28681K0;
        layoutParams8.width = i19 / 2;
        layoutParams8.setMargins(i19 / 2, i18 / 2, 0, 0);
        layoutParams8.gravity = 85;
        this.f28675I0.setLayoutParams(layoutParams8);
        u(i10, i11, i10, i11, i10, i11, i10, i11);
    }

    public final void q() {
        if (!this.f28665E1) {
            MediaPlayer mediaPlayer = this.f28706T;
            if (mediaPlayer != null) {
                mediaPlayer.release();
                return;
            }
            return;
        }
        if (this.f28682K1 != null) {
            Log.d("XCIPTV_TAG", "Release Player");
            this.f28682K1.S(false);
            this.f28682K1.L();
            this.f28682K1 = null;
            this.f28670G1.setPlayer(null);
        }
    }

    public final void r() {
        if (!this.f28665E1) {
            MediaPlayer mediaPlayer = this.f28708U;
            if (mediaPlayer != null) {
                mediaPlayer.release();
                return;
            }
            return;
        }
        if (this.f28685L1 != null) {
            Log.d("XCIPTV_TAG", "Release Player");
            this.f28685L1.S(false);
            this.f28685L1.L();
            this.f28685L1 = null;
            this.f28673H1.setPlayer(null);
        }
    }

    public final void s() {
        if (!this.f28665E1) {
            MediaPlayer mediaPlayer = this.f28710V;
            if (mediaPlayer != null) {
                mediaPlayer.release();
                return;
            }
            return;
        }
        if (this.f28688M1 != null) {
            Log.d("XCIPTV_TAG", "Release Player");
            this.f28688M1.S(false);
            this.f28688M1.L();
            this.f28688M1 = null;
            this.f28676I1.setPlayer(null);
        }
    }

    public final void t() {
        if (!this.f28665E1) {
            MediaPlayer mediaPlayer = this.f28712W;
            if (mediaPlayer != null) {
                mediaPlayer.release();
                return;
            }
            return;
        }
        if (this.f28691N1 != null) {
            Log.d("XCIPTV_TAG", "Release Player");
            this.f28691N1.S(false);
            this.f28691N1.L();
            this.f28691N1 = null;
            this.f28679J1.setPlayer(null);
        }
    }

    public final void u(int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        MediaPlayer mediaPlayer = this.f28706T;
        if (mediaPlayer != null) {
            mediaPlayer.getVLCVout().setWindowSize(i8, i9);
            this.f28706T.setAspectRatio("3");
            this.f28706T.setScale(0.0f);
        }
        MediaPlayer mediaPlayer2 = this.f28708U;
        if (mediaPlayer2 != null) {
            mediaPlayer2.getVLCVout().setWindowSize(i10, i11);
            this.f28708U.setAspectRatio("3");
            this.f28708U.setScale(0.0f);
        }
        MediaPlayer mediaPlayer3 = this.f28710V;
        if (mediaPlayer3 != null) {
            mediaPlayer3.getVLCVout().setWindowSize(i12, i13);
            this.f28710V.setAspectRatio("3");
            this.f28710V.setScale(0.0f);
        }
        MediaPlayer mediaPlayer4 = this.f28712W;
        if (mediaPlayer4 != null) {
            mediaPlayer4.getVLCVout().setWindowSize(i14, i15);
            this.f28712W.setAspectRatio("3");
            this.f28712W.setScale(0.0f);
        }
    }

    public final void v() {
        if (this.f28722b0.getVisibility() == 8 && this.f28724c0.getVisibility() == 8 && this.f28726d0.getVisibility() == 8 && this.f28728e0.getVisibility() == 8) {
            this.f28722b0.setVisibility(0);
            this.f28734h0.requestFocus();
        }
    }

    public final void w() {
        if (this.f28722b0.getVisibility() != 0 && this.f28724c0.getVisibility() != 0 && this.f28726d0.getVisibility() != 0 && this.f28728e0.getVisibility() != 0 && this.f28732g0.getVisibility() != 0 && this.f28730f0.getVisibility() != 0) {
            l();
            return;
        }
        this.f28666F0.setClickable(false);
        this.f28669G0.setClickable(false);
        this.f28672H0.setClickable(false);
        this.f28675I0.setClickable(false);
    }
}
