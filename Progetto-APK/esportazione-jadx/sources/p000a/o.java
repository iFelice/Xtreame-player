package p000a;

import C6.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f8596a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f8598c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8597b = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f8599d = new ArrayList();

    public o(l lVar, c cVar) {
    }

    public final void a() {
        synchronized (this.f8597b) {
            try {
                this.f8598c = true;
                Iterator it = this.f8599d.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).invoke();
                }
                this.f8599d.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
