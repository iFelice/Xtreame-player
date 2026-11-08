package p071j;

import N.U;
import N.V;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Interpolator f25656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public V f25657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f25658e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f25655b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final j f25659f = new j(this);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f25654a = new ArrayList();

    public final void a() {
        if (this.f25658e) {
            Iterator it = this.f25654a.iterator();
            while (it.hasNext()) {
                ((U) it.next()).b();
            }
            this.f25658e = false;
        }
    }

    public final void b() {
        View view;
        if (this.f25658e) {
            return;
        }
        for (U u7 : this.f25654a) {
            long j8 = this.f25655b;
            if (j8 >= 0) {
                u7.c(j8);
            }
            Interpolator interpolator = this.f25656c;
            if (interpolator != null && (view = (View) u7.f4863a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f25657d != null) {
                u7.d(this.f25659f);
            }
            View view2 = (View) u7.f4863a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f25658e = true;
    }
}
