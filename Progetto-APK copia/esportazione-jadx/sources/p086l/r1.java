package p086l;

import N.N;
import N.O;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p093m.d;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class r1 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static r1 f26356Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static r1 f26357R;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final View f26358G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final CharSequence f26359H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f26360I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final q1 f26361J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final q1 f26362K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f26363L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f26364M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public s1 f26365N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f26366O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f26367P;

    /* JADX WARN: Type inference failed for: r0v0, types: [l.q1] */
    /* JADX WARN: Type inference failed for: r0v1, types: [l.q1] */
    public r1(View view, CharSequence charSequence) {
        final int i8 = 0;
        this.f26361J = new Runnable(this) { // from class: l.q1

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ r1 f26345H;

            {
                this.f26345H = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i9 = i8;
                r1 r1Var = this.f26345H;
                switch (i9) {
                    case 0:
                        r1Var.c(false);
                        break;
                    default:
                        r1Var.a();
                        break;
                }
            }
        };
        final int i9 = 1;
        this.f26362K = new Runnable(this) { // from class: l.q1

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ r1 f26345H;

            {
                this.f26345H = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i10 = i9;
                r1 r1Var = this.f26345H;
                switch (i10) {
                    case 0:
                        r1Var.c(false);
                        break;
                    default:
                        r1Var.a();
                        break;
                }
            }
        };
        this.f26358G = view;
        this.f26359H = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = O.f4849a;
        this.f26360I = Build.VERSION.SDK_INT >= 28 ? d.h(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.f26367P = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(r1 r1Var) {
        r1 r1Var2 = f26356Q;
        if (r1Var2 != null) {
            r1Var2.f26358G.removeCallbacks(r1Var2.f26361J);
        }
        f26356Q = r1Var;
        if (r1Var != null) {
            r1Var.f26358G.postDelayed(r1Var.f26361J, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        r1 r1Var = f26357R;
        View view = this.f26358G;
        if (r1Var == this) {
            f26357R = null;
            s1 s1Var = this.f26365N;
            if (s1Var != null) {
                if (((View) s1Var.f26375b).getParent() != null) {
                    ((WindowManager) ((Context) s1Var.f26374a).getSystemService("window")).removeView((View) s1Var.f26375b);
                }
                this.f26365N = null;
                this.f26367P = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f26356Q == this) {
            b(null);
        }
        view.removeCallbacks(this.f26362K);
    }

    public final void c(boolean z7) {
        int height;
        int i8;
        long longPressTimeout;
        long j8;
        long j9;
        View view = this.f26358G;
        if (view.isAttachedToWindow()) {
            b(null);
            r1 r1Var = f26357R;
            if (r1Var != null) {
                r1Var.a();
            }
            f26357R = this;
            this.f26366O = z7;
            Context context = view.getContext();
            s1 s1Var = new s1();
            s1Var.f26377d = new WindowManager.LayoutParams();
            s1Var.f26378e = new Rect();
            s1Var.f26379f = new int[2];
            s1Var.f26380g = new int[2];
            s1Var.f26374a = context;
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
            s1Var.f26375b = viewInflate;
            s1Var.f26376c = (TextView) viewInflate.findViewById(R.id.message);
            ((WindowManager.LayoutParams) s1Var.f26377d).setTitle(s1.class.getSimpleName());
            ((WindowManager.LayoutParams) s1Var.f26377d).packageName = ((Context) s1Var.f26374a).getPackageName();
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) s1Var.f26377d;
            layoutParams.type = 1002;
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
            layoutParams.flags = 24;
            this.f26365N = s1Var;
            int width = this.f26363L;
            int i9 = this.f26364M;
            boolean z8 = this.f26366O;
            if (((View) s1Var.f26375b).getParent() != null && ((View) s1Var.f26375b).getParent() != null) {
                ((WindowManager) ((Context) s1Var.f26374a).getSystemService("window")).removeView((View) s1Var.f26375b);
            }
            ((TextView) s1Var.f26376c).setText(this.f26359H);
            WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) s1Var.f26377d;
            layoutParams2.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = ((Context) s1Var.f26374a).getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                width = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = ((Context) s1Var.f26374a).getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i9 + dimensionPixelOffset2;
                i8 = i9 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i8 = 0;
            }
            layoutParams2.gravity = 49;
            int dimensionPixelOffset3 = ((Context) s1Var.f26374a).getResources().getDimensionPixelOffset(z8 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams3 = rootView.getLayoutParams();
            if (!(layoutParams3 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams3).type != 2) {
                for (Context context2 = view.getContext(); context2 instanceof ContextWrapper; context2 = ((ContextWrapper) context2).getBaseContext()) {
                    if (context2 instanceof Activity) {
                        rootView = ((Activity) context2).getWindow().getDecorView();
                        break;
                    }
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
            } else {
                rootView.getWindowVisibleDisplayFrame((Rect) s1Var.f26378e);
                Rect rect = (Rect) s1Var.f26378e;
                if (rect.left < 0 && rect.top < 0) {
                    Resources resources = ((Context) s1Var.f26374a).getResources();
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    ((Rect) s1Var.f26378e).set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen((int[]) s1Var.f26380g);
                view.getLocationOnScreen((int[]) s1Var.f26379f);
                int[] iArr = (int[]) s1Var.f26379f;
                int i10 = iArr[0];
                int[] iArr2 = (int[]) s1Var.f26380g;
                int i11 = i10 - iArr2[0];
                iArr[0] = i11;
                iArr[1] = iArr[1] - iArr2[1];
                layoutParams2.x = (i11 + width) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                ((View) s1Var.f26375b).measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = ((View) s1Var.f26375b).getMeasuredHeight();
                int i12 = ((int[]) s1Var.f26379f)[1];
                int i13 = ((i8 + i12) - dimensionPixelOffset3) - measuredHeight;
                int i14 = i12 + height + dimensionPixelOffset3;
                if (z8) {
                    if (i13 >= 0) {
                        layoutParams2.y = i13;
                    } else {
                        layoutParams2.y = i14;
                    }
                } else if (measuredHeight + i14 <= ((Rect) s1Var.f26378e).height()) {
                    layoutParams2.y = i14;
                } else {
                    layoutParams2.y = i13;
                }
            }
            ((WindowManager) ((Context) s1Var.f26374a).getSystemService("window")).addView((View) s1Var.f26375b, (WindowManager.LayoutParams) s1Var.f26377d);
            view.addOnAttachStateChangeListener(this);
            if (this.f26366O) {
                j9 = 2500;
            } else {
                WeakHashMap weakHashMap = N.f4843a;
                if ((view.getWindowSystemUiVisibility() & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j8 = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j8 = 15000;
                }
                j9 = j8 - longPressTimeout;
            }
            q1 q1Var = this.f26362K;
            view.removeCallbacks(q1Var);
            view.postDelayed(q1Var, j9);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0066  */
    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f26365N != null && this.f26366O) {
            return false;
        }
        View view2 = this.f26358G;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view2.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                this.f26367P = true;
                a();
            }
        } else if (view2.isEnabled() && this.f26365N == null) {
            int x7 = (int) motionEvent.getX();
            int y7 = (int) motionEvent.getY();
            if (this.f26367P) {
                this.f26363L = x7;
                this.f26364M = y7;
                this.f26367P = false;
                b(this);
            } else {
                int iAbs = Math.abs(x7 - this.f26363L);
                int i8 = this.f26360I;
                if (iAbs > i8 || Math.abs(y7 - this.f26364M) > i8) {
                    this.f26363L = x7;
                    this.f26364M = y7;
                    this.f26367P = false;
                    b(this);
                }
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f26363L = view.getWidth() / 2;
        this.f26364M = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
