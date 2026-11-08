package p047g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import p000a.f;
import p102n0.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class h extends Drawable implements Drawable.Callback {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final /* synthetic */ int f25276S = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public g f25277G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Rect f25278H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Drawable f25279I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Drawable f25280J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f25281K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f25282L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f25283M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f25284N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public f f25285O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public long f25286P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public long f25287Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public f f25288R;

    /* JADX WARN: Code duplicated, block: B:14:0x003f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    /* JADX WARN: Code duplicated, block: B:18:0x0049  */
    /* JADX WARN: Code duplicated, block: B:19:0x0052  */
    /* JADX WARN: Code duplicated, block: B:20:0x0065  */
    /* JADX WARN: Code duplicated, block: B:23:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    public final void a(boolean z7) {
        boolean z8;
        Drawable drawable;
        long j8;
        boolean z9 = true;
        this.f25282L = true;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.f25279I;
        if (drawable2 != null) {
            long j9 = this.f25286P;
            if (j9 != 0) {
                if (j9 <= jUptimeMillis) {
                    drawable2.setAlpha(this.f25281K);
                    this.f25286P = 0L;
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j9 - jUptimeMillis) * 255)) / this.f25277G.f25274y)) * this.f25281K) / 255);
                    z8 = true;
                }
            }
            drawable = this.f25280J;
            if (drawable != null) {
                j8 = this.f25287Q;
                if (j8 == 0) {
                    if (j8 <= jUptimeMillis) {
                        drawable.setVisible(false, false);
                        this.f25280J = null;
                        this.f25287Q = 0L;
                    } else {
                        drawable.setAlpha(((((int) ((j8 - jUptimeMillis) * 255)) / this.f25277G.f25275z) * this.f25281K) / 255);
                    }
                }
                if (z7 || !z9) {
                }
                scheduleSelf(this.f25285O, jUptimeMillis + 16);
                return;
            }
            this.f25287Q = 0L;
            z9 = z8;
            if (z7) {
            }
        }
        this.f25286P = 0L;
        z8 = false;
        drawable = this.f25280J;
        if (drawable != null) {
            j8 = this.f25287Q;
            if (j8 == 0) {
                if (j8 <= jUptimeMillis) {
                    drawable.setVisible(false, false);
                    this.f25280J = null;
                    this.f25287Q = 0L;
                } else {
                    drawable.setAlpha(((((int) ((j8 - jUptimeMillis) * 255)) / this.f25277G.f25275z) * this.f25281K) / 255);
                }
            }
            if (z7) {
            }
        }
        this.f25287Q = 0L;
        z9 = z8;
        if (z7) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        g gVar = this.f25277G;
        if (theme == null) {
            gVar.getClass();
            return;
        }
        gVar.c();
        int i8 = gVar.f25257h;
        Drawable[] drawableArr = gVar.f25256g;
        for (int i9 = 0; i9 < i8; i9++) {
            Drawable drawable = drawableArr[i9];
            if (drawable != null && drawable.canApplyTheme()) {
                drawableArr[i9].applyTheme(theme);
                gVar.f25254e |= drawableArr[i9].getChangingConfigurations();
            }
        }
        Resources resources = theme.getResources();
        if (resources != null) {
            gVar.f25251b = resources;
            int i10 = resources.getDisplayMetrics().densityDpi;
            if (i10 == 0) {
                i10 = 160;
            }
            int i11 = gVar.f25252c;
            gVar.f25252c = i10;
            if (i11 != i10) {
                gVar.f25262m = false;
                gVar.f25259j = false;
            }
        }
    }

    public final void b(Drawable drawable) {
        if (this.f25288R == null) {
            this.f25288R = new f();
        }
        f fVar = this.f25288R;
        fVar.f25242H = drawable.getCallback();
        drawable.setCallback(fVar);
        try {
            if (this.f25277G.f25274y <= 0 && this.f25282L) {
                drawable.setAlpha(this.f25281K);
            }
            g gVar = this.f25277G;
            if (gVar.f25245C) {
                drawable.setColorFilter(gVar.f25244B);
            } else {
                if (gVar.f25248F) {
                    drawable.setTintList(gVar.f25246D);
                }
                g gVar2 = this.f25277G;
                if (gVar2.f25249G) {
                    drawable.setTintMode(gVar2.f25247E);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f25277G.f25272w);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                c.l(drawable, c.g(this));
            }
            drawable.setAutoMirrored(this.f25277G.f25243A);
            Rect rect = this.f25278H;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            f fVar2 = this.f25288R;
            Drawable.Callback callback = (Drawable.Callback) fVar2.f25242H;
            fVar2.f25242H = null;
            drawable.setCallback(callback);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0055  */
    public final boolean c(int i8) {
        if (i8 == this.f25283M) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f25277G.f25275z > 0) {
            Drawable drawable = this.f25280J;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f25279I;
            if (drawable2 != null) {
                this.f25280J = drawable2;
                this.f25287Q = ((long) this.f25277G.f25275z) + jUptimeMillis;
            } else {
                this.f25280J = null;
                this.f25287Q = 0L;
            }
        } else {
            Drawable drawable3 = this.f25279I;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i8 >= 0) {
            g gVar = this.f25277G;
            if (i8 < gVar.f25257h) {
                Drawable drawableD = gVar.d(i8);
                this.f25279I = drawableD;
                this.f25283M = i8;
                if (drawableD != null) {
                    int i9 = this.f25277G.f25274y;
                    if (i9 > 0) {
                        this.f25286P = jUptimeMillis + ((long) i9);
                    }
                    b(drawableD);
                }
            } else {
                this.f25279I = null;
                this.f25283M = -1;
            }
        } else {
            this.f25279I = null;
            this.f25283M = -1;
        }
        int i10 = 1;
        if (this.f25286P != 0 || this.f25287Q != 0) {
            f fVar = this.f25285O;
            if (fVar == null) {
                this.f25285O = new f(this, i10);
            } else {
                unscheduleSelf(fVar);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.f25277G.canApplyTheme();
    }

    public abstract void d(b bVar);

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f25279I;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f25280J;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f25281K;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f25277G.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        g gVar = this.f25277G;
        if (!gVar.f25270u) {
            gVar.c();
            gVar.f25270u = true;
            int i8 = gVar.f25257h;
            Drawable[] drawableArr = gVar.f25256g;
            for (int i9 = 0; i9 < i8; i9++) {
                if (drawableArr[i9].getConstantState() == null) {
                    gVar.f25271v = false;
                    return null;
                }
            }
            gVar.f25271v = true;
        } else if (!gVar.f25271v) {
            return null;
        }
        this.f25277G.f25253d = getChangingConfigurations();
        return this.f25277G;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f25279I;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f25278H;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        g gVar = this.f25277G;
        if (gVar.f25261l) {
            if (!gVar.f25262m) {
                gVar.b();
            }
            return gVar.f25264o;
        }
        Drawable drawable = this.f25279I;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        g gVar = this.f25277G;
        if (gVar.f25261l) {
            if (!gVar.f25262m) {
                gVar.b();
            }
            return gVar.f25263n;
        }
        Drawable drawable = this.f25279I;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        g gVar = this.f25277G;
        if (gVar.f25261l) {
            if (!gVar.f25262m) {
                gVar.b();
            }
            return gVar.f25266q;
        }
        Drawable drawable = this.f25279I;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        g gVar = this.f25277G;
        if (gVar.f25261l) {
            if (!gVar.f25262m) {
                gVar.b();
            }
            return gVar.f25265p;
        }
        Drawable drawable = this.f25279I;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f25279I;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        g gVar = this.f25277G;
        if (gVar.f25267r) {
            return gVar.f25268s;
        }
        gVar.c();
        int i8 = gVar.f25257h;
        Drawable[] drawableArr = gVar.f25256g;
        int opacity = i8 > 0 ? drawableArr[0].getOpacity() : -2;
        for (int i9 = 1; i9 < i8; i9++) {
            opacity = Drawable.resolveOpacity(opacity, drawableArr[i9].getOpacity());
        }
        gVar.f25268s = opacity;
        gVar.f25267r = true;
        return opacity;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.f25279I;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        g gVar = this.f25277G;
        boolean padding = false;
        Rect rect2 = null;
        if (!gVar.f25258i) {
            Rect rect3 = gVar.f25260k;
            if (rect3 != null || gVar.f25259j) {
                rect2 = rect3;
            } else {
                gVar.c();
                Rect rect4 = new Rect();
                int i8 = gVar.f25257h;
                Drawable[] drawableArr = gVar.f25256g;
                for (int i9 = 0; i9 < i8; i9++) {
                    if (drawableArr[i9].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i10 = rect4.left;
                        if (i10 > rect2.left) {
                            rect2.left = i10;
                        }
                        int i11 = rect4.top;
                        if (i11 > rect2.top) {
                            rect2.top = i11;
                        }
                        int i12 = rect4.right;
                        if (i12 > rect2.right) {
                            rect2.right = i12;
                        }
                        int i13 = rect4.bottom;
                        if (i13 > rect2.bottom) {
                            rect2.bottom = i13;
                        }
                    }
                }
                gVar.f25259j = true;
                gVar.f25260k = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            if ((rect2.left | rect2.top | rect2.bottom | rect2.right) != 0) {
                padding = true;
            }
        } else {
            Drawable drawable = this.f25279I;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.f25277G.f25243A && c.g(this) == 1) {
            int i14 = rect.left;
            rect.left = rect.right;
            rect.right = i14;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        g gVar = this.f25277G;
        if (gVar != null) {
            gVar.f25267r = false;
            gVar.f25269t = false;
        }
        if (drawable != this.f25279I || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f25277G.f25243A;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z7;
        Drawable drawable = this.f25280J;
        boolean z8 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f25280J = null;
            z7 = true;
        } else {
            z7 = false;
        }
        Drawable drawable2 = this.f25279I;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f25282L) {
                this.f25279I.setAlpha(this.f25281K);
            }
        }
        if (this.f25287Q != 0) {
            this.f25287Q = 0L;
        } else {
            z8 = z7;
        }
        if (this.f25286P != 0) {
            this.f25286P = 0L;
        } else if (!z8) {
            return;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f25284N && super.mutate() == this) {
            e eVar = (e) this;
            b bVar = new b(eVar.f25236V, eVar, null);
            bVar.f25229I = bVar.f25229I.clone();
            bVar.f25230J = bVar.f25230J.clone();
            d(bVar);
            this.f25284N = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f25280J;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f25279I;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i8) {
        g gVar = this.f25277G;
        int i9 = this.f25283M;
        int i10 = gVar.f25257h;
        Drawable[] drawableArr = gVar.f25256g;
        boolean z7 = false;
        for (int i11 = 0; i11 < i10; i11++) {
            Drawable drawable = drawableArr[i11];
            if (drawable != null) {
                boolean zL = Build.VERSION.SDK_INT >= 23 ? c.l(drawable, i8) : false;
                if (i11 == i9) {
                    z7 = zL;
                }
            }
        }
        gVar.f25273x = i8;
        return z7;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i8) {
        Drawable drawable = this.f25280J;
        if (drawable != null) {
            return drawable.setLevel(i8);
        }
        Drawable drawable2 = this.f25279I;
        if (drawable2 != null) {
            return drawable2.setLevel(i8);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j8) {
        if (drawable != this.f25279I || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j8);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i8) {
        if (this.f25282L && this.f25281K == i8) {
            return;
        }
        this.f25282L = true;
        this.f25281K = i8;
        Drawable drawable = this.f25279I;
        if (drawable != null) {
            if (this.f25286P == 0) {
                drawable.setAlpha(i8);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z7) {
        g gVar = this.f25277G;
        if (gVar.f25243A != z7) {
            gVar.f25243A = z7;
            Drawable drawable = this.f25279I;
            if (drawable != null) {
                drawable.setAutoMirrored(z7);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        g gVar = this.f25277G;
        gVar.f25245C = true;
        if (gVar.f25244B != colorFilter) {
            gVar.f25244B = colorFilter;
            Drawable drawable = this.f25279I;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z7) {
        g gVar = this.f25277G;
        if (gVar.f25272w != z7) {
            gVar.f25272w = z7;
            Drawable drawable = this.f25279I;
            if (drawable != null) {
                drawable.setDither(z7);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f8, float f9) {
        Drawable drawable = this.f25279I;
        if (drawable != null) {
            drawable.setHotspot(f8, f9);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i8, int i9, int i10, int i11) {
        Rect rect = this.f25278H;
        if (rect == null) {
            this.f25278H = new Rect(i8, i9, i10, i11);
        } else {
            rect.set(i8, i9, i10, i11);
        }
        Drawable drawable = this.f25279I;
        if (drawable != null) {
            drawable.setHotspotBounds(i8, i9, i10, i11);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i8) {
        setTintList(ColorStateList.valueOf(i8));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        g gVar = this.f25277G;
        gVar.f25248F = true;
        if (gVar.f25246D != colorStateList) {
            gVar.f25246D = colorStateList;
            c.n(this.f25279I, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        g gVar = this.f25277G;
        gVar.f25249G = true;
        if (gVar.f25247E != mode) {
            gVar.f25247E = mode;
            c.o(this.f25279I, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z7, boolean z8) {
        boolean visible = super.setVisible(z7, z8);
        Drawable drawable = this.f25280J;
        if (drawable != null) {
            drawable.setVisible(z7, z8);
        }
        Drawable drawable2 = this.f25279I;
        if (drawable2 != null) {
            drawable2.setVisible(z7, z8);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f25279I || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
