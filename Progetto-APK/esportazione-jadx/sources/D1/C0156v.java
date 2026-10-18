package D1;

import B0.v0;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.H1;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import org.videolan.libvlc.media.MediaPlayer;
import p094m0.AbstractC3123f;
import p094m0.C3119b;
import p094m0.C3136t;
import p094m0.Y;
import p094m0.d0;
import p094m0.e0;
import p094m0.f0;
import p094m0.l0;
import p094m0.m0;
import pe.hf.black20.R;

/* JADX INFO: renamed from: D1.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0156v extends FrameLayout {

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public static final float[] f2214n1;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public final Drawable f2215A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public final Drawable f2216B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public final Drawable f2217C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public final Drawable f2218D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public final String f2219E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public final String f2220F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final B f2221G;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public final String f2222G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Resources f2223H;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public final Drawable f2224H0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ViewOnClickListenerC0146k f2225I;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public final Drawable f2226I0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Class f2227J;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public final float f2228J0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Method f2229K;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public final float f2230K0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Method f2231L;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public final String f2232L0;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Class f2233M;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public final String f2234M0;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Method f2235N;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public final Drawable f2236N0;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Method f2237O;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public final Drawable f2238O0;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final CopyOnWriteArrayList f2239P;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public final String f2240P0;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final RecyclerView f2241Q;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public final String f2242Q0;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final C0152q f2243R;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public final Drawable f2244R0;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final C0149n f2245S;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public final Drawable f2246S0;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final C0145j f2247T;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public final String f2248T0;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final C0145j f2249U;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public final String f2250U0;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final C0141f f2251V;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public Y f2252V0;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final PopupWindow f2253W;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public InterfaceC0147l f2254W0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public boolean f2255X0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public boolean f2256Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public boolean f2257Z0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f2258a0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public boolean f2259a1;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final ImageView f2260b0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public boolean f2261b1;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final ImageView f2262c0;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public boolean f2263c1;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final ImageView f2264d0;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public int f2265d1;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final View f2266e0;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public boolean f2267e1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final View f2268f0;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public int f2269f1;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final TextView f2270g0;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public int f2271g1;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final TextView f2272h0;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public long[] f2273h1;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final ImageView f2274i0;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public boolean[] f2275i1;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final ImageView f2276j0;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final long[] f2277j1;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final ImageView f2278k0;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final boolean[] f2279k1;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final ImageView f2280l0;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public long f2281l1;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final ImageView f2282m0;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public boolean f2283m1;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final ImageView f2284n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final View f2285o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final View f2286p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final View f2287q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final TextView f2288r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final TextView f2289s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final O f2290t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final StringBuilder f2291u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final Formatter f2292v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final d0 f2293w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final e0 f2294x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final p000a.b f2295y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final Drawable f2296z0;

    static {
        p094m0.J.a("media3.ui");
        f2214n1 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0441  */
    /* JADX WARN: Code duplicated, block: B:103:0x046b  */
    /* JADX WARN: Code duplicated, block: B:106:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:109:0x0639  */
    /* JADX WARN: Code duplicated, block: B:110:0x063b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0296  */
    /* JADX WARN: Code duplicated, block: B:43:0x02af  */
    /* JADX WARN: Code duplicated, block: B:47:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:50:0x02de  */
    /* JADX WARN: Code duplicated, block: B:53:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:56:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:59:0x0315  */
    /* JADX WARN: Code duplicated, block: B:60:0x0318 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x031a  */
    /* JADX WARN: Code duplicated, block: B:62:0x033c  */
    /* JADX WARN: Code duplicated, block: B:65:0x0343  */
    /* JADX WARN: Code duplicated, block: B:68:0x0362  */
    /* JADX WARN: Code duplicated, block: B:71:0x0374  */
    /* JADX WARN: Code duplicated, block: B:74:0x0391  */
    /* JADX WARN: Code duplicated, block: B:77:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:78:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:80:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:81:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:84:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:87:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:88:0x040a  */
    /* JADX WARN: Code duplicated, block: B:90:0x040d  */
    /* JADX WARN: Code duplicated, block: B:91:0x0415  */
    /* JADX WARN: Code duplicated, block: B:94:0x041d  */
    /* JADX WARN: Code duplicated, block: B:97:0x042f  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    public C0156v(Context context, AttributeSet attributeSet) {
        int i8;
        boolean z7;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z8;
        boolean z9;
        boolean z10;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i24;
        Method method;
        Method method2;
        Method method3;
        Class<C1.a> cls;
        Method method4;
        ImageView imageView;
        ImageView imageView2;
        View.OnClickListener onClickListener;
        ImageView imageView3;
        View.OnClickListener onClickListener2;
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        O o4;
        View viewFindViewById4;
        O o7;
        Resources resources;
        ImageView imageView4;
        ImageView imageView5;
        ImageView imageView6;
        Typeface typefaceB;
        ImageView imageView7;
        TextView textView;
        View view;
        ImageView imageView8;
        TextView textView2;
        View view2;
        ImageView imageView9;
        ImageView imageView10;
        ImageView imageView11;
        PopupWindow popupWindow;
        boolean z15;
        super(context, null, 0);
        this.f2259a1 = true;
        this.f2265d1 = DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT;
        this.f2271g1 = 0;
        this.f2269f1 = MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK;
        int resourceId = R.drawable.exo_styled_controls_next;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, I.f2067c, 0, 0);
            try {
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(6, R.layout.exo_player_control_view);
                int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(12, R.drawable.exo_styled_controls_play);
                int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(11, R.drawable.exo_styled_controls_pause);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(10, R.drawable.exo_styled_controls_next);
                int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(7, R.drawable.exo_styled_controls_simple_fastforward);
                int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(15, R.drawable.exo_styled_controls_previous);
                int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(20, R.drawable.exo_styled_controls_simple_rewind);
                int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(9, R.drawable.exo_styled_controls_fullscreen_exit);
                int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(8, R.drawable.exo_styled_controls_fullscreen_enter);
                int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(17, R.drawable.exo_styled_controls_repeat_off);
                int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(18, R.drawable.exo_styled_controls_repeat_one);
                int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(16, R.drawable.exo_styled_controls_repeat_all);
                int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(35, R.drawable.exo_styled_controls_shuffle_on);
                int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(34, R.drawable.exo_styled_controls_shuffle_off);
                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(37, R.drawable.exo_styled_controls_subtitle_on);
                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(36, R.drawable.exo_styled_controls_subtitle_off);
                int resourceId17 = typedArrayObtainStyledAttributes.getResourceId(42, R.drawable.exo_styled_controls_vr);
                this.f2265d1 = typedArrayObtainStyledAttributes.getInt(32, this.f2265d1);
                this.f2271g1 = typedArrayObtainStyledAttributes.getInt(19, this.f2271g1);
                boolean z16 = typedArrayObtainStyledAttributes.getBoolean(29, true);
                boolean z17 = typedArrayObtainStyledAttributes.getBoolean(26, true);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(28, true);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(27, true);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(30, false);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(31, false);
                boolean z22 = typedArrayObtainStyledAttributes.getBoolean(33, false);
                this.f2267e1 = typedArrayObtainStyledAttributes.getBoolean(39, false);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(38, this.f2269f1));
                boolean z23 = typedArrayObtainStyledAttributes.getBoolean(2, true);
                typedArrayObtainStyledAttributes.recycle();
                i9 = resourceId15;
                z11 = z16;
                z12 = z17;
                z13 = z18;
                z14 = z19;
                i11 = resourceId7;
                z7 = z23;
                i23 = resourceId4;
                i15 = resourceId5;
                i18 = resourceId12;
                i22 = resourceId8;
                i21 = resourceId9;
                z10 = z20;
                i10 = resourceId2;
                i12 = resourceId16;
                i13 = resourceId17;
                i20 = resourceId10;
                i19 = resourceId11;
                z9 = z21;
                z8 = z22;
                i16 = resourceId3;
                i14 = resourceId6;
                i17 = resourceId13;
                i8 = resourceId14;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i8 = R.drawable.exo_styled_controls_shuffle_off;
            z7 = true;
            i9 = R.drawable.exo_styled_controls_subtitle_on;
            i10 = R.layout.exo_player_control_view;
            i11 = R.drawable.exo_styled_controls_simple_rewind;
            i12 = R.drawable.exo_styled_controls_subtitle_off;
            i13 = R.drawable.exo_styled_controls_vr;
            i14 = R.drawable.exo_styled_controls_previous;
            i15 = R.drawable.exo_styled_controls_simple_fastforward;
            i16 = R.drawable.exo_styled_controls_play;
            z8 = false;
            z9 = false;
            z10 = false;
            i17 = R.drawable.exo_styled_controls_shuffle_on;
            i18 = R.drawable.exo_styled_controls_repeat_all;
            i19 = R.drawable.exo_styled_controls_repeat_one;
            i20 = R.drawable.exo_styled_controls_repeat_off;
            i21 = R.drawable.exo_styled_controls_fullscreen_enter;
            i22 = R.drawable.exo_styled_controls_fullscreen_exit;
            i23 = R.drawable.exo_styled_controls_pause;
            z11 = true;
            z12 = true;
            z13 = true;
            z14 = true;
        }
        LayoutInflater.from(context).inflate(i10, this);
        setDescendantFocusability(262144);
        this.f2225I = new ViewOnClickListenerC0146k(this);
        this.f2239P = new CopyOnWriteArrayList();
        this.f2293w0 = new d0();
        this.f2294x0 = new e0();
        StringBuilder sb = new StringBuilder();
        this.f2291u0 = sb;
        int i25 = i16;
        this.f2292v0 = new Formatter(sb, Locale.getDefault());
        this.f2273h1 = new long[0];
        this.f2275i1 = new boolean[0];
        this.f2277j1 = new long[0];
        this.f2279k1 = new boolean[0];
        this.f2295y0 = new p000a.b(this, 23);
        try {
            Class[] clsArr = new Class[1];
            i24 = i12;
            try {
                clsArr[0] = Boolean.TYPE;
                method = ExoPlayer.class.getMethod("setScrubbingModeEnabled", clsArr);
                try {
                    method2 = ExoPlayer.class.getMethod("isScrubbingModeEnabled", new Class[0]);
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    method2 = null;
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                method = null;
                method2 = null;
                this.f2227J = ExoPlayer.class;
                this.f2229K = method;
                this.f2231L = method2;
                cls = C1.a.class;
                int i26 = C1.a.f1342H;
                try {
                    method3 = cls.getMethod("setScrubbingModeEnabled", Boolean.TYPE);
                    method4 = cls.getMethod("isScrubbingModeEnabled", new Class[0]);
                } catch (ClassNotFoundException | NoSuchMethodException unused3) {
                    method3 = null;
                }
                this.f2233M = cls;
                this.f2235N = method3;
                this.f2237O = method4;
                this.f2288r0 = (TextView) findViewById(R.id.exo_duration);
                this.f2289s0 = (TextView) findViewById(R.id.exo_position);
                imageView = (ImageView) findViewById(R.id.exo_subtitle);
                this.f2280l0 = imageView;
                if (imageView != null) {
                    imageView.setOnClickListener(this.f2225I);
                }
                imageView2 = (ImageView) findViewById(R.id.exo_fullscreen);
                this.f2282m0 = imageView2;
                final int i27 = 0;
                onClickListener = new View.OnClickListener(this) { // from class: D1.g

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ C0156v f2183H;

                    {
                        this.f2183H = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        int i28 = i27;
                        C0156v c0156v = this.f2183H;
                        switch (i28) {
                            case 0:
                                c0156v.o(!c0156v.f2255X0);
                                break;
                            default:
                                c0156v.o(!c0156v.f2255X0);
                                break;
                        }
                    }
                };
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    imageView2.setOnClickListener(onClickListener);
                }
                imageView3 = (ImageView) findViewById(R.id.exo_minimal_fullscreen);
                this.f2284n0 = imageView3;
                final int i28 = 1;
                onClickListener2 = new View.OnClickListener(this) { // from class: D1.g

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ C0156v f2183H;

                    {
                        this.f2183H = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        int i29 = i28;
                        C0156v c0156v = this.f2183H;
                        switch (i29) {
                            case 0:
                                c0156v.o(!c0156v.f2255X0);
                                break;
                            default:
                                c0156v.o(!c0156v.f2255X0);
                                break;
                        }
                    }
                };
                if (imageView3 != null) {
                    imageView3.setVisibility(8);
                    imageView3.setOnClickListener(onClickListener2);
                }
                viewFindViewById = findViewById(R.id.exo_settings);
                this.f2285o0 = viewFindViewById;
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(this.f2225I);
                }
                viewFindViewById2 = findViewById(R.id.exo_playback_speed);
                this.f2286p0 = viewFindViewById2;
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setOnClickListener(this.f2225I);
                }
                viewFindViewById3 = findViewById(R.id.exo_audio_track);
                this.f2287q0 = viewFindViewById3;
                if (viewFindViewById3 != null) {
                    viewFindViewById3.setOnClickListener(this.f2225I);
                }
                o4 = (O) findViewById(R.id.exo_progress);
                viewFindViewById4 = findViewById(R.id.exo_progress_placeholder);
                if (o4 != null) {
                    this.f2290t0 = o4;
                } else if (viewFindViewById4 != null) {
                    C0140e c0140e = new C0140e(context, attributeSet);
                    c0140e.setId(R.id.exo_progress);
                    c0140e.setLayoutParams(viewFindViewById4.getLayoutParams());
                    ViewGroup viewGroup = (ViewGroup) viewFindViewById4.getParent();
                    int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById4);
                    viewGroup.removeView(viewFindViewById4);
                    viewGroup.addView(c0140e, iIndexOfChild);
                    this.f2290t0 = c0140e;
                } else {
                    this.f2290t0 = null;
                }
                o7 = this.f2290t0;
                if (o7 != null) {
                    ViewOnClickListenerC0146k viewOnClickListenerC0146k = this.f2225I;
                    viewOnClickListenerC0146k.getClass();
                    ((C0140e) o7).f2163g0.add(viewOnClickListenerC0146k);
                }
                resources = context.getResources();
                this.f2223H = resources;
                imageView4 = (ImageView) findViewById(R.id.exo_play_pause);
                this.f2264d0 = imageView4;
                if (imageView4 != null) {
                    imageView4.setOnClickListener(this.f2225I);
                }
                imageView5 = (ImageView) findViewById(R.id.exo_prev);
                this.f2260b0 = imageView5;
                if (imageView5 != null) {
                    imageView5.setImageDrawable(resources.getDrawable(i14, context.getTheme()));
                    imageView5.setOnClickListener(this.f2225I);
                }
                imageView6 = (ImageView) findViewById(R.id.exo_next);
                this.f2262c0 = imageView6;
                if (imageView6 != null) {
                    imageView6.setImageDrawable(resources.getDrawable(resourceId, context.getTheme()));
                    imageView6.setOnClickListener(this.f2225I);
                }
                typefaceB = F.n.b(context, R.font.roboto_medium_numbers);
                imageView7 = (ImageView) findViewById(R.id.exo_rew);
                textView = (TextView) findViewById(R.id.exo_rew_with_amount);
                if (imageView7 != null) {
                    imageView7.setImageDrawable(resources.getDrawable(i11, context.getTheme()));
                    this.f2268f0 = imageView7;
                    this.f2272h0 = null;
                } else if (textView != null) {
                    textView.setTypeface(typefaceB);
                    this.f2272h0 = textView;
                    this.f2268f0 = textView;
                } else {
                    this.f2272h0 = null;
                    this.f2268f0 = null;
                }
                view = this.f2268f0;
                if (view != null) {
                    view.setOnClickListener(this.f2225I);
                }
                imageView8 = (ImageView) findViewById(R.id.exo_ffwd);
                textView2 = (TextView) findViewById(R.id.exo_ffwd_with_amount);
                if (imageView8 != null) {
                    imageView8.setImageDrawable(resources.getDrawable(i15, context.getTheme()));
                    this.f2266e0 = imageView8;
                    this.f2270g0 = null;
                } else if (textView2 != null) {
                    textView2.setTypeface(typefaceB);
                    this.f2270g0 = textView2;
                    this.f2266e0 = textView2;
                } else {
                    this.f2270g0 = null;
                    this.f2266e0 = null;
                }
                view2 = this.f2266e0;
                if (view2 != null) {
                    view2.setOnClickListener(this.f2225I);
                }
                imageView9 = (ImageView) findViewById(R.id.exo_repeat_toggle);
                this.f2274i0 = imageView9;
                if (imageView9 != null) {
                    imageView9.setOnClickListener(this.f2225I);
                }
                imageView10 = (ImageView) findViewById(R.id.exo_shuffle);
                this.f2276j0 = imageView10;
                if (imageView10 != null) {
                    imageView10.setOnClickListener(this.f2225I);
                }
                this.f2228J0 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
                this.f2230K0 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
                imageView11 = (ImageView) findViewById(R.id.exo_vr);
                this.f2278k0 = imageView11;
                if (imageView11 != null) {
                    imageView11.setImageDrawable(resources.getDrawable(i13, context.getTheme()));
                    n(imageView11, false);
                }
                B b8 = new B(this);
                this.f2221G = b8;
                b8.f2032C = z7;
                C0152q c0152q = new C0152q(this, new String[]{resources.getString(R.string.exo_controls_playback_speed), resources.getString(R.string.exo_track_selection_title_audio)}, new Drawable[]{resources.getDrawable(R.drawable.exo_styled_controls_speed, context.getTheme()), resources.getDrawable(R.drawable.exo_styled_controls_audiotrack, context.getTheme())});
                this.f2243R = c0152q;
                this.f2258a0 = resources.getDimensionPixelSize(R.dimen.exo_settings_offset);
                RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R.layout.exo_styled_settings_list, (ViewGroup) null);
                this.f2241Q = recyclerView;
                recyclerView.setAdapter(c0152q);
                getContext();
                recyclerView.setLayoutManager(new LinearLayoutManager(1));
                popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
                this.f2253W = popupWindow;
                if (Build.VERSION.SDK_INT < 23) {
                    popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                }
                popupWindow.setOnDismissListener(this.f2225I);
                this.f2283m1 = true;
                this.f2251V = new C0141f(getResources());
                this.f2236N0 = resources.getDrawable(i9, context.getTheme());
                this.f2238O0 = resources.getDrawable(i24, context.getTheme());
                this.f2240P0 = resources.getString(R.string.exo_controls_cc_enabled_description);
                this.f2242Q0 = resources.getString(R.string.exo_controls_cc_disabled_description);
                int i29 = 0;
                this.f2247T = new C0145j(this, 1, i29);
                this.f2249U = new C0145j(this, i29, i29);
                this.f2245S = new C0149n(this, resources.getStringArray(R.array.exo_controls_playback_speeds), f2214n1);
                this.f2296z0 = resources.getDrawable(i25, context.getTheme());
                this.f2215A0 = resources.getDrawable(i23, context.getTheme());
                this.f2244R0 = resources.getDrawable(i22, context.getTheme());
                this.f2246S0 = resources.getDrawable(i21, context.getTheme());
                this.f2216B0 = resources.getDrawable(i20, context.getTheme());
                this.f2217C0 = resources.getDrawable(i19, context.getTheme());
                this.f2218D0 = resources.getDrawable(i18, context.getTheme());
                this.f2224H0 = resources.getDrawable(i17, context.getTheme());
                this.f2226I0 = resources.getDrawable(i8, context.getTheme());
                this.f2248T0 = resources.getString(R.string.exo_controls_fullscreen_exit_description);
                this.f2250U0 = resources.getString(R.string.exo_controls_fullscreen_enter_description);
                this.f2219E0 = resources.getString(R.string.exo_controls_repeat_off_description);
                this.f2220F0 = resources.getString(R.string.exo_controls_repeat_one_description);
                this.f2222G0 = resources.getString(R.string.exo_controls_repeat_all_description);
                this.f2232L0 = resources.getString(R.string.exo_controls_shuffle_on_description);
                this.f2234M0 = resources.getString(R.string.exo_controls_shuffle_off_description);
                b8.i((ViewGroup) findViewById(R.id.exo_bottom_bar), true);
                b8.i(this.f2266e0, z12);
                b8.i(this.f2268f0, z11);
                b8.i(imageView5, z13);
                b8.i(imageView6, z14);
                b8.i(imageView10, z10);
                b8.i(this.f2280l0, z9);
                b8.i(imageView11, z8);
                if (this.f2271g1 != 0) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                b8.i(imageView9, z15);
                addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC0143h(this, 0));
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused4) {
            i24 = i12;
        }
        this.f2227J = ExoPlayer.class;
        this.f2229K = method;
        this.f2231L = method2;
        try {
            cls = C1.a.class;
            int i210 = C1.a.f1342H;
            method3 = cls.getMethod("setScrubbingModeEnabled", Boolean.TYPE);
            try {
                method4 = cls.getMethod("isScrubbingModeEnabled", new Class[0]);
            } catch (ClassNotFoundException | NoSuchMethodException unused5) {
                method4 = null;
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused6) {
            method3 = null;
            cls = null;
        }
        this.f2233M = cls;
        this.f2235N = method3;
        this.f2237O = method4;
        this.f2288r0 = (TextView) findViewById(R.id.exo_duration);
        this.f2289s0 = (TextView) findViewById(R.id.exo_position);
        imageView = (ImageView) findViewById(R.id.exo_subtitle);
        this.f2280l0 = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(this.f2225I);
        }
        imageView2 = (ImageView) findViewById(R.id.exo_fullscreen);
        this.f2282m0 = imageView2;
        final int i211 = 0;
        onClickListener = new View.OnClickListener(this) { // from class: D1.g

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ C0156v f2183H;

            {
                this.f2183H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                int i212 = i211;
                C0156v c0156v = this.f2183H;
                switch (i212) {
                    case 0:
                        c0156v.o(!c0156v.f2255X0);
                        break;
                    default:
                        c0156v.o(!c0156v.f2255X0);
                        break;
                }
            }
        };
        if (imageView2 != null) {
            imageView2.setVisibility(8);
            imageView2.setOnClickListener(onClickListener);
        }
        imageView3 = (ImageView) findViewById(R.id.exo_minimal_fullscreen);
        this.f2284n0 = imageView3;
        final int i212 = 1;
        onClickListener2 = new View.OnClickListener(this) { // from class: D1.g

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ C0156v f2183H;

            {
                this.f2183H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                int i213 = i212;
                C0156v c0156v = this.f2183H;
                switch (i213) {
                    case 0:
                        c0156v.o(!c0156v.f2255X0);
                        break;
                    default:
                        c0156v.o(!c0156v.f2255X0);
                        break;
                }
            }
        };
        if (imageView3 != null) {
            imageView3.setVisibility(8);
            imageView3.setOnClickListener(onClickListener2);
        }
        viewFindViewById = findViewById(R.id.exo_settings);
        this.f2285o0 = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.f2225I);
        }
        viewFindViewById2 = findViewById(R.id.exo_playback_speed);
        this.f2286p0 = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this.f2225I);
        }
        viewFindViewById3 = findViewById(R.id.exo_audio_track);
        this.f2287q0 = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this.f2225I);
        }
        o4 = (O) findViewById(R.id.exo_progress);
        viewFindViewById4 = findViewById(R.id.exo_progress_placeholder);
        if (o4 != null) {
            this.f2290t0 = o4;
        } else if (viewFindViewById4 != null) {
            C0140e c0140e2 = new C0140e(context, attributeSet);
            c0140e2.setId(R.id.exo_progress);
            c0140e2.setLayoutParams(viewFindViewById4.getLayoutParams());
            ViewGroup viewGroup2 = (ViewGroup) viewFindViewById4.getParent();
            int iIndexOfChild2 = viewGroup2.indexOfChild(viewFindViewById4);
            viewGroup2.removeView(viewFindViewById4);
            viewGroup2.addView(c0140e2, iIndexOfChild2);
            this.f2290t0 = c0140e2;
        } else {
            this.f2290t0 = null;
        }
        o7 = this.f2290t0;
        if (o7 != null) {
            ViewOnClickListenerC0146k viewOnClickListenerC0146k2 = this.f2225I;
            viewOnClickListenerC0146k2.getClass();
            ((C0140e) o7).f2163g0.add(viewOnClickListenerC0146k2);
        }
        resources = context.getResources();
        this.f2223H = resources;
        imageView4 = (ImageView) findViewById(R.id.exo_play_pause);
        this.f2264d0 = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(this.f2225I);
        }
        imageView5 = (ImageView) findViewById(R.id.exo_prev);
        this.f2260b0 = imageView5;
        if (imageView5 != null) {
            imageView5.setImageDrawable(resources.getDrawable(i14, context.getTheme()));
            imageView5.setOnClickListener(this.f2225I);
        }
        imageView6 = (ImageView) findViewById(R.id.exo_next);
        this.f2262c0 = imageView6;
        if (imageView6 != null) {
            imageView6.setImageDrawable(resources.getDrawable(resourceId, context.getTheme()));
            imageView6.setOnClickListener(this.f2225I);
        }
        typefaceB = F.n.b(context, R.font.roboto_medium_numbers);
        imageView7 = (ImageView) findViewById(R.id.exo_rew);
        textView = (TextView) findViewById(R.id.exo_rew_with_amount);
        if (imageView7 != null) {
            imageView7.setImageDrawable(resources.getDrawable(i11, context.getTheme()));
            this.f2268f0 = imageView7;
            this.f2272h0 = null;
        } else if (textView != null) {
            textView.setTypeface(typefaceB);
            this.f2272h0 = textView;
            this.f2268f0 = textView;
        } else {
            this.f2272h0 = null;
            this.f2268f0 = null;
        }
        view = this.f2268f0;
        if (view != null) {
            view.setOnClickListener(this.f2225I);
        }
        imageView8 = (ImageView) findViewById(R.id.exo_ffwd);
        textView2 = (TextView) findViewById(R.id.exo_ffwd_with_amount);
        if (imageView8 != null) {
            imageView8.setImageDrawable(resources.getDrawable(i15, context.getTheme()));
            this.f2266e0 = imageView8;
            this.f2270g0 = null;
        } else if (textView2 != null) {
            textView2.setTypeface(typefaceB);
            this.f2270g0 = textView2;
            this.f2266e0 = textView2;
        } else {
            this.f2270g0 = null;
            this.f2266e0 = null;
        }
        view2 = this.f2266e0;
        if (view2 != null) {
            view2.setOnClickListener(this.f2225I);
        }
        imageView9 = (ImageView) findViewById(R.id.exo_repeat_toggle);
        this.f2274i0 = imageView9;
        if (imageView9 != null) {
            imageView9.setOnClickListener(this.f2225I);
        }
        imageView10 = (ImageView) findViewById(R.id.exo_shuffle);
        this.f2276j0 = imageView10;
        if (imageView10 != null) {
            imageView10.setOnClickListener(this.f2225I);
        }
        this.f2228J0 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.f2230K0 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        imageView11 = (ImageView) findViewById(R.id.exo_vr);
        this.f2278k0 = imageView11;
        if (imageView11 != null) {
            imageView11.setImageDrawable(resources.getDrawable(i13, context.getTheme()));
            n(imageView11, false);
        }
        B b9 = new B(this);
        this.f2221G = b9;
        b9.f2032C = z7;
        C0152q c0152q2 = new C0152q(this, new String[]{resources.getString(R.string.exo_controls_playback_speed), resources.getString(R.string.exo_track_selection_title_audio)}, new Drawable[]{resources.getDrawable(R.drawable.exo_styled_controls_speed, context.getTheme()), resources.getDrawable(R.drawable.exo_styled_controls_audiotrack, context.getTheme())});
        this.f2243R = c0152q2;
        this.f2258a0 = resources.getDimensionPixelSize(R.dimen.exo_settings_offset);
        RecyclerView recyclerView2 = (RecyclerView) LayoutInflater.from(context).inflate(R.layout.exo_styled_settings_list, (ViewGroup) null);
        this.f2241Q = recyclerView2;
        recyclerView2.setAdapter(c0152q2);
        getContext();
        recyclerView2.setLayoutManager(new LinearLayoutManager(1));
        popupWindow = new PopupWindow((View) recyclerView2, -2, -2, true);
        this.f2253W = popupWindow;
        if (Build.VERSION.SDK_INT < 23) {
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        }
        popupWindow.setOnDismissListener(this.f2225I);
        this.f2283m1 = true;
        this.f2251V = new C0141f(getResources());
        this.f2236N0 = resources.getDrawable(i9, context.getTheme());
        this.f2238O0 = resources.getDrawable(i24, context.getTheme());
        this.f2240P0 = resources.getString(R.string.exo_controls_cc_enabled_description);
        this.f2242Q0 = resources.getString(R.string.exo_controls_cc_disabled_description);
        int i213 = 0;
        this.f2247T = new C0145j(this, 1, i213);
        this.f2249U = new C0145j(this, i213, i213);
        this.f2245S = new C0149n(this, resources.getStringArray(R.array.exo_controls_playback_speeds), f2214n1);
        this.f2296z0 = resources.getDrawable(i25, context.getTheme());
        this.f2215A0 = resources.getDrawable(i23, context.getTheme());
        this.f2244R0 = resources.getDrawable(i22, context.getTheme());
        this.f2246S0 = resources.getDrawable(i21, context.getTheme());
        this.f2216B0 = resources.getDrawable(i20, context.getTheme());
        this.f2217C0 = resources.getDrawable(i19, context.getTheme());
        this.f2218D0 = resources.getDrawable(i18, context.getTheme());
        this.f2224H0 = resources.getDrawable(i17, context.getTheme());
        this.f2226I0 = resources.getDrawable(i8, context.getTheme());
        this.f2248T0 = resources.getString(R.string.exo_controls_fullscreen_exit_description);
        this.f2250U0 = resources.getString(R.string.exo_controls_fullscreen_enter_description);
        this.f2219E0 = resources.getString(R.string.exo_controls_repeat_off_description);
        this.f2220F0 = resources.getString(R.string.exo_controls_repeat_one_description);
        this.f2222G0 = resources.getString(R.string.exo_controls_repeat_all_description);
        this.f2232L0 = resources.getString(R.string.exo_controls_shuffle_on_description);
        this.f2234M0 = resources.getString(R.string.exo_controls_shuffle_off_description);
        b9.i((ViewGroup) findViewById(R.id.exo_bottom_bar), true);
        b9.i(this.f2266e0, z12);
        b9.i(this.f2268f0, z11);
        b9.i(imageView5, z13);
        b9.i(imageView6, z14);
        b9.i(imageView10, z10);
        b9.i(this.f2280l0, z9);
        b9.i(imageView11, z8);
        if (this.f2271g1 != 0) {
            z15 = true;
        } else {
            z15 = false;
        }
        b9.i(imageView9, z15);
        addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC0143h(this, 0));
    }

    public static void a(C0156v c0156v, Y y7, long j8) {
        if (c0156v.f2261b1) {
            AbstractC3123f abstractC3123f = (AbstractC3123f) y7;
            if (abstractC3123f.c(17) && abstractC3123f.c(10)) {
                f0 f0VarX = ((B0.O) abstractC3123f).x();
                int iP = f0VarX.p();
                int i8 = 0;
                while (true) {
                    long jE0 = p117p0.M.e0(f0VarX.n(i8, c0156v.f2294x0, 0L).f26846m);
                    if (j8 < jE0) {
                        break;
                    }
                    if (i8 == iP - 1) {
                        j8 = jE0;
                        break;
                    } else {
                        j8 -= jE0;
                        i8++;
                    }
                }
                abstractC3123f.i(i8, j8, false);
            }
        } else {
            AbstractC3123f abstractC3123f2 = (AbstractC3123f) y7;
            if (abstractC3123f2.c(5)) {
                abstractC3123f2.j(5, j8);
            }
        }
        c0156v.s();
    }

    public static boolean c(Y y7, e0 e0Var) {
        f0 f0VarX;
        int iP;
        AbstractC3123f abstractC3123f = (AbstractC3123f) y7;
        if (!abstractC3123f.c(17) || (iP = (f0VarX = ((B0.O) abstractC3123f).x()).p()) <= 1 || iP > 100) {
            return false;
        }
        for (int i8 = 0; i8 < iP; i8++) {
            if (f0VarX.n(i8, e0Var, 0L).f26846m == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f8) {
        Y y7 = this.f2252V0;
        if (y7 == null || !((AbstractC3123f) y7).c(13)) {
            return;
        }
        B0.O o4 = (B0.O) this.f2252V0;
        o4.c0();
        p094m0.S s7 = new p094m0.S(f8, o4.f778N0.f1106o.f26787b);
        o4.c0();
        if (o4.f778N0.f1106o.equals(s7)) {
            return;
        }
        v0 v0VarG = o4.f778N0.g(s7);
        o4.f805m0++;
        o4.f784R.f864N.a(4, s7).b();
        o4.a0(v0VarG, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006d  */
    /* JADX WARN: Code duplicated, block: B:27:0x0073  */
    /* JADX WARN: Code duplicated, block: B:44:0x00af  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:47:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c3  */
    public final boolean d(KeyEvent keyEvent) {
        AbstractC3123f abstractC3123f;
        int keyCode = keyEvent.getKeyCode();
        Y y7 = this.f2252V0;
        if (y7 == null || !(keyCode == 90 || keyCode == 89 || keyCode == 85 || keyCode == 79 || keyCode == 126 || keyCode == 127 || keyCode == 87 || keyCode == 88)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                if (((B0.O) y7).C() != 4) {
                    AbstractC3123f abstractC3123f2 = (AbstractC3123f) y7;
                    if (abstractC3123f2.c(12)) {
                        B0.O o4 = (B0.O) abstractC3123f2;
                        o4.c0();
                        abstractC3123f2.l(12, o4.f794b0);
                    }
                }
            } else if (keyCode == 89) {
                AbstractC3123f abstractC3123f3 = (AbstractC3123f) y7;
                if (abstractC3123f3.c(11)) {
                    B0.O o7 = (B0.O) abstractC3123f3;
                    o7.c0();
                    abstractC3123f3.l(11, -o7.f793a0);
                } else if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode != 79 || keyCode == 85) {
                        if (p117p0.M.b0(y7, this.f2259a1)) {
                            p117p0.M.H(y7);
                        } else {
                            abstractC3123f = (AbstractC3123f) y7;
                            if (abstractC3123f.c(1)) {
                                ((B0.O) abstractC3123f).S(false);
                            }
                        }
                    } else if (keyCode == 87) {
                        AbstractC3123f abstractC3123f4 = (AbstractC3123f) y7;
                        if (abstractC3123f4.c(9)) {
                            abstractC3123f4.k();
                        }
                    } else if (keyCode == 88) {
                        AbstractC3123f abstractC3123f5 = (AbstractC3123f) y7;
                        if (abstractC3123f5.c(7)) {
                            abstractC3123f5.m();
                        }
                    } else if (keyCode == 126) {
                        p117p0.M.H(y7);
                    } else if (keyCode == 127) {
                        String str = p117p0.M.f28050a;
                        AbstractC3123f abstractC3123f6 = (AbstractC3123f) y7;
                        if (abstractC3123f6.c(1)) {
                            ((B0.O) abstractC3123f6).S(false);
                        }
                    }
                }
            } else if (keyEvent.getRepeatCount() == 0) {
                if (keyCode != 79) {
                    if (p117p0.M.b0(y7, this.f2259a1)) {
                        p117p0.M.H(y7);
                    } else {
                        abstractC3123f = (AbstractC3123f) y7;
                        if (abstractC3123f.c(1)) {
                            ((B0.O) abstractC3123f).S(false);
                        }
                    }
                } else if (p117p0.M.b0(y7, this.f2259a1)) {
                    p117p0.M.H(y7);
                } else {
                    abstractC3123f = (AbstractC3123f) y7;
                    if (abstractC3123f.c(1)) {
                        ((B0.O) abstractC3123f).S(false);
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return d(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public final void e(O1.C c8, View view) {
        this.f2241Q.setAdapter(c8);
        u();
        this.f2283m1 = false;
        PopupWindow popupWindow = this.f2253W;
        popupWindow.dismiss();
        this.f2283m1 = true;
        int width = getWidth() - popupWindow.getWidth();
        int i8 = this.f2258a0;
        popupWindow.showAsDropDown(view, width - i8, (-popupWindow.getHeight()) - i8);
    }

    public final z4.d0 f(m0 m0Var, int i8) {
        Cw.g(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        z4.H h8 = m0Var.f26959a;
        int i9 = 0;
        for (int i10 = 0; i10 < h8.size(); i10++) {
            l0 l0Var = (l0) h8.get(i10);
            if (l0Var.f26949b.f26859c == i8) {
                for (int i11 = 0; i11 < l0Var.f26948a; i11++) {
                    if (l0Var.d(i11)) {
                        C3136t c3136t = l0Var.f26949b.f26860d[i11];
                        if ((c3136t.f27031e & 2) == 0) {
                            C0153s c0153s = new C0153s(m0Var, i10, i11, this.f2251V.c(c3136t));
                            int i12 = i9 + 1;
                            int iF = Q3.b.f(objArrCopyOf.length, i12);
                            if (iF > objArrCopyOf.length) {
                                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                            }
                            objArrCopyOf[i9] = c0153s;
                            i9 = i12;
                        }
                    }
                }
            }
        }
        return z4.H.p(i9, objArrCopyOf);
    }

    public final void g() {
        B b8 = this.f2221G;
        int i8 = b8.f2058z;
        if (i8 == 3 || i8 == 2) {
            return;
        }
        b8.g();
        if (!b8.f2032C) {
            b8.j(2);
        } else if (b8.f2058z == 1) {
            b8.f2045m.start();
        } else {
            b8.f2046n.start();
        }
    }

    public Y getPlayer() {
        return this.f2252V0;
    }

    public int getRepeatToggleModes() {
        return this.f2271g1;
    }

    public boolean getShowShuffleButton() {
        return this.f2221G.c(this.f2276j0);
    }

    public boolean getShowSubtitleButton() {
        return this.f2221G.c(this.f2280l0);
    }

    public int getShowTimeoutMs() {
        return this.f2265d1;
    }

    public boolean getShowVrButton() {
        return this.f2221G.c(this.f2278k0);
    }

    public final boolean h(Y y7) {
        Class cls;
        return (y7 == null || (cls = this.f2233M) == null || !cls.isAssignableFrom(y7.getClass())) ? false : true;
    }

    public final boolean i(Y y7) {
        Class cls;
        return (y7 == null || (cls = this.f2227J) == null || !cls.isAssignableFrom(y7.getClass())) ? false : true;
    }

    public final boolean j() {
        B b8 = this.f2221G;
        return b8.f2058z == 0 && b8.f2033a.l();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0028 A[Catch: InvocationTargetException -> 0x001e, IllegalAccessException -> 0x0020, TRY_LEAVE, TryCatch #2 {IllegalAccessException -> 0x0020, InvocationTargetException -> 0x001e, blocks: (B:2:0x0000, B:4:0x0007, B:11:0x0022, B:13:0x0028), top: B:19:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:? A[RETURN, SYNTHETIC] */
    public final boolean k(Y y7) {
        Object objInvoke;
        try {
            if (i(y7)) {
                Method method = this.f2231L;
                method.getClass();
                Object objInvoke2 = method.invoke(y7, new Object[0]);
                objInvoke2.getClass();
                if (!((Boolean) objInvoke2).booleanValue()) {
                    if (h(y7)) {
                        return false;
                    }
                    Method method2 = this.f2237O;
                    method2.getClass();
                    objInvoke = method2.invoke(y7, new Object[0]);
                    objInvoke.getClass();
                    if (((Boolean) objInvoke).booleanValue()) {
                        return false;
                    }
                }
            } else {
                if (h(y7)) {
                    return false;
                }
                Method method3 = this.f2237O;
                method3.getClass();
                objInvoke = method3.invoke(y7, new Object[0]);
                objInvoke.getClass();
                if (((Boolean) objInvoke).booleanValue()) {
                    return false;
                }
            }
            return true;
        } catch (IllegalAccessException e8) {
            e = e8;
            throw new RuntimeException(e);
        } catch (InvocationTargetException e9) {
            e = e9;
            throw new RuntimeException(e);
        }
    }

    public final boolean l() {
        return getVisibility() == 0;
    }

    public final void m() {
        q();
        p();
        t();
        v();
        x();
        r();
        w();
    }

    public final void n(View view, boolean z7) {
        if (view == null) {
            return;
        }
        view.setEnabled(z7);
        view.setAlpha(z7 ? this.f2228J0 : this.f2230K0);
    }

    public final void o(boolean z7) {
        if (this.f2255X0 == z7) {
            return;
        }
        this.f2255X0 = z7;
        String str = this.f2250U0;
        Drawable drawable = this.f2246S0;
        String str2 = this.f2248T0;
        Drawable drawable2 = this.f2244R0;
        ImageView imageView = this.f2282m0;
        if (imageView != null) {
            if (z7) {
                imageView.setImageDrawable(drawable2);
                imageView.setContentDescription(str2);
            } else {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            }
        }
        ImageView imageView2 = this.f2284n0;
        if (imageView2 != null) {
            if (z7) {
                imageView2.setImageDrawable(drawable2);
                imageView2.setContentDescription(str2);
            } else {
                imageView2.setImageDrawable(drawable);
                imageView2.setContentDescription(str);
            }
        }
        InterfaceC0147l interfaceC0147l = this.f2254W0;
        if (interfaceC0147l != null) {
            ((D) interfaceC0147l).f2062I.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        B b8 = this.f2221G;
        b8.f2033a.addOnLayoutChangeListener(b8.f2056x);
        this.f2256Y0 = true;
        if (j()) {
            b8.h();
        }
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        B b8 = this.f2221G;
        b8.f2033a.removeOnLayoutChangeListener(b8.f2056x);
        this.f2256Y0 = false;
        removeCallbacks(this.f2295y0);
        b8.g();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        View view = this.f2221G.f2034b;
        if (view != null) {
            view.layout(0, 0, i10 - i8, i11 - i9);
        }
    }

    public final void p() {
        boolean zC;
        boolean zC2;
        boolean zC3;
        boolean zC4;
        boolean zC5;
        long j8;
        long j9;
        if (l() && this.f2256Y0) {
            Y y7 = this.f2252V0;
            if (y7 != null) {
                zC2 = (this.f2257Z0 && c(y7, this.f2294x0)) ? ((AbstractC3123f) y7).c(10) : ((AbstractC3123f) y7).c(5);
                AbstractC3123f abstractC3123f = (AbstractC3123f) y7;
                zC3 = abstractC3123f.c(7);
                zC4 = abstractC3123f.c(11);
                zC5 = abstractC3123f.c(12);
                zC = abstractC3123f.c(9);
            } else {
                zC = false;
                zC2 = false;
                zC3 = false;
                zC4 = false;
                zC5 = false;
            }
            Resources resources = this.f2223H;
            View view = this.f2268f0;
            if (zC4) {
                Y y8 = this.f2252V0;
                if (y8 != null) {
                    B0.O o4 = (B0.O) y8;
                    o4.c0();
                    j9 = o4.f793a0;
                } else {
                    j9 = 5000;
                }
                int i8 = (int) (j9 / 1000);
                TextView textView = this.f2272h0;
                if (textView != null) {
                    textView.setText(String.valueOf(i8));
                }
                if (view != null) {
                    view.setContentDescription(resources.getQuantityString(R.plurals.exo_controls_rewind_by_amount_description, i8, Integer.valueOf(i8)));
                }
            }
            View view2 = this.f2266e0;
            if (zC5) {
                Y y9 = this.f2252V0;
                if (y9 != null) {
                    B0.O o7 = (B0.O) y9;
                    o7.c0();
                    j8 = o7.f794b0;
                } else {
                    j8 = 15000;
                }
                int i9 = (int) (j8 / 1000);
                TextView textView2 = this.f2270g0;
                if (textView2 != null) {
                    textView2.setText(String.valueOf(i9));
                }
                if (view2 != null) {
                    view2.setContentDescription(resources.getQuantityString(R.plurals.exo_controls_fastforward_by_amount_description, i9, Integer.valueOf(i9)));
                }
            }
            n(this.f2260b0, zC3);
            n(view, zC4);
            n(view2, zC5);
            n(this.f2262c0, zC);
            O o8 = this.f2290t0;
            if (o8 != null) {
                ((C0140e) o8).setEnabled(zC2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0056  */
    public final void q() {
        ImageView imageView;
        boolean z7;
        if (l() && this.f2256Y0 && (imageView = this.f2264d0) != null) {
            boolean zB0 = p117p0.M.b0(this.f2252V0, this.f2259a1);
            Drawable drawable = zB0 ? this.f2296z0 : this.f2215A0;
            int i8 = zB0 ? R.string.exo_controls_play_description : R.string.exo_controls_pause_description;
            imageView.setImageDrawable(drawable);
            imageView.setContentDescription(this.f2223H.getString(i8));
            Y y7 = this.f2252V0;
            if (y7 != null) {
                AbstractC3123f abstractC3123f = (AbstractC3123f) y7;
                z7 = true;
                if (!abstractC3123f.c(1) || (abstractC3123f.c(17) && ((B0.O) y7).x().q())) {
                    z7 = false;
                }
            } else {
                z7 = false;
            }
            n(imageView, z7);
        }
    }

    public final void r() {
        C0149n c0149n;
        Y y7 = this.f2252V0;
        if (y7 == null) {
            return;
        }
        B0.O o4 = (B0.O) y7;
        o4.c0();
        float f8 = o4.f778N0.f1106o.f26786a;
        float f9 = Float.MAX_VALUE;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            c0149n = this.f2245S;
            float[] fArr = c0149n.f2194J;
            if (i8 >= fArr.length) {
                break;
            }
            float fAbs = Math.abs(f8 - fArr[i8]);
            if (fAbs < f9) {
                i9 = i8;
                f9 = fAbs;
            }
            i8++;
        }
        c0149n.f2195K = i9;
        String str = c0149n.f2193I[i9];
        C0152q c0152q = this.f2243R;
        c0152q.f(0, str);
        n(this.f2285o0, c0152q.g(1) || c0152q.g(0));
    }

    public final void s() {
        long j8;
        long jE0;
        if (l() && this.f2256Y0) {
            Y y7 = this.f2252V0;
            long j9 = 0;
            if (y7 == null || !((AbstractC3123f) y7).c(16)) {
                j8 = 0;
            } else {
                long j10 = this.f2281l1;
                B0.O o4 = (B0.O) y7;
                o4.c0();
                long jQ = o4.q(o4.f778N0) + j10;
                long j11 = this.f2281l1;
                o4.c0();
                if (o4.f778N0.f1092a.q()) {
                    jE0 = o4.f782P0;
                } else {
                    v0 v0Var = o4.f778N0;
                    if (v0Var.f1102k.f5260d != v0Var.f1093b.f5260d) {
                        jE0 = p117p0.M.e0(v0Var.f1092a.n(o4.t(), o4.f26850G, 0L).f26846m);
                    } else {
                        long j12 = v0Var.f1108q;
                        if (o4.f778N0.f1102k.b()) {
                            v0 v0Var2 = o4.f778N0;
                            d0 d0VarH = v0Var2.f1092a.h(v0Var2.f1102k.f5257a, o4.f787U);
                            long jD = d0VarH.d(o4.f778N0.f1102k.f5258b);
                            j12 = jD == Long.MIN_VALUE ? d0VarH.f26828d : jD;
                        }
                        v0 v0Var3 = o4.f778N0;
                        f0 f0Var = v0Var3.f1092a;
                        Object obj = v0Var3.f1102k.f5257a;
                        d0 d0Var = o4.f787U;
                        f0Var.h(obj, d0Var);
                        jE0 = p117p0.M.e0(j12 + d0Var.f26829e);
                    }
                }
                j8 = jE0 + j11;
                j9 = jQ;
            }
            TextView textView = this.f2289s0;
            if (textView != null && !this.f2263c1) {
                textView.setText(p117p0.M.D(this.f2291u0, this.f2292v0, j9));
            }
            O o7 = this.f2290t0;
            if (o7 != null) {
                ((C0140e) o7).setPosition(j9);
                O o8 = this.f2290t0;
                if (k(y7)) {
                    j8 = j9;
                }
                ((C0140e) o8).setBufferedPosition(j8);
            }
            removeCallbacks(this.f2295y0);
            int iC = y7 == null ? 1 : ((B0.O) y7).C();
            if (y7 == null || !((AbstractC3123f) y7).g()) {
                if (iC == 4 || iC == 1) {
                    return;
                }
                postDelayed(this.f2295y0, 1000L);
                return;
            }
            O o9 = this.f2290t0;
            long jMin = Math.min(o9 != null ? ((C0140e) o9).getPreferredUpdateDelay() : 1000L, 1000 - (j9 % 1000));
            B0.O o10 = (B0.O) y7;
            o10.c0();
            float f8 = o10.f778N0.f1106o.f26786a;
            postDelayed(this.f2295y0, p117p0.M.j(f8 > 0.0f ? (long) (jMin / f8) : 1000L, this.f2269f1, 1000L));
        }
    }

    public void setAnimationEnabled(boolean z7) {
        this.f2221G.f2032C = z7;
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(InterfaceC0147l interfaceC0147l) {
        this.f2254W0 = interfaceC0147l;
        boolean z7 = interfaceC0147l != null;
        ImageView imageView = this.f2282m0;
        if (imageView != null) {
            if (z7) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        boolean z8 = interfaceC0147l != null;
        ImageView imageView2 = this.f2284n0;
        if (imageView2 == null) {
            return;
        }
        if (z8) {
            imageView2.setVisibility(0);
        } else {
            imageView2.setVisibility(8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001f  */
    public void setPlayer(Y y7) {
        boolean z7;
        H1.i(Looper.myLooper() == Looper.getMainLooper());
        if (y7 != null) {
            z7 = ((B0.O) y7).f791Y == Looper.getMainLooper();
        }
        H1.d(z7);
        Y y8 = this.f2252V0;
        if (y8 == y7) {
            return;
        }
        ViewOnClickListenerC0146k viewOnClickListenerC0146k = this.f2225I;
        if (y8 != null) {
            ((B0.O) y8).M(viewOnClickListenerC0146k);
        }
        this.f2252V0 = y7;
        if (y7 != null) {
            viewOnClickListenerC0146k.getClass();
            ((B0.O) y7).f785S.a(viewOnClickListenerC0146k);
        }
        m();
    }

    public void setRepeatToggleModes(int i8) {
        this.f2271g1 = i8;
        Y y7 = this.f2252V0;
        if (y7 != null && ((AbstractC3123f) y7).c(15)) {
            B0.O o4 = (B0.O) this.f2252V0;
            o4.c0();
            int i9 = o4.f803k0;
            if (i8 == 0 && i9 != 0) {
                ((B0.O) this.f2252V0).T(0);
            } else if (i8 == 1 && i9 == 2) {
                ((B0.O) this.f2252V0).T(1);
            } else if (i8 == 2 && i9 == 1) {
                ((B0.O) this.f2252V0).T(2);
            }
        }
        this.f2221G.i(this.f2274i0, i8 != 0);
        t();
    }

    public void setShowFastForwardButton(boolean z7) {
        this.f2221G.i(this.f2266e0, z7);
        p();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z7) {
        this.f2257Z0 = z7;
        w();
    }

    public void setShowNextButton(boolean z7) {
        this.f2221G.i(this.f2262c0, z7);
        p();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z7) {
        this.f2259a1 = z7;
        q();
    }

    public void setShowPreviousButton(boolean z7) {
        this.f2221G.i(this.f2260b0, z7);
        p();
    }

    public void setShowRewindButton(boolean z7) {
        this.f2221G.i(this.f2268f0, z7);
        p();
    }

    public void setShowShuffleButton(boolean z7) {
        this.f2221G.i(this.f2276j0, z7);
        v();
    }

    public void setShowSubtitleButton(boolean z7) {
        this.f2221G.i(this.f2280l0, z7);
    }

    public void setShowTimeoutMs(int i8) {
        this.f2265d1 = i8;
        if (j()) {
            this.f2221G.h();
        }
    }

    public void setShowVrButton(boolean z7) {
        this.f2221G.i(this.f2278k0, z7);
    }

    public void setTimeBarMinUpdateInterval(int i8) {
        this.f2269f1 = p117p0.M.i(i8, 16, 1000);
    }

    public void setTimeBarScrubbingEnabled(boolean z7) {
        this.f2267e1 = z7;
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.f2278k0;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
            n(imageView, onClickListener != null);
        }
    }

    public final void t() {
        ImageView imageView;
        if (l() && this.f2256Y0 && (imageView = this.f2274i0) != null) {
            if (this.f2271g1 == 0) {
                n(imageView, false);
                return;
            }
            Y y7 = this.f2252V0;
            String str = this.f2219E0;
            Drawable drawable = this.f2216B0;
            if (y7 == null || !((AbstractC3123f) y7).c(15)) {
                n(imageView, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            n(imageView, true);
            B0.O o4 = (B0.O) y7;
            o4.c0();
            int i8 = o4.f803k0;
            if (i8 == 0) {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            } else if (i8 == 1) {
                imageView.setImageDrawable(this.f2217C0);
                imageView.setContentDescription(this.f2220F0);
            } else {
                if (i8 != 2) {
                    return;
                }
                imageView.setImageDrawable(this.f2218D0);
                imageView.setContentDescription(this.f2222G0);
            }
        }
    }

    public final void u() {
        RecyclerView recyclerView = this.f2241Q;
        recyclerView.measure(0, 0);
        int width = getWidth();
        int i8 = this.f2258a0;
        int iMin = Math.min(recyclerView.getMeasuredWidth(), width - (i8 * 2));
        PopupWindow popupWindow = this.f2253W;
        popupWindow.setWidth(iMin);
        popupWindow.setHeight(Math.min(getHeight() - (i8 * 2), recyclerView.getMeasuredHeight()));
    }

    public final void v() {
        ImageView imageView;
        if (l() && this.f2256Y0 && (imageView = this.f2276j0) != null) {
            Y y7 = this.f2252V0;
            if (!this.f2221G.c(imageView)) {
                n(imageView, false);
                return;
            }
            String str = this.f2234M0;
            Drawable drawable = this.f2226I0;
            if (y7 == null || !((AbstractC3123f) y7).c(14)) {
                n(imageView, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            n(imageView, true);
            B0.O o4 = (B0.O) y7;
            o4.c0();
            if (o4.f804l0) {
                drawable = this.f2224H0;
            }
            imageView.setImageDrawable(drawable);
            o4.c0();
            if (o4.f804l0) {
                str = this.f2232L0;
            }
            imageView.setContentDescription(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x009a  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f4 A[LOOP:3: B:58:0x00e4->B:64:0x00f4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x015b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v9, types: [int] */
    /* JADX WARN: Type inference failed for: r5v14, types: [m0.c] */
    /* JADX WARN: Type inference failed for: r7v3, types: [m0.d0] */
    /* JADX WARN: Type inference failed for: r8v3, types: [m0.f0] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void w() {
        boolean z7;
        long jR;
        int i8;
        ?? r7;
        long j8;
        long[] jArr;
        C3119b c3119bA;
        int i9;
        int i10;
        int i11;
        boolean z8;
        int i12;
        C3119b c3119b;
        int length;
        Y y7 = this.f2252V0;
        if (y7 == null) {
            return;
        }
        boolean z9 = this.f2257Z0;
        boolean z10 = false;
        boolean z11 = true;
        e0 e0Var = this.f2294x0;
        this.f2261b1 = z9 && c(y7, e0Var);
        this.f2281l1 = 0L;
        AbstractC3123f abstractC3123f = (AbstractC3123f) y7;
        ?? X7 = abstractC3123f.c(17) ? ((B0.O) y7).x() : f0.f26851a;
        long j9 = -9223372036854775807L;
        if (X7.q()) {
            z7 = true;
            if (abstractC3123f.c(16)) {
                long jA = abstractC3123f.a();
                if (jA != -9223372036854775807L) {
                    jR = p117p0.M.R(jA);
                } else {
                    jR = 0;
                }
            } else {
                jR = 0;
            }
            i8 = 0;
        } else {
            int iT = ((B0.O) y7).t();
            boolean z12 = this.f2261b1;
            int i13 = z12 ? 0 : iT;
            int iP = z12 ? X7.p() - 1 : iT;
            long j10 = 0;
            i8 = 0;
            while (i13 <= iP) {
                if (i13 == iT) {
                    this.f2281l1 = p117p0.M.e0(j10);
                }
                X7.o(i13, e0Var);
                if (e0Var.f26846m == j9) {
                    H1.i(this.f2261b1 ^ z11);
                    break;
                }
                int i14 = e0Var.f26847n;
                boolean z13 = z10;
                while (i14 <= e0Var.f26848o) {
                    ?? r8 = this.f2293w0;
                    X7.g(i14, r8, z13);
                    r8.f26831g.getClass();
                    int i15 = r8.f26831g.f26821a;
                    while (r7 < i15) {
                        long jD = r8.d(r7);
                        e0 e0Var2 = e0Var;
                        if (jD == Long.MIN_VALUE) {
                            long j11 = r8.f26828d;
                            if (j11 == j9) {
                                r7 = z13;
                                i11 = iT;
                            } else {
                                r7 = z13;
                                jD = j11;
                                r7 = z13;
                                j8 = jD + r8.f26829e;
                                if (j8 >= 0) {
                                    jArr = this.f2273h1;
                                    if (i8 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.f2273h1 = Arrays.copyOf(jArr, length);
                                        this.f2275i1 = Arrays.copyOf(this.f2275i1, length);
                                    }
                                    this.f2273h1[i8] = p117p0.M.e0(j10 + j8);
                                    boolean[] zArr = this.f2275i1;
                                    c3119bA = r8.f26831g.a(r7);
                                    i9 = c3119bA.f26806b;
                                    if (i9 == -1) {
                                        i11 = iT;
                                    } else {
                                        i10 = 0;
                                        while (true) {
                                            if (i10 < i9) {
                                                i11 = iT;
                                                i12 = c3119bA.f26810f[i10];
                                                if (i12 != 0) {
                                                    c3119b = c3119bA;
                                                    if (i12 == 1) {
                                                        i10++;
                                                        iT = i11;
                                                        c3119bA = c3119b;
                                                    }
                                                }
                                                z8 = true;
                                            } else {
                                                i11 = iT;
                                                z8 = false;
                                            }
                                            zArr[i8] = !z8;
                                            i8++;
                                        }
                                    }
                                    z8 = true;
                                    zArr[i8] = !z8;
                                    i8++;
                                } else {
                                    r7 = z13;
                                    i11 = iT;
                                }
                            }
                        } else {
                            r7 = z13;
                            j8 = jD + r8.f26829e;
                            if (j8 >= 0) {
                                jArr = this.f2273h1;
                                if (i8 == jArr.length) {
                                    if (jArr.length == 0) {
                                        length = 1;
                                    } else {
                                        length = jArr.length * 2;
                                    }
                                    this.f2273h1 = Arrays.copyOf(jArr, length);
                                    this.f2275i1 = Arrays.copyOf(this.f2275i1, length);
                                }
                                this.f2273h1[i8] = p117p0.M.e0(j10 + j8);
                                boolean[] zArr2 = this.f2275i1;
                                c3119bA = r8.f26831g.a(r7);
                                i9 = c3119bA.f26806b;
                                if (i9 == -1) {
                                    i11 = iT;
                                } else {
                                    i10 = 0;
                                    while (true) {
                                        if (i10 < i9) {
                                            i11 = iT;
                                            i12 = c3119bA.f26810f[i10];
                                            if (i12 != 0) {
                                                c3119b = c3119bA;
                                                if (i12 == 1) {
                                                    i10++;
                                                    iT = i11;
                                                    c3119bA = c3119b;
                                                }
                                            }
                                            z8 = true;
                                        } else {
                                            i11 = iT;
                                            z8 = false;
                                        }
                                        zArr2[i8] = !z8;
                                        i8++;
                                    }
                                }
                                z8 = true;
                                zArr2[i8] = !z8;
                                i8++;
                            } else {
                                r7 = z13;
                                i11 = iT;
                            }
                        }
                        e0Var = e0Var2;
                        iT = i11;
                        j9 = -9223372036854775807L;
                        r7++;
                    }
                    r7 = z13;
                    i14++;
                    e0Var = e0Var;
                    z13 = false;
                    j9 = -9223372036854775807L;
                }
                int i16 = iT;
                e0 e0Var3 = e0Var;
                j10 += e0Var3.f26846m;
                i13++;
                e0Var = e0Var3;
                iT = i16;
                z10 = false;
                z11 = true;
                j9 = -9223372036854775807L;
            }
            z7 = true;
            jR = j10;
        }
        long jE0 = p117p0.M.e0(jR);
        TextView textView = this.f2288r0;
        if (textView != null) {
            textView.setText(p117p0.M.D(this.f2291u0, this.f2292v0, jE0));
        }
        O o4 = this.f2290t0;
        if (o4 != null) {
            C0140e c0140e = (C0140e) o4;
            c0140e.setDuration(jE0);
            long[] jArr2 = this.f2277j1;
            int length2 = jArr2.length;
            int i17 = i8 + length2;
            long[] jArr3 = this.f2273h1;
            if (i17 > jArr3.length) {
                this.f2273h1 = Arrays.copyOf(jArr3, i17);
                this.f2275i1 = Arrays.copyOf(this.f2275i1, i17);
            }
            System.arraycopy(jArr2, 0, this.f2273h1, i8, length2);
            System.arraycopy(this.f2279k1, 0, this.f2275i1, i8, length2);
            long[] jArr4 = this.f2273h1;
            boolean[] zArr3 = this.f2275i1;
            if (i17 != 0 && (jArr4 == null || zArr3 == null)) {
                z7 = false;
            }
            H1.d(z7);
            c0140e.f2178v0 = i17;
            c0140e.f2179w0 = jArr4;
            c0140e.f2180x0 = zArr3;
            c0140e.e();
        }
        s();
    }

    public final void x() {
        C0145j c0145j = this.f2247T;
        c0145j.getClass();
        c0145j.f2212I = Collections.emptyList();
        C0145j c0145j2 = this.f2249U;
        c0145j2.getClass();
        c0145j2.f2212I = Collections.emptyList();
        Y y7 = this.f2252V0;
        boolean z7 = true;
        ImageView imageView = this.f2280l0;
        if (y7 != null && ((AbstractC3123f) y7).c(30) && ((AbstractC3123f) this.f2252V0).c(29)) {
            m0 m0VarY = ((B0.O) this.f2252V0).y();
            c0145j2.h(f(m0VarY, 1));
            if (this.f2221G.c(imageView)) {
                c0145j.h(f(m0VarY, 3));
            } else {
                c0145j.h(z4.d0.f31844K);
            }
        }
        n(imageView, c0145j.a() > 0);
        C0152q c0152q = this.f2243R;
        if (!c0152q.g(1) && !c0152q.g(0)) {
            z7 = false;
        }
        n(this.f2285o0, z7);
    }

    public void setProgressUpdateListener(InterfaceC0150o interfaceC0150o) {
    }
}
