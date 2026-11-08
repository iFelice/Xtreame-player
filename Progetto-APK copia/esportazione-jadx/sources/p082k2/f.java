package p082k2;

import U0.r;
import android.content.Context;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;
import p074j2.b;
import p096m2.u;
import p119p2.a;
import p162u6.o;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f25920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f25921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f25922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedHashSet f25923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f25924e;

    public f(Context context, u uVar) {
        this.f25920a = uVar;
        Context applicationContext = context.getApplicationContext();
        q0.g(applicationContext, "context.applicationContext");
        this.f25921b = applicationContext;
        this.f25922c = new Object();
        this.f25923d = new LinkedHashSet();
    }

    public abstract Object a();

    public final void b(b bVar) {
        q0.h(bVar, "listener");
        synchronized (this.f25922c) {
            if (this.f25923d.remove(bVar) && this.f25923d.isEmpty()) {
                e();
            }
        }
    }

    public final void c(Object obj) {
        synchronized (this.f25922c) {
            Object obj2 = this.f25924e;
            if (obj2 == null || !q0.c(obj2, obj)) {
                this.f25924e = obj;
                ((Executor) ((u) this.f25920a).f27280J).execute(new r(9, o.C(this.f25923d), this));
            }
        }
    }

    public abstract void d();

    public abstract void e();
}
