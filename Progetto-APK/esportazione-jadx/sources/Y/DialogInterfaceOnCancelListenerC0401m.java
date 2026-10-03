package Y;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import p039f.AbstractC2987b;
import pe.hf.black20.R;

/* JADX INFO: renamed from: Y.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class DialogInterfaceOnCancelListenerC0401m extends AbstractComponentCallbacksC0406s implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public Handler f7895C0;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public boolean f7904L0;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public Dialog f7906N0;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public boolean f7907O0;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public boolean f7908P0;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public boolean f7909Q0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public final p000a.f f7896D0 = new p000a.f(this, 8);

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public final DialogInterfaceOnCancelListenerC0398j f7897E0 = new DialogInterfaceOnCancelListenerC0398j(this, 0);

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public final DialogInterfaceOnDismissListenerC0399k f7898F0 = new DialogInterfaceOnDismissListenerC0399k(this);

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public int f7899G0 = 0;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public int f7900H0 = 0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public boolean f7901I0 = true;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public boolean f7902J0 = true;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public int f7903K0 = -1;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public final p039f.S f7905M0 = new p039f.S(this, 17);

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public boolean f7910R0 = false;

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void A() {
        this.f7961k0 = true;
        Dialog dialog = this.f7906N0;
        if (dialog != null) {
            this.f7907O0 = true;
            dialog.setOnDismissListener(null);
            this.f7906N0.dismiss();
            if (!this.f7908P0) {
                onDismiss(this.f7906N0);
            }
            this.f7906N0 = null;
            this.f7910R0 = false;
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void B() {
        this.f7961k0 = true;
        if (!this.f7909Q0 && !this.f7908P0) {
            this.f7908P0 = true;
        }
        p039f.S s7 = this.f7905M0;
        p032e0.v vVar = this.f7973w0;
        vVar.getClass();
        p032e0.t.a("removeObserver");
        p032e0.s sVar = (p032e0.s) vVar.f24767b.c(s7);
        if (sVar == null) {
            return;
        }
        sVar.a(false);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final LayoutInflater C(Bundle bundle) {
        LayoutInflater layoutInflaterC = super.C(bundle);
        boolean z7 = this.f7902J0;
        if (!z7 || this.f7904L0) {
            if (Log.isLoggable("FragmentManager", 2)) {
                String str = "getting layout inflater for DialogFragment " + this;
                if (this.f7902J0) {
                    p000a.r.q("mCreatingDialog = true: ", str, "FragmentManager");
                } else {
                    p000a.r.q("mShowsDialog = false: ", str, "FragmentManager");
                }
            }
            return layoutInflaterC;
        }
        if (z7 && !this.f7910R0) {
            try {
                this.f7904L0 = true;
                Dialog dialogT = T();
                this.f7906N0 = dialogT;
                if (this.f7902J0) {
                    int i8 = this.f7899G0;
                    if (i8 == 1 || i8 == 2) {
                        dialogT.requestWindowFeature(1);
                    } else if (i8 == 3) {
                        Window window = dialogT.getWindow();
                        if (window != null) {
                            window.addFlags(24);
                        }
                        dialogT.requestWindowFeature(1);
                    }
                    Context contextL = l();
                    if (contextL instanceof Activity) {
                        this.f7906N0.setOwnerActivity((Activity) contextL);
                    }
                    this.f7906N0.setCancelable(this.f7901I0);
                    this.f7906N0.setOnCancelListener(this.f7897E0);
                    this.f7906N0.setOnDismissListener(this.f7898F0);
                    this.f7910R0 = true;
                } else {
                    this.f7906N0 = null;
                }
                this.f7904L0 = false;
            } catch (Throwable th) {
                this.f7904L0 = false;
                throw th;
            }
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
        }
        Dialog dialog = this.f7906N0;
        return dialog != null ? layoutInflaterC.cloneInContext(dialog.getContext()) : layoutInflaterC;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void F(Bundle bundle) {
        Dialog dialog = this.f7906N0;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i8 = this.f7899G0;
        if (i8 != 0) {
            bundle.putInt("android:style", i8);
        }
        int i9 = this.f7900H0;
        if (i9 != 0) {
            bundle.putInt("android:theme", i9);
        }
        boolean z7 = this.f7901I0;
        if (!z7) {
            bundle.putBoolean("android:cancelable", z7);
        }
        boolean z8 = this.f7902J0;
        if (!z8) {
            bundle.putBoolean("android:showsDialog", z8);
        }
        int i10 = this.f7903K0;
        if (i10 != -1) {
            bundle.putInt("android:backStackId", i10);
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void G() {
        this.f7961k0 = true;
        Dialog dialog = this.f7906N0;
        if (dialog != null) {
            this.f7907O0 = false;
            dialog.show();
            View decorView = this.f7906N0.getWindow().getDecorView();
            Z3.C.k(decorView, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            E3.f.y(decorView, this);
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void H() {
        this.f7961k0 = true;
        Dialog dialog = this.f7906N0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void I(Bundle bundle) {
        Bundle bundle2;
        this.f7961k0 = true;
        if (this.f7906N0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f7906N0.onRestoreInstanceState(bundle2);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void J(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.J(layoutInflater, viewGroup, bundle);
        if (this.f7963m0 != null || this.f7906N0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f7906N0.onRestoreInstanceState(bundle2);
    }

    public final void S(boolean z7, boolean z8) {
        if (this.f7908P0) {
            return;
        }
        this.f7908P0 = true;
        this.f7909Q0 = false;
        Dialog dialog = this.f7906N0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f7906N0.dismiss();
            if (!z8) {
                if (Looper.myLooper() == this.f7895C0.getLooper()) {
                    onDismiss(this.f7906N0);
                } else {
                    this.f7895C0.post(this.f7896D0);
                }
            }
        }
        this.f7907O0 = true;
        if (this.f7903K0 >= 0) {
            K kN = n();
            int i8 = this.f7903K0;
            if (i8 < 0) {
                throw new IllegalArgumentException(p000a.r.f("Bad id: ", i8));
            }
            kN.v(new J(kN, i8), z7);
            this.f7903K0 = -1;
            return;
        }
        C0389a c0389a = new C0389a(n());
        c0389a.f7827q = true;
        K k8 = this.f7949Y;
        if (k8 != null && k8 != c0389a.f7828r) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + toString() + " is already attached to a FragmentManager.");
        }
        c0389a.b(new Q(3, this));
        if (z7) {
            c0389a.d(true);
        } else {
            c0389a.d(false);
        }
    }

    public Dialog T() {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new p000a.n(M(), this.f7900H0);
    }

    public void U(K k8, String str) {
        this.f7908P0 = false;
        this.f7909Q0 = true;
        k8.getClass();
        C0389a c0389a = new C0389a(k8);
        c0389a.f7827q = true;
        c0389a.e(0, this, str, 1);
        c0389a.d(false);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final AbstractC2987b b() {
        return new C0400l(this, new C0403o(this));
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f7907O0) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        S(true, true);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void u() {
        this.f7961k0 = true;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void w(Context context) {
        Object obj;
        super.w(context);
        p039f.S s7 = this.f7905M0;
        p032e0.v vVar = this.f7973w0;
        vVar.getClass();
        p032e0.t.a("observeForever");
        p032e0.r rVar = new p032e0.r(vVar, s7);
        p101n.g gVar = vVar.f24767b;
        p101n.c cVarB = gVar.b(s7);
        if (cVarB != null) {
            obj = cVarB.f27292H;
        } else {
            p101n.c cVar = new p101n.c(s7, rVar);
            gVar.f27303J++;
            p101n.c cVar2 = gVar.f27301H;
            if (cVar2 == null) {
                gVar.f27300G = cVar;
                gVar.f27301H = cVar;
            } else {
                cVar2.f27293I = cVar;
                cVar.f27294J = cVar2;
                gVar.f27301H = cVar;
            }
            obj = null;
        }
        if (((p032e0.s) obj) == null) {
            rVar.a(true);
        }
        if (this.f7909Q0) {
            return;
        }
        this.f7908P0 = false;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void x(Bundle bundle) {
        super.x(bundle);
        this.f7895C0 = new Handler();
        this.f7902J0 = this.f7954d0 == 0;
        if (bundle != null) {
            this.f7899G0 = bundle.getInt("android:style", 0);
            this.f7900H0 = bundle.getInt("android:theme", 0);
            this.f7901I0 = bundle.getBoolean("android:cancelable", true);
            this.f7902J0 = bundle.getBoolean("android:showsDialog", this.f7902J0);
            this.f7903K0 = bundle.getInt("android:backStackId", -1);
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
    }
}
