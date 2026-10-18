package E1;

import android.content.ComponentName;
import android.content.Context;
import java.util.Objects;

/* JADX INFO: renamed from: E1.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0179n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f0 f2786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p064i0.a f2787c = new p064i0.a(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0185u f2788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0174i f2789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2790f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C0180o f2791g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2792h;

    public AbstractC0179n(Context context, f0 f0Var) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        this.f2785a = context;
        if (f0Var == null) {
            this.f2786b = new f0(new ComponentName(context, getClass()));
        } else {
            this.f2786b = f0Var;
        }
    }

    public AbstractC0177l c(String str) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("initialMemberRouteId cannot be null.");
    }

    public abstract AbstractC0178m d(String str);

    public AbstractC0178m e(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        if (str2 != null) {
            return d(str);
        }
        throw new IllegalArgumentException("routeGroupId cannot be null");
    }

    public abstract void f(C0174i c0174i);

    public final void g(C0180o c0180o) {
        H.b();
        if (this.f2791g != c0180o) {
            this.f2791g = c0180o;
            if (this.f2792h) {
                return;
            }
            this.f2792h = true;
            this.f2787c.sendEmptyMessage(1);
        }
    }

    public final void h(C0174i c0174i) {
        H.b();
        if (Objects.equals(this.f2789e, c0174i)) {
            return;
        }
        this.f2789e = c0174i;
        if (this.f2790f) {
            return;
        }
        this.f2790f = true;
        this.f2787c.sendEmptyMessage(2);
    }
}
