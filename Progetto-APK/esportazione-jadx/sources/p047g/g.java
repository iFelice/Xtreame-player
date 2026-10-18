package p047g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import p102n0.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends Drawable.ConstantState {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f25243A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public ColorFilter f25244B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f25245C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public ColorStateList f25246D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public PorterDuff.Mode f25247E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f25248F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f25249G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f25250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Resources f25251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f25252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f25253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f25254e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SparseArray f25255f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Drawable[] f25256g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f25257h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f25258i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f25259j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f25260k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f25261l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f25262m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f25263n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f25264o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f25265p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f25266q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f25267r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f25268s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f25269t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f25270u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f25271v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f25272w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f25273x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f25274y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f25275z;

    public g(g gVar, h hVar, Resources resources) {
        this.f25258i = false;
        this.f25261l = false;
        this.f25272w = true;
        this.f25274y = 0;
        this.f25275z = 0;
        this.f25250a = hVar;
        this.f25251b = resources != null ? resources : gVar != null ? gVar.f25251b : null;
        int i8 = gVar != null ? gVar.f25252c : 0;
        int i9 = h.f25276S;
        i8 = resources != null ? resources.getDisplayMetrics().densityDpi : i8;
        i8 = i8 == 0 ? 160 : i8;
        this.f25252c = i8;
        if (gVar == null) {
            this.f25256g = new Drawable[10];
            this.f25257h = 0;
            return;
        }
        this.f25253d = gVar.f25253d;
        this.f25254e = gVar.f25254e;
        this.f25270u = true;
        this.f25271v = true;
        this.f25258i = gVar.f25258i;
        this.f25261l = gVar.f25261l;
        this.f25272w = gVar.f25272w;
        this.f25273x = gVar.f25273x;
        this.f25274y = gVar.f25274y;
        this.f25275z = gVar.f25275z;
        this.f25243A = gVar.f25243A;
        this.f25244B = gVar.f25244B;
        this.f25245C = gVar.f25245C;
        this.f25246D = gVar.f25246D;
        this.f25247E = gVar.f25247E;
        this.f25248F = gVar.f25248F;
        this.f25249G = gVar.f25249G;
        if (gVar.f25252c == i8) {
            if (gVar.f25259j) {
                this.f25260k = gVar.f25260k != null ? new Rect(gVar.f25260k) : null;
                this.f25259j = true;
            }
            if (gVar.f25262m) {
                this.f25263n = gVar.f25263n;
                this.f25264o = gVar.f25264o;
                this.f25265p = gVar.f25265p;
                this.f25266q = gVar.f25266q;
                this.f25262m = true;
            }
        }
        if (gVar.f25267r) {
            this.f25268s = gVar.f25268s;
            this.f25267r = true;
        }
        if (gVar.f25269t) {
            this.f25269t = true;
        }
        Drawable[] drawableArr = gVar.f25256g;
        this.f25256g = new Drawable[drawableArr.length];
        this.f25257h = gVar.f25257h;
        SparseArray sparseArray = gVar.f25255f;
        if (sparseArray != null) {
            this.f25255f = sparseArray.clone();
        } else {
            this.f25255f = new SparseArray(this.f25257h);
        }
        int i10 = this.f25257h;
        for (int i11 = 0; i11 < i10; i11++) {
            Drawable drawable = drawableArr[i11];
            if (drawable != null) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    this.f25255f.put(i11, constantState);
                } else {
                    this.f25256g[i11] = drawableArr[i11];
                }
            }
        }
    }

    public final int a(Drawable drawable) {
        int i8 = this.f25257h;
        if (i8 >= this.f25256g.length) {
            int i9 = i8 + 10;
            i iVar = (i) this;
            Drawable[] drawableArr = new Drawable[i9];
            Drawable[] drawableArr2 = iVar.f25256g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i8);
            }
            iVar.f25256g = drawableArr;
            int[][] iArr = new int[i9][];
            System.arraycopy(iVar.f25289H, 0, iArr, 0, i8);
            iVar.f25289H = iArr;
        }
        drawable.mutate();
        drawable.setVisible(false, true);
        drawable.setCallback(this.f25250a);
        this.f25256g[i8] = drawable;
        this.f25257h++;
        this.f25254e = drawable.getChangingConfigurations() | this.f25254e;
        this.f25267r = false;
        this.f25269t = false;
        this.f25260k = null;
        this.f25259j = false;
        this.f25262m = false;
        this.f25270u = false;
        return i8;
    }

    public final void b() {
        this.f25262m = true;
        c();
        int i8 = this.f25257h;
        Drawable[] drawableArr = this.f25256g;
        this.f25264o = -1;
        this.f25263n = -1;
        this.f25266q = 0;
        this.f25265p = 0;
        for (int i9 = 0; i9 < i8; i9++) {
            Drawable drawable = drawableArr[i9];
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (intrinsicWidth > this.f25263n) {
                this.f25263n = intrinsicWidth;
            }
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicHeight > this.f25264o) {
                this.f25264o = intrinsicHeight;
            }
            int minimumWidth = drawable.getMinimumWidth();
            if (minimumWidth > this.f25265p) {
                this.f25265p = minimumWidth;
            }
            int minimumHeight = drawable.getMinimumHeight();
            if (minimumHeight > this.f25266q) {
                this.f25266q = minimumHeight;
            }
        }
    }

    public final void c() {
        SparseArray sparseArray = this.f25255f;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i8 = 0; i8 < size; i8++) {
                int iKeyAt = this.f25255f.keyAt(i8);
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f25255f.valueAt(i8);
                Drawable[] drawableArr = this.f25256g;
                Drawable drawableNewDrawable = constantState.newDrawable(this.f25251b);
                if (Build.VERSION.SDK_INT >= 23) {
                    c.l(drawableNewDrawable, this.f25273x);
                }
                Drawable drawableMutate = drawableNewDrawable.mutate();
                drawableMutate.setCallback(this.f25250a);
                drawableArr[iKeyAt] = drawableMutate;
            }
            this.f25255f = null;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        int i8 = this.f25257h;
        Drawable[] drawableArr = this.f25256g;
        for (int i9 = 0; i9 < i8; i9++) {
            Drawable drawable = drawableArr[i9];
            if (drawable == null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f25255f.get(i9);
                if (constantState != null && constantState.canApplyTheme()) {
                    return true;
                }
            } else if (drawable.canApplyTheme()) {
                return true;
            }
        }
        return false;
    }

    public final Drawable d(int i8) {
        int iIndexOfKey;
        Drawable drawable = this.f25256g[i8];
        if (drawable != null) {
            return drawable;
        }
        SparseArray sparseArray = this.f25255f;
        if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i8)) < 0) {
            return null;
        }
        Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f25255f.valueAt(iIndexOfKey)).newDrawable(this.f25251b);
        if (Build.VERSION.SDK_INT >= 23) {
            c.l(drawableNewDrawable, this.f25273x);
        }
        Drawable drawableMutate = drawableNewDrawable.mutate();
        drawableMutate.setCallback(this.f25250a);
        this.f25256g[i8] = drawableMutate;
        this.f25255f.removeAt(iIndexOfKey);
        if (this.f25255f.size() == 0) {
            this.f25255f = null;
        }
        return drawableMutate;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f25253d | this.f25254e;
    }
}
