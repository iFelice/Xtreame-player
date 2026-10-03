package androidx.media3.ui;

import B0.C0072w;
import B0.L;
import B0.O;
import B0.z0;
import D1.B;
import D1.C0156v;
import D1.D;
import D1.E;
import D1.F;
import D1.H;
import D1.I;
import D1.InterfaceC0136a;
import D1.InterfaceC0147l;
import D1.InterfaceC0155u;
import U0.A;
import U0.z;
import V0.k;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.SurfaceSyncGroup;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.ui.PlayerView;
import com.google.android.gms.internal.measurement.H1;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import p094m0.AbstractC3123f;
import p094m0.C3118a;
import p094m0.InterfaceC3133p;
import p094m0.Y;
import p094m0.w0;
import p117p0.x;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class PlayerView extends FrameLayout {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final /* synthetic */ int f9478p0 = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final D f9479G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AspectRatioFrameLayout f9480H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final View f9481I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final View f9482J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f9483K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final H f9484L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final ImageView f9485M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final ImageView f9486N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final SubtitleView f9487O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final View f9488P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final TextView f9489Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final C0156v f9490R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final FrameLayout f9491S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final FrameLayout f9492T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final Handler f9493U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final Class f9494V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final Method f9495W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Object f9496a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Y f9497b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f9498c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public InterfaceC0155u f9499d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f9500e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f9501f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public Drawable f9502g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f9503h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f9504i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public CharSequence f9505j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f9506k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f9507l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f9508m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f9509n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f9510o0;

    public PlayerView(Context context, AttributeSet attributeSet) {
        int i8;
        boolean z7;
        boolean z8;
        boolean z9;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z10;
        int i15;
        boolean z11;
        int i16;
        boolean z12;
        boolean z13;
        Class<ExoPlayer> cls;
        Object objNewProxyInstance;
        Method method;
        super(context, attributeSet, 0);
        D d6 = new D(this);
        this.f9479G = d6;
        this.f9493U = new Handler(Looper.getMainLooper());
        if (isInEditMode()) {
            this.f9480H = null;
            this.f9481I = null;
            this.f9482J = null;
            this.f9483K = false;
            this.f9484L = null;
            this.f9485M = null;
            this.f9486N = null;
            this.f9487O = null;
            this.f9488P = null;
            this.f9489Q = null;
            this.f9490R = null;
            this.f9491S = null;
            this.f9492T = null;
            this.f9494V = null;
            this.f9495W = null;
            this.f9496a0 = null;
            ImageView imageView = new ImageView(context);
            if (Build.VERSION.SDK_INT >= 23) {
                Resources resources = getResources();
                imageView.setImageDrawable(resources.getDrawable(R.drawable.exo_edit_mode_logo, context.getTheme()));
                imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
            } else {
                Resources resources2 = getResources();
                imageView.setImageDrawable(resources2.getDrawable(R.drawable.exo_edit_mode_logo, context.getTheme()));
                imageView.setBackgroundColor(resources2.getColor(R.color.exo_edit_mode_background_color));
            }
            addView(imageView);
            return;
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, I.f2068d, 0, 0);
            try {
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(42);
                int color = typedArrayObtainStyledAttributes.getColor(42, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(22, R.layout.exo_player_view);
                boolean z14 = typedArrayObtainStyledAttributes.getBoolean(50, true);
                int i17 = typedArrayObtainStyledAttributes.getInt(3, 1);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(9, 0);
                int i18 = typedArrayObtainStyledAttributes.getInt(15, 0);
                boolean z15 = typedArrayObtainStyledAttributes.getBoolean(51, true);
                int i19 = typedArrayObtainStyledAttributes.getInt(45, 1);
                int i20 = typedArrayObtainStyledAttributes.getInt(28, 0);
                i15 = typedArrayObtainStyledAttributes.getInt(38, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                boolean z16 = typedArrayObtainStyledAttributes.getBoolean(14, true);
                boolean z17 = typedArrayObtainStyledAttributes.getBoolean(4, true);
                int integer = typedArrayObtainStyledAttributes.getInteger(35, 0);
                this.f9504i0 = typedArrayObtainStyledAttributes.getBoolean(16, this.f9504i0);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(13, true);
                typedArrayObtainStyledAttributes.recycle();
                i11 = i18;
                z7 = z16;
                i9 = integer;
                i16 = i17;
                z10 = zHasValue;
                i13 = i19;
                i10 = resourceId2;
                z9 = z18;
                i8 = i20;
                z11 = z14;
                i14 = color;
                i12 = resourceId;
                z12 = z15;
                z8 = z17;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i8 = 0;
            z7 = true;
            z8 = true;
            z9 = true;
            i9 = 0;
            i10 = 0;
            i11 = 0;
            i12 = R.layout.exo_player_view;
            i13 = 1;
            i14 = 0;
            z10 = false;
            i15 = DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT;
            z11 = true;
            i16 = 1;
            z12 = true;
        }
        LayoutInflater.from(context).inflate(i12, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        this.f9480H = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(i8);
        }
        View viewFindViewById = findViewById(R.id.exo_shutter);
        this.f9481I = viewFindViewById;
        if (viewFindViewById != null && z10) {
            viewFindViewById.setBackgroundColor(i14);
        }
        if (aspectRatioFrameLayout == null || i13 == 0) {
            this.f9482J = null;
            z13 = false;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i13 != 2) {
                if (i13 == 3) {
                    try {
                        int i21 = k.f7064R;
                        this.f9482J = (View) k.class.getConstructor(Context.class).newInstance(context);
                        z13 = true;
                    } catch (Exception e8) {
                        throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e8);
                    }
                } else if (i13 != 4) {
                    SurfaceView surfaceView = new SurfaceView(context);
                    if (Build.VERSION.SDK_INT >= 34) {
                        surfaceView.setSurfaceLifecycle(2);
                    }
                    this.f9482J = surfaceView;
                } else {
                    try {
                        int i22 = z.f6896H;
                        this.f9482J = (View) z.class.getConstructor(Context.class).newInstance(context);
                    } catch (Exception e9) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e9);
                    }
                }
                this.f9482J.setLayoutParams(layoutParams);
                this.f9482J.setOnClickListener(d6);
                this.f9482J.setClickable(false);
                aspectRatioFrameLayout.addView(this.f9482J, 0);
            } else {
                this.f9482J = new TextureView(context);
            }
            z13 = false;
            this.f9482J.setLayoutParams(layoutParams);
            this.f9482J.setOnClickListener(d6);
            this.f9482J.setClickable(false);
            aspectRatioFrameLayout.addView(this.f9482J, 0);
        }
        this.f9483K = z13;
        this.f9484L = Build.VERSION.SDK_INT == 34 ? new H() : null;
        this.f9491S = (FrameLayout) findViewById(R.id.exo_ad_overlay);
        this.f9492T = (FrameLayout) findViewById(R.id.exo_overlay);
        this.f9485M = (ImageView) findViewById(R.id.exo_image);
        this.f9501f0 = i11;
        try {
            cls = ExoPlayer.class;
            Class<?>[] clsArr = new Class[1];
            try {
                clsArr[0] = ImageOutput.class;
                method = cls.getMethod("setImageOutput", clsArr);
                objNewProxyInstance = Proxy.newProxyInstance(ImageOutput.class.getClassLoader(), new Class[]{ImageOutput.class}, new InvocationHandler() { // from class: D1.C
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method2, Object[] objArr) {
                        int i23 = PlayerView.f9478p0;
                        PlayerView playerView = this.f2059a;
                        playerView.getClass();
                        if (!method2.getName().equals("onImageAvailable")) {
                            return null;
                        }
                        playerView.f9493U.post(new U0.r(5, playerView, (Bitmap) objArr[1]));
                        return null;
                    }
                });
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
                cls = null;
                objNewProxyInstance = null;
                method = null;
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused2) {
        }
        this.f9494V = cls;
        this.f9495W = method;
        this.f9496a0 = objNewProxyInstance;
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_artwork);
        this.f9486N = imageView2;
        this.f9500e0 = (!z11 || i16 == 0 || imageView2 == null) ? 0 : i16;
        if (i10 != 0) {
            this.f9502g0 = getContext().getDrawable(i10);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        this.f9487O = subtitleView;
        if (subtitleView != null) {
            subtitleView.a();
            subtitleView.b();
        }
        View viewFindViewById2 = findViewById(R.id.exo_buffering);
        this.f9488P = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.f9503h0 = i9;
        TextView textView = (TextView) findViewById(R.id.exo_error_message);
        this.f9489Q = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        C0156v c0156v = (C0156v) findViewById(R.id.exo_controller);
        View viewFindViewById3 = findViewById(R.id.exo_controller_placeholder);
        if (c0156v != null) {
            this.f9490R = c0156v;
        } else if (viewFindViewById3 != null) {
            C0156v c0156v2 = new C0156v(context, attributeSet);
            this.f9490R = c0156v2;
            c0156v2.setId(R.id.exo_controller);
            c0156v2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(c0156v2, iIndexOfChild);
        } else {
            this.f9490R = null;
        }
        C0156v c0156v3 = this.f9490R;
        this.f9506k0 = c0156v3 != null ? i15 : 0;
        this.f9509n0 = z7;
        this.f9507l0 = z8;
        this.f9508m0 = z9;
        this.f9498c0 = z12 && c0156v3 != null;
        if (c0156v3 != null) {
            B b8 = c0156v3.f2221G;
            int i23 = b8.f2058z;
            if (i23 != 3 && i23 != 2) {
                b8.g();
                b8.j(2);
            }
            C0156v c0156v4 = this.f9490R;
            D d8 = this.f9479G;
            c0156v4.getClass();
            d8.getClass();
            c0156v4.f2239P.add(d8);
        }
        if (z12) {
            setClickable(true);
        }
        m();
    }

    public static void a(PlayerView playerView, Bitmap bitmap) {
        playerView.getClass();
        playerView.setImage(new BitmapDrawable(playerView.getResources(), bitmap));
        if (playerView.c()) {
            return;
        }
        ImageView imageView = playerView.f9485M;
        if (imageView != null) {
            imageView.setVisibility(0);
            playerView.p();
        }
        View view = playerView.f9481I;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private void setImage(Drawable drawable) {
        ImageView imageView = this.f9485M;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        p();
    }

    private void setImageOutput(Y y7) {
        Class cls = this.f9494V;
        if (cls == null || !cls.isAssignableFrom(y7.getClass())) {
            return;
        }
        try {
            Method method = this.f9495W;
            method.getClass();
            Object obj = this.f9496a0;
            obj.getClass();
            method.invoke(y7, obj);
        } catch (IllegalAccessException | InvocationTargetException e8) {
            throw new RuntimeException(e8);
        }
    }

    public final boolean b() {
        Y y7 = this.f9497b0;
        return y7 != null && this.f9496a0 != null && ((AbstractC3123f) y7).c(30) && ((O) y7).y().b(4);
    }

    public final boolean c() {
        Y y7 = this.f9497b0;
        return y7 != null && ((AbstractC3123f) y7).c(30) && ((O) y7).y().b(2);
    }

    public final void d() {
        ImageView imageView = this.f9485M;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        H h8;
        SurfaceSyncGroup surfaceSyncGroup;
        super.dispatchDraw(canvas);
        if (Build.VERSION.SDK_INT != 34 || (h8 = this.f9484L) == null || !this.f9510o0 || (surfaceSyncGroup = h8.f2064a) == null) {
            return;
        }
        surfaceSyncGroup.markSyncReady();
        h8.f2064a = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Y y7 = this.f9497b0;
        if (y7 != null && ((AbstractC3123f) y7).c(16) && ((O) this.f9497b0).F()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z7 = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
        C0156v c0156v = this.f9490R;
        if (z7 && q() && !c0156v.j()) {
            f(true);
        } else {
            if ((!q() || !c0156v.d(keyEvent)) && !super.dispatchKeyEvent(keyEvent)) {
                if (!z7 || !q()) {
                    return false;
                }
                f(true);
                return false;
            }
            f(true);
        }
        return true;
    }

    public final boolean e() {
        Y y7 = this.f9497b0;
        return y7 != null && ((AbstractC3123f) y7).c(16) && ((O) this.f9497b0).F() && ((O) this.f9497b0).B();
    }

    public final void f(boolean z7) {
        if (!(e() && this.f9508m0) && q()) {
            C0156v c0156v = this.f9490R;
            boolean z8 = c0156v.j() && c0156v.getShowTimeoutMs() <= 0;
            boolean zH = h();
            if (z7 || z8 || zH) {
                i(zH);
            }
        }
    }

    public final boolean g(Drawable drawable) {
        ImageView imageView = this.f9486N;
        if (imageView != null && drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float width = intrinsicWidth / intrinsicHeight;
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                if (this.f9500e0 == 2) {
                    width = getWidth() / getHeight();
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                }
                AspectRatioFrameLayout aspectRatioFrameLayout = this.f9480H;
                if (aspectRatioFrameLayout != null) {
                    aspectRatioFrameLayout.setAspectRatio(width);
                }
                imageView.setScaleType(scaleType);
                imageView.setImageDrawable(drawable);
                imageView.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    public List<C3118a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f9492T;
        if (frameLayout != null) {
            arrayList.add(new C3118a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        C0156v c0156v = this.f9490R;
        if (c0156v != null) {
            arrayList.add(new C3118a(c0156v, 1, null));
        }
        return z4.H.s(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.f9491S;
        H1.k(frameLayout, "exo_ad_overlay must be present for ad playback");
        return frameLayout;
    }

    public int getArtworkDisplayMode() {
        return this.f9500e0;
    }

    public boolean getControllerAutoShow() {
        return this.f9507l0;
    }

    public boolean getControllerHideOnTouch() {
        return this.f9509n0;
    }

    public int getControllerShowTimeoutMs() {
        return this.f9506k0;
    }

    public Drawable getDefaultArtwork() {
        return this.f9502g0;
    }

    public int getImageDisplayMode() {
        return this.f9501f0;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.f9492T;
    }

    public Y getPlayer() {
        return this.f9497b0;
    }

    public int getResizeMode() {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f9480H;
        H1.j(aspectRatioFrameLayout);
        return aspectRatioFrameLayout.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f9487O;
    }

    @Deprecated
    public boolean getUseArtwork() {
        return this.f9500e0 != 0;
    }

    public boolean getUseController() {
        return this.f9498c0;
    }

    public View getVideoSurfaceView() {
        return this.f9482J;
    }

    public final boolean h() {
        Y y7 = this.f9497b0;
        if (y7 == null) {
            return true;
        }
        int iC = ((O) y7).C();
        if (this.f9507l0 && (!((AbstractC3123f) this.f9497b0).c(17) || !((O) this.f9497b0).x().q())) {
            if (iC == 1 || iC == 4) {
                return true;
            }
            Y y8 = this.f9497b0;
            y8.getClass();
            if (!((O) y8).B()) {
                return true;
            }
        }
        return false;
    }

    public final void i(boolean z7) {
        if (q()) {
            int i8 = z7 ? 0 : this.f9506k0;
            C0156v c0156v = this.f9490R;
            c0156v.setShowTimeoutMs(i8);
            B b8 = c0156v.f2221G;
            C0156v c0156v2 = b8.f2033a;
            if (!c0156v2.l()) {
                c0156v2.setVisibility(0);
                c0156v2.m();
                ImageView imageView = c0156v2.f2264d0;
                if (imageView != null) {
                    imageView.requestFocus();
                }
            }
            b8.l();
        }
    }

    public final void j() {
        if (!q() || this.f9497b0 == null) {
            return;
        }
        C0156v c0156v = this.f9490R;
        if (!c0156v.j()) {
            f(true);
        } else if (this.f9509n0) {
            c0156v.g();
        }
    }

    public final void k() {
        w0 w0Var;
        Y y7 = this.f9497b0;
        if (y7 != null) {
            O o4 = (O) y7;
            o4.c0();
            w0Var = o4.f774L0;
        } else {
            w0Var = w0.f27062d;
        }
        int i8 = w0Var.f27063a;
        int i9 = w0Var.f27064b;
        float f8 = this.f9483K ? 0.0f : (i9 == 0 || i8 == 0) ? 0.0f : (i8 * w0Var.f27065c) / i9;
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f9480H;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0024  */
    public final void l() {
        boolean z7;
        View view = this.f9488P;
        if (view != null) {
            Y y7 = this.f9497b0;
            if (y7 == null || ((O) y7).C() != 2) {
                z7 = false;
            } else {
                int i8 = this.f9503h0;
                z7 = true;
                if (i8 != 2 && (i8 != 1 || !((O) this.f9497b0).B())) {
                    z7 = false;
                }
            }
            view.setVisibility(z7 ? 0 : 8);
        }
    }

    public final void m() {
        C0156v c0156v = this.f9490R;
        if (c0156v == null || !this.f9498c0) {
            setContentDescription(null);
        } else if (c0156v.j()) {
            setContentDescription(this.f9509n0 ? getResources().getString(R.string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R.string.exo_controls_show));
        }
    }

    public final void n() {
        TextView textView = this.f9489Q;
        if (textView != null) {
            CharSequence charSequence = this.f9505j0;
            if (charSequence != null) {
                textView.setText(charSequence);
                textView.setVisibility(0);
                return;
            }
            Y y7 = this.f9497b0;
            if (y7 != null) {
                O o4 = (O) y7;
                o4.c0();
                C0072w c0072w = o4.f778N0.f1097f;
            }
            textView.setVisibility(8);
        }
    }

    public final void o(boolean z7) {
        Drawable drawable;
        Y y7 = this.f9497b0;
        boolean z8 = (y7 == null || !((AbstractC3123f) y7).c(30) || ((O) y7).y().f26959a.isEmpty()) ? false : true;
        boolean z9 = this.f9504i0;
        ImageView imageView = this.f9486N;
        View view = this.f9481I;
        if (!z9 && (!z8 || z7)) {
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
            if (view != null) {
                view.setVisibility(0);
            }
            d();
        }
        if (z8) {
            boolean zC = c();
            boolean zB = b();
            if (!zC && !zB) {
                if (view != null) {
                    view.setVisibility(0);
                }
                d();
            }
            ImageView imageView2 = this.f9485M;
            boolean z10 = (view == null || view.getVisibility() != 4 || imageView2 == null || (drawable = imageView2.getDrawable()) == null || drawable.getAlpha() == 0) ? false : true;
            if (zB && !zC && z10) {
                if (view != null) {
                    view.setVisibility(0);
                }
                if (imageView2 != null) {
                    imageView2.setVisibility(0);
                    p();
                }
            } else if (zC && !zB && z10) {
                d();
            }
            if (!zC && !zB && this.f9500e0 != 0) {
                H1.j(imageView);
                if (y7 != null && ((AbstractC3123f) y7).c(18)) {
                    O o4 = (O) y7;
                    o4.c0();
                    byte[] bArr = o4.f813u0.f26759i;
                    if (bArr != null) {
                        if (g(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)))) {
                            return;
                        }
                    }
                }
                if (g(this.f9502g0)) {
                    return;
                }
            }
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
        }
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!q() || this.f9497b0 == null) {
            return false;
        }
        f(true);
        return true;
    }

    public final void p() {
        Drawable drawable;
        AspectRatioFrameLayout aspectRatioFrameLayout;
        ImageView imageView = this.f9485M;
        if (imageView == null || (drawable = imageView.getDrawable()) == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return;
        }
        float width = intrinsicWidth / intrinsicHeight;
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        if (this.f9501f0 == 1) {
            width = getWidth() / getHeight();
            scaleType = ImageView.ScaleType.CENTER_CROP;
        }
        if (imageView.getVisibility() == 0 && (aspectRatioFrameLayout = this.f9480H) != null) {
            aspectRatioFrameLayout.setAspectRatio(width);
        }
        imageView.setScaleType(scaleType);
    }

    @Override // android.view.View
    public final boolean performClick() {
        j();
        return super.performClick();
    }

    public final boolean q() {
        if (!this.f9498c0) {
            return false;
        }
        H1.j(this.f9490R);
        return true;
    }

    public void setArtworkDisplayMode(int i8) {
        H1.i(i8 == 0 || this.f9486N != null);
        if (this.f9500e0 != i8) {
            this.f9500e0 = i8;
            o(false);
        }
    }

    public void setAspectRatioListener(InterfaceC0136a interfaceC0136a) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f9480H;
        H1.j(aspectRatioFrameLayout);
        aspectRatioFrameLayout.setAspectRatioListener(interfaceC0136a);
    }

    public void setControllerAnimationEnabled(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setAnimationEnabled(z7);
    }

    public void setControllerAutoShow(boolean z7) {
        this.f9507l0 = z7;
    }

    public void setControllerHideDuringAds(boolean z7) {
        this.f9508m0 = z7;
    }

    public void setControllerHideOnTouch(boolean z7) {
        H1.j(this.f9490R);
        this.f9509n0 = z7;
        m();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(InterfaceC0147l interfaceC0147l) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setOnFullScreenModeChangedListener(interfaceC0147l);
    }

    public void setControllerShowTimeoutMs(int i8) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        this.f9506k0 = i8;
        if (c0156v.j()) {
            i(h());
        }
    }

    public void setControllerVisibilityListener(E e8) {
        if (e8 != null) {
            setControllerVisibilityListener((InterfaceC0155u) null);
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        H1.i(this.f9489Q != null);
        this.f9505j0 = charSequence;
        n();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.f9502g0 != drawable) {
            this.f9502g0 = drawable;
            o(false);
        }
    }

    public void setEnableComposeSurfaceSyncWorkaround(boolean z7) {
        this.f9510o0 = z7;
    }

    public void setErrorMessageProvider(InterfaceC3133p interfaceC3133p) {
        if (interfaceC3133p != null) {
            n();
        }
    }

    public void setFullscreenButtonClickListener(F f8) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setOnFullScreenModeChangedListener(this.f9479G);
    }

    public void setFullscreenButtonState(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.o(z7);
    }

    public void setImageDisplayMode(int i8) {
        H1.i(this.f9485M != null);
        if (this.f9501f0 != i8) {
            this.f9501f0 = i8;
            p();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z7) {
        if (this.f9504i0 != z7) {
            this.f9504i0 = z7;
            o(false);
        }
    }

    public void setPlayer(Y y7) {
        H1.i(Looper.myLooper() == Looper.getMainLooper());
        H1.d(y7 == null || ((O) y7).f791Y == Looper.getMainLooper());
        Y y8 = this.f9497b0;
        if (y8 == y7) {
            return;
        }
        View view = this.f9482J;
        D d6 = this.f9479G;
        if (y8 != null) {
            O o4 = (O) y8;
            o4.M(d6);
            if (((AbstractC3123f) y8).c(27)) {
                if (view instanceof TextureView) {
                    TextureView textureView = (TextureView) view;
                    o4.c0();
                    if (textureView != null && textureView == o4.f758A0) {
                        o4.o();
                    }
                } else if (view instanceof SurfaceView) {
                    SurfaceView surfaceView = (SurfaceView) view;
                    o4.c0();
                    SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
                    o4.c0();
                    if (holder != null && holder == o4.f816x0) {
                        o4.o();
                    }
                }
            }
            Class cls = this.f9494V;
            if (cls != null && cls.isAssignableFrom(y8.getClass())) {
                try {
                    Method method = this.f9495W;
                    method.getClass();
                    method.invoke(y8, null);
                } catch (IllegalAccessException | InvocationTargetException e8) {
                    throw new RuntimeException(e8);
                }
            }
        }
        SubtitleView subtitleView = this.f9487O;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f9497b0 = y7;
        boolean zQ = q();
        C0156v c0156v = this.f9490R;
        if (zQ) {
            c0156v.setPlayer(y7);
        }
        l();
        n();
        o(true);
        if (y7 == null) {
            if (c0156v != null) {
                c0156v.g();
                return;
            }
            return;
        }
        AbstractC3123f abstractC3123f = (AbstractC3123f) y7;
        if (abstractC3123f.c(27)) {
            if (view instanceof TextureView) {
                TextureView textureView2 = (TextureView) view;
                O o7 = (O) y7;
                o7.c0();
                if (textureView2 == null) {
                    o7.o();
                } else {
                    o7.N();
                    o7.f758A0 = textureView2;
                    if (textureView2.getSurfaceTextureListener() != null) {
                        x.f("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
                    }
                    textureView2.setSurfaceTextureListener(o7.f796d0);
                    SurfaceTexture surfaceTexture = textureView2.isAvailable() ? textureView2.getSurfaceTexture() : null;
                    if (surfaceTexture == null) {
                        o7.V(null);
                        o7.J(0, 0);
                    } else {
                        Surface surface = new Surface(surfaceTexture);
                        o7.V(surface);
                        o7.f815w0 = surface;
                        o7.J(textureView2.getWidth(), textureView2.getHeight());
                    }
                }
            } else if (view instanceof SurfaceView) {
                SurfaceView surfaceView2 = (SurfaceView) view;
                O o8 = (O) y7;
                o8.c0();
                if (surfaceView2 instanceof A) {
                    o8.N();
                    o8.V(surfaceView2);
                    o8.R(surfaceView2.getHolder());
                } else {
                    boolean z7 = surfaceView2 instanceof k;
                    L l4 = o8.f796d0;
                    if (z7) {
                        o8.N();
                        o8.f817y0 = (k) surfaceView2;
                        z0 z0VarP = o8.p(o8.f797e0);
                        H1.i(!z0VarP.f1156f);
                        z0VarP.f1153c = 10000;
                        k kVar = o8.f817y0;
                        H1.i(true ^ z0VarP.f1156f);
                        z0VarP.f1154d = kVar;
                        z0VarP.b();
                        o8.f817y0.f7065G.add(l4);
                        o8.V(o8.f817y0.getVideoSurface());
                        o8.R(surfaceView2.getHolder());
                    } else {
                        SurfaceHolder holder2 = surfaceView2 == null ? null : surfaceView2.getHolder();
                        o8.c0();
                        if (holder2 == null) {
                            o8.o();
                        } else {
                            o8.N();
                            o8.f818z0 = true;
                            o8.f816x0 = holder2;
                            holder2.addCallback(l4);
                            Surface surface2 = holder2.getSurface();
                            if (surface2 == null || !surface2.isValid()) {
                                o8.V(null);
                                o8.J(0, 0);
                            } else {
                                o8.V(surface2);
                                Rect surfaceFrame = holder2.getSurfaceFrame();
                                o8.J(surfaceFrame.width(), surfaceFrame.height());
                            }
                        }
                    }
                }
            }
            if (!abstractC3123f.c(30) || ((O) y7).y().c()) {
                k();
            }
        }
        if (subtitleView != null && abstractC3123f.c(28)) {
            O o9 = (O) y7;
            o9.c0();
            subtitleView.setCues(o9.f764G0.f27655a);
        }
        d6.getClass();
        ((O) y7).f785S.a(d6);
        setImageOutput(y7);
        f(false);
    }

    public void setRepeatToggleModes(int i8) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setRepeatToggleModes(i8);
    }

    public void setResizeMode(int i8) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f9480H;
        H1.j(aspectRatioFrameLayout);
        aspectRatioFrameLayout.setResizeMode(i8);
    }

    public void setShowBuffering(int i8) {
        if (this.f9503h0 != i8) {
            this.f9503h0 = i8;
            l();
        }
    }

    public void setShowFastForwardButton(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setShowFastForwardButton(z7);
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setShowMultiWindowTimeBar(z7);
    }

    public void setShowNextButton(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setShowNextButton(z7);
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setShowPlayButtonIfPlaybackIsSuppressed(z7);
    }

    public void setShowPreviousButton(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setShowPreviousButton(z7);
    }

    public void setShowRewindButton(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setShowRewindButton(z7);
    }

    public void setShowShuffleButton(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setShowShuffleButton(z7);
    }

    public void setShowSubtitleButton(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setShowSubtitleButton(z7);
    }

    public void setShowVrButton(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setShowVrButton(z7);
    }

    public void setShutterBackgroundColor(int i8) {
        View view = this.f9481I;
        if (view != null) {
            view.setBackgroundColor(i8);
        }
    }

    public void setTimeBarScrubbingEnabled(boolean z7) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        c0156v.setTimeBarScrubbingEnabled(z7);
    }

    @Deprecated
    public void setUseArtwork(boolean z7) {
        setArtworkDisplayMode(!z7 ? 1 : 0);
    }

    public void setUseController(boolean z7) {
        boolean z8 = true;
        C0156v c0156v = this.f9490R;
        H1.i((z7 && c0156v == null) ? false : true);
        if (!z7 && !hasOnClickListeners()) {
            z8 = false;
        }
        setClickable(z8);
        if (this.f9498c0 == z7) {
            return;
        }
        this.f9498c0 = z7;
        if (q()) {
            c0156v.setPlayer(this.f9497b0);
        } else if (c0156v != null) {
            c0156v.g();
            c0156v.setPlayer(null);
        }
        m();
    }

    @Override // android.view.View
    public void setVisibility(int i8) {
        super.setVisibility(i8);
        View view = this.f9482J;
        if (view instanceof SurfaceView) {
            view.setVisibility(i8);
        }
    }

    @Deprecated
    public void setControllerVisibilityListener(InterfaceC0155u interfaceC0155u) {
        C0156v c0156v = this.f9490R;
        H1.j(c0156v);
        InterfaceC0155u interfaceC0155u2 = this.f9499d0;
        if (interfaceC0155u2 == interfaceC0155u) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = c0156v.f2239P;
        if (interfaceC0155u2 != null) {
            copyOnWriteArrayList.remove(interfaceC0155u2);
        }
        this.f9499d0 = interfaceC0155u;
        if (interfaceC0155u != null) {
            copyOnWriteArrayList.add(interfaceC0155u);
            setControllerVisibilityListener((E) null);
        }
    }
}
