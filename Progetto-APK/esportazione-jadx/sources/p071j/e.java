package p071j;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import p079k.m;
import p079k.o;
import p086l.C3042n;

/* JADX INFO: loaded from: classes.dex */
public final class e extends b implements m {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Context f25602I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ActionBarContextView f25603J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public a f25604K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public WeakReference f25605L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f25606M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public o f25607N;

    @Override // p071j.b
    public final void a() {
        if (this.f25606M) {
            return;
        }
        this.f25606M = true;
        this.f25604K.d(this);
    }

    @Override // p071j.b
    public final View b() {
        WeakReference weakReference = this.f25605L;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // p071j.b
    public final o c() {
        return this.f25607N;
    }

    @Override // p071j.b
    public final MenuInflater d() {
        return new i(this.f25603J.getContext());
    }

    @Override // p071j.b
    public final CharSequence e() {
        return this.f25603J.getSubtitle();
    }

    @Override // p071j.b
    public final CharSequence f() {
        return this.f25603J.getTitle();
    }

    @Override // p079k.m
    public final boolean g(o oVar, MenuItem menuItem) {
        return this.f25604K.e(this, menuItem);
    }

    @Override // p071j.b
    public final void h() {
        this.f25604K.h(this, this.f25607N);
    }

    @Override // p071j.b
    public final boolean i() {
        return this.f25603J.f8787b0;
    }

    @Override // p071j.b
    public final void j(View view) {
        this.f25603J.setCustomView(view);
        this.f25605L = view != null ? new WeakReference(view) : null;
    }

    @Override // p071j.b
    public final void k(int i8) {
        l(this.f25602I.getString(i8));
    }

    @Override // p071j.b
    public final void l(CharSequence charSequence) {
        this.f25603J.setSubtitle(charSequence);
    }

    @Override // p079k.m
    public final void m(o oVar) {
        h();
        C3042n c3042n = this.f25603J.f8772J;
        if (c3042n != null) {
            c3042n.l();
        }
    }

    @Override // p071j.b
    public final void n(int i8) {
        o(this.f25602I.getString(i8));
    }

    @Override // p071j.b
    public final void o(CharSequence charSequence) {
        this.f25603J.setTitle(charSequence);
    }

    @Override // p071j.b
    public final void p(boolean z7) {
        this.f25595H = z7;
        this.f25603J.setTitleOptional(z7);
    }
}
