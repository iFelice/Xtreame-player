package e7;

import Y.AbstractComponentCallbacksC0406s;
import Y.C0389a;
import Y.K;
import Y.Q;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends p003a2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final K f24875b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f24879f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ d f24880g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0389a f24877d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AbstractComponentCallbacksC0406s f24878e = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24876c = 1;

    public c(d dVar, K k8) {
        this.f24880g = dVar;
        this.f24875b = k8;
    }

    @Override // p003a2.a
    public final void a(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (this.f24877d == null) {
            K k8 = this.f24875b;
            k8.getClass();
            this.f24877d = new C0389a(k8);
        }
        C0389a c0389a = this.f24877d;
        c0389a.getClass();
        K k9 = abstractComponentCallbacksC0406s.f7949Y;
        if (k9 != null && k9 != c0389a.f7828r) {
            throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + abstractComponentCallbacksC0406s.toString() + " is already attached to a FragmentManager.");
        }
        c0389a.b(new Q(6, abstractComponentCallbacksC0406s));
        if (abstractComponentCallbacksC0406s.equals(this.f24878e)) {
            this.f24878e = null;
        }
    }

    @Override // p003a2.a
    public final void b() {
        C0389a c0389a = this.f24877d;
        if (c0389a != null) {
            if (!this.f24879f) {
                try {
                    this.f24879f = true;
                    if (c0389a.f7819i) {
                        throw new IllegalStateException("This transaction is already being added to the back stack");
                    }
                    c0389a.f7828r.y(c0389a, true);
                    this.f24879f = false;
                } catch (Throwable th) {
                    this.f24879f = false;
                    throw th;
                }
            }
            this.f24877d = null;
        }
    }

    @Override // p003a2.a
    public final int c() {
        return this.f24880g.f24883T0.size();
    }

    @Override // p003a2.a
    public final void e(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }
}
