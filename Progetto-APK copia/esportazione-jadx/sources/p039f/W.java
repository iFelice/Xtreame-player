package p039f;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import p071j.a;
import p071j.b;
import p071j.i;
import p079k.m;
import p079k.o;
import p086l.C3042n;

/* JADX INFO: loaded from: classes.dex */
public final class W extends b implements m {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Context f24997I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final o f24998J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public a f24999K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public WeakReference f25000L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ X f25001M;

    public W(X x7, Context context, A a8) {
        this.f25001M = x7;
        this.f24997I = context;
        this.f24999K = a8;
        o oVar = new o(context);
        oVar.f25832l = 1;
        this.f24998J = oVar;
        oVar.f25825e = this;
    }

    @Override // p071j.b
    public final void a() {
        X x7 = this.f25001M;
        if (x7.f25012U != this) {
            return;
        }
        if (x7.f25019b0) {
            x7.f25013V = this;
            x7.f25014W = this.f24999K;
        } else {
            this.f24999K.d(this);
        }
        this.f24999K = null;
        x7.G0(false);
        ActionBarContextView actionBarContextView = x7.f25009R;
        if (actionBarContextView.f8779Q == null) {
            actionBarContextView.e();
        }
        x7.f25006O.setHideOnContentScrollEnabled(x7.f25024g0);
        x7.f25012U = null;
    }

    @Override // p071j.b
    public final View b() {
        WeakReference weakReference = this.f25000L;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // p071j.b
    public final o c() {
        return this.f24998J;
    }

    @Override // p071j.b
    public final MenuInflater d() {
        return new i(this.f24997I);
    }

    @Override // p071j.b
    public final CharSequence e() {
        return this.f25001M.f25009R.getSubtitle();
    }

    @Override // p071j.b
    public final CharSequence f() {
        return this.f25001M.f25009R.getTitle();
    }

    @Override // p079k.m
    public final boolean g(o oVar, MenuItem menuItem) {
        a aVar = this.f24999K;
        if (aVar != null) {
            return aVar.e(this, menuItem);
        }
        return false;
    }

    @Override // p071j.b
    public final void h() {
        if (this.f25001M.f25012U != this) {
            return;
        }
        o oVar = this.f24998J;
        oVar.w();
        try {
            this.f24999K.h(this, oVar);
        } finally {
            oVar.v();
        }
    }

    @Override // p071j.b
    public final boolean i() {
        return this.f25001M.f25009R.f8787b0;
    }

    @Override // p071j.b
    public final void j(View view) {
        this.f25001M.f25009R.setCustomView(view);
        this.f25000L = new WeakReference(view);
    }

    @Override // p071j.b
    public final void k(int i8) {
        l(this.f25001M.f25004M.getResources().getString(i8));
    }

    @Override // p071j.b
    public final void l(CharSequence charSequence) {
        this.f25001M.f25009R.setSubtitle(charSequence);
    }

    @Override // p079k.m
    public final void m(o oVar) {
        if (this.f24999K == null) {
            return;
        }
        h();
        C3042n c3042n = this.f25001M.f25009R.f8772J;
        if (c3042n != null) {
            c3042n.l();
        }
    }

    @Override // p071j.b
    public final void n(int i8) {
        o(this.f25001M.f25004M.getResources().getString(i8));
    }

    @Override // p071j.b
    public final void o(CharSequence charSequence) {
        this.f25001M.f25009R.setTitle(charSequence);
    }

    @Override // p071j.b
    public final void p(boolean z7) {
        this.f25595H = z7;
        this.f25001M.f25009R.setTitleOptional(z7);
    }
}
