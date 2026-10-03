package p032e0;

import android.os.Looper;
import java.util.Map;
import p000a.f;
import p000a.r;
import p093m.b;
import p101n.d;
import p101n.g;

/* JADX INFO: loaded from: classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f24765k = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f24766a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f24767b = new g();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24768c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f24769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Object f24770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Object f24771f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f24772g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f24773h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f24774i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f f24775j;

    public t() {
        Object obj = f24765k;
        this.f24771f = obj;
        this.f24775j = new f(this, 11);
        this.f24770e = obj;
        this.f24772g = -1;
    }

    public static void a(String str) {
        b.g0().f26649c.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(r.g("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(s sVar) {
        if (this.f24773h) {
            this.f24774i = true;
            return;
        }
        this.f24773h = true;
        do {
            this.f24774i = false;
            if (sVar != null) {
                if (sVar.f24762b) {
                    int i8 = sVar.f24763c;
                    int i9 = this.f24772g;
                    if (i8 < i9) {
                        sVar.f24763c = i9;
                        sVar.f24761a.onChanged(this.f24770e);
                    }
                }
                sVar = null;
            } else {
                g gVar = this.f24767b;
                gVar.getClass();
                d dVar = new d(gVar);
                gVar.f27302I.put(dVar, Boolean.FALSE);
                while (dVar.hasNext()) {
                    s sVar2 = (s) ((Map.Entry) dVar.next()).getValue();
                    if (sVar2.f24762b) {
                        int i10 = sVar2.f24763c;
                        int i11 = this.f24772g;
                        if (i10 < i11) {
                            sVar2.f24763c = i11;
                            sVar2.f24761a.onChanged(this.f24770e);
                        }
                    }
                    if (this.f24774i) {
                        break;
                    }
                }
            }
        } while (this.f24774i);
        this.f24773h = false;
    }

    public abstract void c(Object obj);
}
