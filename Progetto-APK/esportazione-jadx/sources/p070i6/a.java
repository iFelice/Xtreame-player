package p070i6;

import S3.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p100m6.b;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25579G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile boolean f25580H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f25581I;

    public /* synthetic */ a(int i8) {
        this.f25579G = i8;
    }

    private boolean c(b bVar) {
        b.a(bVar, "Disposable item is null");
        if (this.f25580H) {
            return false;
        }
        synchronized (this) {
            try {
                return this.f25580H ? false : false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void d() {
        if (this.f25580H) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f25580H) {
                    return;
                }
                this.f25580H = true;
                this.f25581I = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p070i6.b
    public final void a() {
        switch (this.f25579G) {
            case 0:
                d();
                return;
            default:
                if (this.f25580H) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (!this.f25580H) {
                            this.f25580H = true;
                            List list = (List) this.f25581I;
                            ArrayList arrayList = null;
                            this.f25581I = null;
                            if (list != null) {
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    try {
                                        ((b) it.next()).a();
                                    } catch (Throwable th) {
                                        e.q(th);
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        arrayList.add(th);
                                    }
                                }
                                if (arrayList != null) {
                                    if (arrayList.size() != 1) {
                                        throw new p078j6.b(arrayList);
                                    }
                                    throw p131q6.b.a((Throwable) arrayList.get(0));
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
        }
    }

    public final boolean b(b bVar) {
        switch (this.f25579G) {
            case 0:
                return c(bVar);
            default:
                b.a(bVar, "Disposable item is null");
                boolean z7 = false;
                if (!this.f25580H) {
                    synchronized (this) {
                        try {
                            if (!this.f25580H) {
                                List list = (List) this.f25581I;
                                if (list != null && list.remove(bVar)) {
                                    z7 = true;
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    break;
                }
                return z7;
        }
    }
}
