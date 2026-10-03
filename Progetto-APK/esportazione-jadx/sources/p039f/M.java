package p039f;

import E3.f;
import N.InterfaceC0264m;
import Z3.C;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.bumptech.glide.d;
import com.google.android.gms.internal.measurement.AbstractC2617p2;
import p000a.n;
import p071j.k;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class M extends n implements InterfaceC3001p {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public K f24979J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final L f24980K;

    /* JADX WARN: Type inference failed for: r2v2, types: [f.L] */
    public M(Context context, int i8) {
        int i9;
        if (i8 == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i9 = typedValue.resourceId;
        } else {
            i9 = i8;
        }
        super(context, i9);
        this.f24980K = new InterfaceC0264m() { // from class: f.L
            @Override // N.InterfaceC0264m
            public final boolean e(KeyEvent keyEvent) {
                return this.f24978G.g(keyEvent);
            }
        };
        AbstractC3007w abstractC3007wE = e();
        if (i8 == 0) {
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            i8 = typedValue2.resourceId;
        }
        ((K) abstractC3007wE).f24927A0 = i8;
        abstractC3007wE.c();
    }

    @Override // p000a.n, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        K k8 = (K) e();
        k8.v();
        ((ViewGroup) k8.f24959h0.findViewById(android.R.id.content)).addView(view, layoutParams);
        k8.f24944S.a(k8.f24943R.getCallback());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        e().d();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return AbstractC2617p2.f(this.f24980K, getWindow().getDecorView(), this, keyEvent);
    }

    public final AbstractC3007w e() {
        if (this.f24979J == null) {
            ExecutorC3005u executorC3005u = AbstractC3007w.f25117G;
            this.f24979J = new K(getContext(), getWindow(), this, this);
        }
        return this.f24979J;
    }

    public final void f() {
        C.k(getWindow().getDecorView(), this);
        f.y(getWindow().getDecorView(), this);
        d.p(getWindow().getDecorView(), this);
    }

    @Override // android.app.Dialog
    public final View findViewById(int i8) {
        K k8 = (K) e();
        k8.v();
        return k8.f24943R.findViewById(i8);
    }

    public final boolean g(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        K k8 = (K) e();
        if (k8.f24946U != null) {
            k8.A();
            k8.f24946U.getClass();
            k8.B(0);
        }
    }

    @Override // p000a.n, android.app.Dialog
    public void onCreate(Bundle bundle) {
        e().a();
        super.onCreate(bundle);
        e().c();
    }

    @Override // p000a.n, android.app.Dialog
    public final void onStop() {
        super.onStop();
        K k8 = (K) e();
        k8.A();
        X x7 = k8.f24946U;
        if (x7 != null) {
            x7.f25023f0 = false;
            k kVar = x7.f25022e0;
            if (kVar != null) {
                kVar.a();
            }
        }
    }

    @Override // p000a.n, android.app.Dialog
    public final void setContentView(int i8) {
        f();
        e().h(i8);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        e().k(charSequence);
    }

    @Override // p000a.n, android.app.Dialog
    public final void setContentView(View view) {
        f();
        e().i(view);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i8) {
        super.setTitle(i8);
        e().k(getContext().getString(i8));
    }

    @Override // p000a.n, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        f();
        e().j(view, layoutParams);
    }
}
