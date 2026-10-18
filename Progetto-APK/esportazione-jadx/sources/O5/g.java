package O5;

import B0.M0;
import B0.w0;
import Z3.C0433o;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.journeyapps.barcodescanner.BarcodeView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g extends ViewGroup {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final /* synthetic */ int f5577i0 = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public P5.f f5578G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final WindowManager f5579H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Handler f5580I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f5581J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public SurfaceView f5582K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public TextureView f5583L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f5584M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final w0 f5585N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f5586O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ArrayList f5587P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public P5.l f5588Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public P5.i f5589R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public t f5590S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public t f5591T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public Rect f5592U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public t f5593V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public Rect f5594W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Rect f5595a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public t f5596b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public double f5597c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public P5.o f5598d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f5599e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final d f5600f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final C0433o f5601g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final e f5602h0;

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i8 = 0;
        this.f5581J = false;
        this.f5584M = false;
        this.f5586O = -1;
        this.f5587P = new ArrayList();
        this.f5589R = new P5.i();
        this.f5594W = null;
        this.f5595a0 = null;
        this.f5596b0 = null;
        this.f5597c0 = 0.1d;
        this.f5598d0 = null;
        this.f5599e0 = false;
        this.f5600f0 = new d(this, 0);
        H2.g gVar = new H2.g(this, 4);
        this.f5601g0 = new C0433o(this, 21);
        this.f5602h0 = new e(this, 0);
        if (getBackground() == null) {
            setBackgroundColor(-16777216);
        }
        b(attributeSet);
        this.f5579H = (WindowManager) context.getSystemService("window");
        this.f5580I = new Handler(gVar);
        this.f5585N = new w0(12, i8);
    }

    public static void a(g gVar) {
        if (gVar.f5578G == null || gVar.getDisplayRotation() == gVar.f5586O) {
            return;
        }
        gVar.c();
        gVar.d();
    }

    private int getDisplayRotation() {
        return this.f5579H.getDefaultDisplay().getRotation();
    }

    public final void b(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, p161u5.h.f30524a);
        int dimension = (int) typedArrayObtainStyledAttributes.getDimension(1, -1.0f);
        int dimension2 = (int) typedArrayObtainStyledAttributes.getDimension(0, -1.0f);
        if (dimension > 0 && dimension2 > 0) {
            this.f5596b0 = new t(dimension, dimension2);
        }
        this.f5581J = typedArrayObtainStyledAttributes.getBoolean(3, true);
        int integer = typedArrayObtainStyledAttributes.getInteger(2, -1);
        if (integer == 1) {
            this.f5598d0 = new P5.k();
        } else if (integer == 2) {
            this.f5598d0 = new P5.m();
        } else if (integer == 3) {
            this.f5598d0 = new P5.n();
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public abstract void c();

    public final void d() {
        a7.b.j();
        Log.d("g", "resume()");
        if (this.f5578G != null) {
            Log.w("g", "initCamera called twice");
        } else {
            Context context = getContext();
            P5.f fVar = new P5.f();
            fVar.f5937f = false;
            fVar.f5938g = true;
            fVar.f5940i = new P5.i();
            P5.e eVar = new P5.e(fVar, 0);
            fVar.f5941j = new P5.e(fVar, 1);
            fVar.f5942k = new P5.e(fVar, 2);
            fVar.f5943l = new P5.e(fVar, 3);
            a7.b.j();
            if (P5.j.f5961e == null) {
                P5.j.f5961e = new P5.j();
            }
            P5.j jVar = P5.j.f5961e;
            fVar.f5932a = jVar;
            P5.h hVar = new P5.h(context);
            fVar.f5934c = hVar;
            hVar.f5954g = fVar.f5940i;
            fVar.f5939h = new Handler();
            P5.i iVar = this.f5589R;
            if (!fVar.f5937f) {
                fVar.f5940i = iVar;
                hVar.f5954g = iVar;
            }
            this.f5578G = fVar;
            fVar.f5935d = this.f5580I;
            a7.b.j();
            fVar.f5937f = true;
            fVar.f5938g = false;
            synchronized (jVar.f5965d) {
                jVar.f5964c++;
                jVar.b(eVar);
            }
            this.f5586O = getDisplayRotation();
        }
        if (this.f5593V != null) {
            f();
        } else {
            SurfaceView surfaceView = this.f5582K;
            if (surfaceView != null) {
                surfaceView.getHolder().addCallback(this.f5600f0);
            } else {
                TextureView textureView = this.f5583L;
                if (textureView != null) {
                    if (textureView.isAvailable()) {
                        this.f5583L.getSurfaceTexture();
                        this.f5593V = new t(this.f5583L.getWidth(), this.f5583L.getHeight());
                        f();
                    } else {
                        this.f5583L.setSurfaceTextureListener(new c(this));
                    }
                }
            }
        }
        requestLayout();
        w0 w0Var = this.f5585N;
        Context context2 = getContext();
        C0433o c0433o = this.f5601g0;
        OrientationEventListener orientationEventListener = (OrientationEventListener) w0Var.f1122J;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
        w0Var.f1122J = null;
        w0Var.f1121I = null;
        w0Var.f1123K = null;
        Context applicationContext = context2.getApplicationContext();
        w0Var.f1123K = c0433o;
        w0Var.f1121I = (WindowManager) applicationContext.getSystemService("window");
        s sVar = new s(w0Var, applicationContext);
        w0Var.f1122J = sVar;
        sVar.enable();
        w0Var.f1120H = ((WindowManager) w0Var.f1121I).getDefaultDisplay().getRotation();
    }

    public final void e(x0 x0Var) {
        if (this.f5584M || this.f5578G == null) {
            return;
        }
        Log.i("g", "Starting preview");
        P5.f fVar = this.f5578G;
        fVar.f5933b = x0Var;
        a7.b.j();
        if (!fVar.f5937f) {
            throw new IllegalStateException("CameraInstance is not open");
        }
        fVar.f5932a.b(fVar.f5942k);
        this.f5584M = true;
        ((BarcodeView) this).h();
        this.f5602h0.d();
    }

    public final void f() {
        Rect rect;
        float f8;
        t tVar = this.f5593V;
        if (tVar == null || this.f5591T == null || (rect = this.f5592U) == null) {
            return;
        }
        if (this.f5582K != null && tVar.equals(new t(rect.width(), this.f5592U.height()))) {
            e(new x0(this.f5582K.getHolder()));
            return;
        }
        TextureView textureView = this.f5583L;
        if (textureView == null || textureView.getSurfaceTexture() == null) {
            return;
        }
        if (this.f5591T != null) {
            int width = this.f5583L.getWidth();
            int height = this.f5583L.getHeight();
            t tVar2 = this.f5591T;
            float f9 = height;
            float f10 = width / f9;
            float f11 = tVar2.f5638G / tVar2.f5639H;
            float f12 = 1.0f;
            if (f10 < f11) {
                f12 = f11 / f10;
                f8 = 1.0f;
            } else {
                f8 = f10 / f11;
            }
            Matrix matrix = new Matrix();
            matrix.setScale(f12, f8);
            float f13 = width;
            matrix.postTranslate((f13 - (f12 * f13)) / 2.0f, (f9 - (f8 * f9)) / 2.0f);
            this.f5583L.setTransform(matrix);
        }
        e(new x0(this.f5583L.getSurfaceTexture()));
    }

    public P5.f getCameraInstance() {
        return this.f5578G;
    }

    public P5.i getCameraSettings() {
        return this.f5589R;
    }

    public Rect getFramingRect() {
        return this.f5594W;
    }

    public t getFramingRectSize() {
        return this.f5596b0;
    }

    public double getMarginFraction() {
        return this.f5597c0;
    }

    public Rect getPreviewFramingRect() {
        return this.f5595a0;
    }

    public P5.o getPreviewScalingStrategy() {
        P5.o oVar = this.f5598d0;
        if (oVar != null) {
            return oVar;
        }
        return this.f5583L != null ? new P5.k() : new P5.m();
    }

    public t getPreviewSize() {
        return this.f5591T;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f5581J) {
            TextureView textureView = new TextureView(getContext());
            this.f5583L = textureView;
            textureView.setSurfaceTextureListener(new c(this));
            addView(this.f5583L);
            return;
        }
        SurfaceView surfaceView = new SurfaceView(getContext());
        this.f5582K = surfaceView;
        surfaceView.getHolder().addCallback(this.f5600f0);
        addView(this.f5582K);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        t tVar = new t(i10 - i8, i11 - i9);
        this.f5590S = tVar;
        P5.f fVar = this.f5578G;
        if (fVar != null && fVar.f5936e == null) {
            int displayRotation = getDisplayRotation();
            P5.l lVar = new P5.l();
            lVar.f5968c = new P5.m();
            lVar.f5967b = displayRotation;
            lVar.f5966a = tVar;
            this.f5588Q = lVar;
            lVar.f5968c = getPreviewScalingStrategy();
            P5.f fVar2 = this.f5578G;
            P5.l lVar2 = this.f5588Q;
            fVar2.f5936e = lVar2;
            fVar2.f5934c.f5955h = lVar2;
            a7.b.j();
            if (!fVar2.f5937f) {
                throw new IllegalStateException("CameraInstance is not open");
            }
            fVar2.f5932a.b(fVar2.f5941j);
            boolean z8 = this.f5599e0;
            if (z8) {
                P5.f fVar3 = this.f5578G;
                fVar3.getClass();
                a7.b.j();
                if (fVar3.f5937f) {
                    fVar3.f5932a.b(new M0(5, fVar3, z8));
                }
            }
        }
        SurfaceView surfaceView = this.f5582K;
        if (surfaceView == null) {
            TextureView textureView = this.f5583L;
            if (textureView != null) {
                textureView.layout(0, 0, getWidth(), getHeight());
                return;
            }
            return;
        }
        Rect rect = this.f5592U;
        if (rect == null) {
            surfaceView.layout(0, 0, getWidth(), getHeight());
        } else {
            surfaceView.layout(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("super"));
        setTorch(bundle.getBoolean("torch"));
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", parcelableOnSaveInstanceState);
        bundle.putBoolean("torch", this.f5599e0);
        return bundle;
    }

    public void setCameraSettings(P5.i iVar) {
        this.f5589R = iVar;
    }

    public void setFramingRectSize(t tVar) {
        this.f5596b0 = tVar;
    }

    public void setMarginFraction(double d6) {
        if (d6 >= 0.5d) {
            throw new IllegalArgumentException("The margin fraction must be less than 0.5");
        }
        this.f5597c0 = d6;
    }

    public void setPreviewScalingStrategy(P5.o oVar) {
        this.f5598d0 = oVar;
    }

    public void setTorch(boolean z7) {
        this.f5599e0 = z7;
        P5.f fVar = this.f5578G;
        if (fVar != null) {
            a7.b.j();
            if (fVar.f5937f) {
                fVar.f5932a.b(new M0(5, fVar, z7));
            }
        }
    }

    public void setUseTextureView(boolean z7) {
        this.f5581J = z7;
    }
}
