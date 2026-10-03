package H2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class c extends Drawable implements f, Animatable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final b f3639G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f3640H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f3641I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f3642J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f3644L;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f3646N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Paint f3647O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public Rect f3648P;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f3643K = true;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f3645M = -1;

    public c(b bVar) {
        p102n0.c.c(bVar, "Argument must not be null");
        this.f3639G = bVar;
    }

    public final void a() {
        p102n0.c.a("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.f3642J);
        h hVar = this.f3639G.f3638a;
        if (((p159u2.e) hVar.f3656a).f30482l.f30458c == 1) {
            invalidateSelf();
            return;
        }
        if (this.f3640H) {
            return;
        }
        this.f3640H = true;
        if (hVar.f3665j) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        ArrayList arrayList = hVar.f3658c;
        if (arrayList.contains(this)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean zIsEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (zIsEmpty && !hVar.f3661f) {
            hVar.f3661f = true;
            hVar.f3665j = false;
            hVar.a();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f3642J) {
            return;
        }
        if (this.f3646N) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f3648P == null) {
                this.f3648P = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f3648P);
            this.f3646N = false;
        }
        h hVar = this.f3639G.f3638a;
        e eVar = hVar.f3664i;
        Bitmap bitmap = eVar != null ? eVar.f3653M : hVar.f3667l;
        if (this.f3648P == null) {
            this.f3648P = new Rect();
        }
        Rect rect = this.f3648P;
        if (this.f3647O == null) {
            this.f3647O = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f3647O);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f3639G;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f3639G.f3638a.f3671p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f3639G.f3638a.f3670o;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f3640H;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3646N = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i8) {
        if (this.f3647O == null) {
            this.f3647O = new Paint(2);
        }
        this.f3647O.setAlpha(i8);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f3647O == null) {
            this.f3647O = new Paint(2);
        }
        this.f3647O.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z8) {
        p102n0.c.a("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.f3642J);
        this.f3643K = z7;
        if (!z7) {
            this.f3640H = false;
            h hVar = this.f3639G.f3638a;
            ArrayList arrayList = hVar.f3658c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                hVar.f3661f = false;
            }
        } else if (this.f3641I) {
            a();
        }
        return super.setVisible(z7, z8);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f3641I = true;
        this.f3644L = 0;
        if (this.f3643K) {
            a();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f3641I = false;
        this.f3640H = false;
        h hVar = this.f3639G.f3638a;
        ArrayList arrayList = hVar.f3658c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            hVar.f3661f = false;
        }
    }
}
