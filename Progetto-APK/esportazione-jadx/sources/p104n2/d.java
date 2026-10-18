package p104n2;

import Y5.AbstractC0417d;
import androidx.work.impl.WorkDatabase;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import p007a6.a;
import p027d2.q;
import p027d2.t;
import p034e2.A;
import p034e2.n;
import p034e2.p;
import p034e2.y;
import p096m2.c;
import p096m2.l;
import p096m2.s;

/* JADX INFO: loaded from: classes.dex */
public abstract class d implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27432G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f27433H = new l(7);

    public static void a(y yVar, String str) {
        A a8;
        boolean z7;
        WorkDatabase workDatabase = yVar.f24844c;
        s sVarU = workDatabase.u();
        c cVarP = workDatabase.p();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            int iE = sVarU.e(str2);
            if (iE != 3 && iE != 4) {
                sVarU.l(6, str2);
            }
            linkedList.addAll(cVarP.h(str2));
        }
        n nVar = yVar.f24847f;
        synchronized (nVar.f24824R) {
            try {
                p027d2.n.d().a(n.f24812S, "Processor cancelling " + str);
                nVar.f24822P.add(str);
                a8 = (A) nVar.f24818L.remove(str);
                z7 = a8 != null;
                if (a8 == null) {
                    a8 = (A) nVar.f24819M.remove(str);
                }
                if (a8 != null) {
                    nVar.f24820N.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        n.d(str, a8);
        if (z7) {
            nVar.l();
        }
        Iterator it = yVar.f24846e.iterator();
        while (it.hasNext()) {
            ((p) it.next()).d(str);
        }
    }

    public abstract void b();

    public abstract void c();

    public abstract void d();

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f27432G;
        Object obj = this.f27433H;
        switch (i8) {
            case 0:
                try {
                    d();
                    ((l) obj).m(t.f24645A);
                    return;
                } catch (Throwable th) {
                    ((l) obj).m(new q(th));
                    return;
                }
            case 1:
                AbstractC0417d abstractC0417d = (AbstractC0417d) obj;
                AbstractC0417d abstractC0417dF = abstractC0417d.f();
                try {
                    c();
                    return;
                } finally {
                    abstractC0417d.g(abstractC0417dF);
                }
            default:
                try {
                    ((a) obj).getClass();
                    throw new IOException("Unable to perform write due to unavailable sink.");
                } catch (Exception unused) {
                    ((a) obj).getClass();
                    throw null;
                }
        }
    }
}
