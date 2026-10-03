package p086l;

import J6.r;
import N.N;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.bumptech.glide.d;
import com.google.android.gms.internal.ads.C0650Aa;
import com.google.android.gms.internal.ads.ViewTreeObserverOnGlobalLayoutListenerC2248xe;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import p031e.a;
import p083k3.l;
import p096m2.u;
import p102n0.c;

/* JADX INFO: renamed from: l.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3059w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f26401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f26402c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f26403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f26404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f26405f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f26406g;

    public C3059w(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.f26400a = 2;
        this.f26401b = activity;
        this.f26406g = view;
        this.f26402c = onGlobalLayoutListener;
    }

    public final void a() {
        Drawable drawableC;
        View view = this.f26406g;
        CompoundButton compoundButton = (CompoundButton) view;
        if (Build.VERSION.SDK_INT >= 23) {
            drawableC = H.c(compoundButton);
        } else {
            if (!d.f11505b) {
                try {
                    Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                    d.f11504a = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e8) {
                    Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e8);
                }
                d.f11505b = true;
            }
            Field field = d.f11504a;
            if (field != null) {
                try {
                    drawableC = (Drawable) field.get(compoundButton);
                } catch (IllegalAccessException e9) {
                    Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e9);
                    d.f11504a = null;
                    drawableC = null;
                }
            } else {
                drawableC = null;
            }
        }
        if (drawableC != null) {
            if (this.f26403d || this.f26404e) {
                Drawable drawableMutate = c.q(drawableC).mutate();
                if (this.f26403d) {
                    drawableMutate.setTintList((ColorStateList) this.f26401b);
                }
                if (this.f26404e) {
                    drawableMutate.setTintMode((PorterDuff.Mode) this.f26402c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(((CompoundButton) view).getDrawableState());
                }
                ((CompoundButton) view).setButtonDrawable(drawableMutate);
            }
        }
    }

    public final void b() {
        View view = this.f26406g;
        Drawable checkMarkDrawable = ((CheckedTextView) view).getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f26403d || this.f26404e) {
                Drawable drawableMutate = c.q(checkMarkDrawable).mutate();
                if (this.f26403d) {
                    drawableMutate.setTintList((ColorStateList) this.f26401b);
                }
                if (this.f26404e) {
                    drawableMutate.setTintMode((PorterDuff.Mode) this.f26402c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(((CheckedTextView) view).getDrawableState());
                }
                ((CheckedTextView) view).setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    public final void c(AttributeSet attributeSet, int i8) {
        int iZ;
        int iZ2;
        int iZ3;
        int iZ4;
        int i9 = this.f26400a;
        View view = this.f26406g;
        switch (i9) {
            case 0:
                CheckedTextView checkedTextView = (CheckedTextView) view;
                Context context = checkedTextView.getContext();
                int[] iArr = a.f24697l;
                u uVarJ = u.J(context, attributeSet, iArr, i8, 0);
                N.l(checkedTextView, checkedTextView.getContext(), iArr, attributeSet, (TypedArray) uVarJ.f27279I, i8);
                try {
                    if (uVarJ.F(1) && (iZ2 = uVarJ.z(1, 0)) != 0) {
                        try {
                            ((CheckedTextView) view).setCheckMarkDrawable(r.h(((CheckedTextView) view).getContext(), iZ2));
                        } catch (Resources.NotFoundException unused) {
                            if (uVarJ.F(0)) {
                                ((CheckedTextView) view).setCheckMarkDrawable(r.h(((CheckedTextView) view).getContext(), iZ));
                            }
                        }
                        break;
                    } else if (uVarJ.F(0) && (iZ = uVarJ.z(0, 0)) != 0) {
                        ((CheckedTextView) view).setCheckMarkDrawable(r.h(((CheckedTextView) view).getContext(), iZ));
                    }
                    if (uVarJ.F(2)) {
                        ((CheckedTextView) view).setCheckMarkTintList(uVarJ.o(2));
                    }
                    if (uVarJ.F(3)) {
                        ((CheckedTextView) view).setCheckMarkTintMode(AbstractC3054t0.c(uVarJ.x(3, -1), null));
                        break;
                    }
                    return;
                } finally {
                    uVarJ.P();
                }
            default:
                CompoundButton compoundButton = (CompoundButton) view;
                Context context2 = compoundButton.getContext();
                int[] iArr2 = a.f24698m;
                u uVarJ2 = u.J(context2, attributeSet, iArr2, i8, 0);
                N.l(compoundButton, compoundButton.getContext(), iArr2, attributeSet, (TypedArray) uVarJ2.f27279I, i8);
                try {
                    if (uVarJ2.F(1) && (iZ4 = uVarJ2.z(1, 0)) != 0) {
                        try {
                            ((CompoundButton) view).setButtonDrawable(r.h(((CompoundButton) view).getContext(), iZ4));
                        } catch (Resources.NotFoundException unused2) {
                            if (uVarJ2.F(0)) {
                                ((CompoundButton) view).setButtonDrawable(r.h(((CompoundButton) view).getContext(), iZ3));
                            }
                        }
                        break;
                    } else if (uVarJ2.F(0) && (iZ3 = uVarJ2.z(0, 0)) != 0) {
                        ((CompoundButton) view).setButtonDrawable(r.h(((CompoundButton) view).getContext(), iZ3));
                    }
                    if (uVarJ2.F(2)) {
                        ((CompoundButton) view).setButtonTintList(uVarJ2.o(2));
                    }
                    if (uVarJ2.F(3)) {
                        ((CompoundButton) view).setButtonTintMode(AbstractC3054t0.c(uVarJ2.x(3, -1), null));
                        break;
                    }
                    return;
                } finally {
                    uVarJ2.P();
                }
        }
    }

    public final void d() {
        ViewTreeObserver viewTreeObserver;
        View decorView;
        if (this.f26403d) {
            return;
        }
        Activity activity = (Activity) this.f26401b;
        ViewTreeObserver viewTreeObserver2 = null;
        if (activity != null) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = (ViewTreeObserver.OnGlobalLayoutListener) this.f26402c;
            Window window = activity.getWindow();
            ViewTreeObserver viewTreeObserver3 = (window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getViewTreeObserver();
            if (viewTreeObserver3 != null) {
                viewTreeObserver3.addOnGlobalLayoutListener(onGlobalLayoutListener);
            }
        }
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener2 = (ViewTreeObserver.OnGlobalLayoutListener) this.f26402c;
        C0650Aa c0650Aa = l.f25980A.f26006z;
        ViewTreeObserverOnGlobalLayoutListenerC2248xe viewTreeObserverOnGlobalLayoutListenerC2248xe = new ViewTreeObserverOnGlobalLayoutListenerC2248xe(this.f26406g, onGlobalLayoutListener2);
        View view = (View) ((WeakReference) viewTreeObserverOnGlobalLayoutListenerC2248xe.f19929G).get();
        if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            viewTreeObserver2 = viewTreeObserver;
        }
        if (viewTreeObserver2 != null) {
            viewTreeObserverOnGlobalLayoutListenerC2248xe.a1(viewTreeObserver2);
        }
        this.f26403d = true;
    }

    public /* synthetic */ C3059w(TextView textView, int i8) {
        this.f26400a = i8;
        this.f26401b = null;
        this.f26402c = null;
        this.f26403d = false;
        this.f26404e = false;
        this.f26406g = textView;
    }
}
