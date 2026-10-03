package A2;

import P2.o;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f620a;

    public c(int i8) {
        if (i8 != 1) {
            this.f620a = new ArrayDeque();
        } else {
            char[] cArr = o.f5906a;
            this.f620a = new ArrayDeque(0);
        }
    }

    public final b a() {
        b bVar;
        synchronized (this.f620a) {
            bVar = (b) this.f620a.poll();
        }
        return bVar == null ? new b() : bVar;
    }

    public final void b(b bVar) {
        synchronized (this.f620a) {
            try {
                if (this.f620a.size() < 10) {
                    this.f620a.offer(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void c(p159u2.d dVar) {
        dVar.f30468b = null;
        dVar.f30469c = null;
        this.f620a.offer(dVar);
    }
}
