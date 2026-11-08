package p086l;

import J6.r;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import com.google.android.gms.common.api.d;
import com.google.android.gms.internal.measurement.H1;
import java.lang.reflect.Method;
import p031e.a;
import p079k.E;

/* JADX INFO: loaded from: classes.dex */
public abstract class M0 implements E {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final Method f26127f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final Method f26128g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final Method f26129h0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f26130G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ListAdapter f26131H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C3066z0 f26132I;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f26135L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f26136M;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f26138O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f26139P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f26140Q;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public J0 f26143T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public View f26144U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public AdapterView.OnItemClickListener f26145V;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Handler f26150a0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Rect f26152c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f26153d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final G f26154e0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f26133J = -2;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f26134K = -2;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f26137N = 1002;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f26141R = 0;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f26142S = d.API_PRIORITY_OTHER;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final F0 f26146W = new F0(this, 2);

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final L0 f26147X = new L0(this, 0);

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final K0 f26148Y = new K0(this, 0);

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final F0 f26149Z = new F0(this, 1);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final Rect f26151b0 = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f26127f0 = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f26129h0 = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f26128g0 = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public M0(Context context, AttributeSet attributeSet, int i8, int i9) {
        int resourceId;
        this.f26130G = context;
        this.f26150a0 = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f24700o, i8, i9);
        this.f26135L = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f26136M = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f26138O = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        G g8 = new G(context, attributeSet, i8, i9);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a.f24704s, i8, i9);
        if (typedArrayObtainStyledAttributes2.hasValue(2)) {
            H1.x(g8, typedArrayObtainStyledAttributes2.getBoolean(2, false));
        }
        g8.setBackgroundDrawable((!typedArrayObtainStyledAttributes2.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes2.getDrawable(0) : r.h(context, resourceId));
        typedArrayObtainStyledAttributes2.recycle();
        this.f26154e0 = g8;
        g8.setInputMethodMode(1);
    }

    @Override // p079k.E
    public final boolean a() {
        return this.f26154e0.isShowing();
    }

    public final int b() {
        return this.f26135L;
    }

    public final void c(int i8) {
        this.f26135L = i8;
    }

    @Override // p079k.E
    public final void dismiss() {
        G g8 = this.f26154e0;
        g8.dismiss();
        g8.setContentView(null);
        this.f26132I = null;
        this.f26150a0.removeCallbacks(this.f26146W);
    }

    public final Drawable e() {
        return this.f26154e0.getBackground();
    }

    public final void g(Drawable drawable) {
        this.f26154e0.setBackgroundDrawable(drawable);
    }

    @Override // p079k.E
    public final void h() {
        int i8;
        int iA;
        int iMakeMeasureSpec;
        int paddingBottom;
        C3066z0 c3066z0;
        C3066z0 c3066z1 = this.f26132I;
        G g8 = this.f26154e0;
        Context context = this.f26130G;
        int i9 = 0;
        if (c3066z1 == null) {
            C3066z0 c3066z0O = o(context, !this.f26153d0);
            this.f26132I = c3066z0O;
            c3066z0O.setAdapter(this.f26131H);
            this.f26132I.setOnItemClickListener(this.f26145V);
            this.f26132I.setFocusable(true);
            this.f26132I.setFocusableInTouchMode(true);
            this.f26132I.setOnItemSelectedListener(new G0(this, i9));
            this.f26132I.setOnScrollListener(this.f26148Y);
            g8.setContentView(this.f26132I);
        }
        Drawable background = g8.getBackground();
        Rect rect = this.f26151b0;
        if (background != null) {
            background.getPadding(rect);
            int i10 = rect.top;
            i8 = rect.bottom + i10;
            if (!this.f26138O) {
                this.f26136M = -i10;
            }
        } else {
            rect.setEmpty();
            i8 = 0;
        }
        boolean z7 = g8.getInputMethodMode() == 2;
        View view = this.f26144U;
        int i11 = this.f26136M;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = f26128g0;
            if (method != null) {
                try {
                    iA = ((Integer) method.invoke(g8, view, Integer.valueOf(i11), Boolean.valueOf(z7))).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                    iA = g8.getMaxAvailableHeight(view, i11);
                }
            } else {
                iA = g8.getMaxAvailableHeight(view, i11);
            }
        } else {
            iA = H0.a(g8, view, i11, z7);
        }
        int i12 = this.f26133J;
        if (i12 == -1) {
            paddingBottom = iA + i8;
        } else {
            int i13 = this.f26134K;
            if (i13 != -2) {
                iMakeMeasureSpec = i13 != -1 ? View.MeasureSpec.makeMeasureSpec(i13, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE);
            }
            int iA2 = this.f26132I.a(iMakeMeasureSpec, iA);
            paddingBottom = iA2 + (iA2 > 0 ? this.f26132I.getPaddingBottom() + this.f26132I.getPaddingTop() + i8 : 0);
        }
        boolean z8 = this.f26154e0.getInputMethodMode() == 2;
        H1.y(g8, this.f26137N);
        if (g8.isShowing()) {
            if (this.f26144U.isAttachedToWindow()) {
                int width = this.f26134K;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.f26144U.getWidth();
                }
                if (i12 == -1) {
                    i12 = z8 ? paddingBottom : -1;
                    if (z8) {
                        g8.setWidth(this.f26134K == -1 ? -1 : 0);
                        g8.setHeight(0);
                    } else {
                        g8.setWidth(this.f26134K == -1 ? -1 : 0);
                        g8.setHeight(-1);
                    }
                } else if (i12 == -2) {
                    i12 = paddingBottom;
                }
                g8.setOutsideTouchable(true);
                View view2 = this.f26144U;
                int i14 = this.f26135L;
                int i15 = this.f26136M;
                if (width < 0) {
                    width = -1;
                }
                g8.update(view2, i14, i15, width, i12 < 0 ? -1 : i12);
                return;
            }
            return;
        }
        int width2 = this.f26134K;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.f26144U.getWidth();
        }
        if (i12 == -1) {
            i12 = -1;
        } else if (i12 == -2) {
            i12 = paddingBottom;
        }
        g8.setWidth(width2);
        g8.setHeight(i12);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = f26127f0;
            if (method2 != null) {
                try {
                    method2.invoke(g8, Boolean.TRUE);
                } catch (Exception unused2) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            I0.b(g8, true);
        }
        g8.setOutsideTouchable(true);
        g8.setTouchInterceptor(this.f26147X);
        if (this.f26140Q) {
            H1.x(g8, this.f26139P);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = f26129h0;
            if (method3 != null) {
                try {
                    method3.invoke(g8, this.f26152c0);
                } catch (Exception e8) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e8);
                }
            }
        } else {
            I0.a(g8, this.f26152c0);
        }
        g8.showAsDropDown(this.f26144U, this.f26135L, this.f26136M, this.f26141R);
        this.f26132I.setSelection(-1);
        if ((!this.f26153d0 || this.f26132I.isInTouchMode()) && (c3066z0 = this.f26132I) != null) {
            c3066z0.setListSelectionHidden(true);
            c3066z0.requestLayout();
        }
        if (this.f26153d0) {
            return;
        }
        this.f26150a0.post(this.f26149Z);
    }

    public final void i(int i8) {
        this.f26136M = i8;
        this.f26138O = true;
    }

    @Override // p079k.E
    public final C3066z0 j() {
        return this.f26132I;
    }

    public final int m() {
        if (this.f26138O) {
            return this.f26136M;
        }
        return 0;
    }

    public void n(ListAdapter listAdapter) {
        J0 j8 = this.f26143T;
        if (j8 == null) {
            this.f26143T = new J0(this, 0);
        } else {
            ListAdapter listAdapter2 = this.f26131H;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(j8);
            }
        }
        this.f26131H = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f26143T);
        }
        C3066z0 c3066z0 = this.f26132I;
        if (c3066z0 != null) {
            c3066z0.setAdapter(this.f26131H);
        }
    }

    public C3066z0 o(Context context, boolean z7) {
        return new C3066z0(context, z7);
    }

    public final void p(int i8) {
        Drawable background = this.f26154e0.getBackground();
        if (background == null) {
            this.f26134K = i8;
            return;
        }
        Rect rect = this.f26151b0;
        background.getPadding(rect);
        this.f26134K = rect.left + rect.right + i8;
    }
}
