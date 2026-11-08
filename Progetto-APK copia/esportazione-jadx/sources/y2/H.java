package y2;

import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class H implements InterfaceC3236h, InterfaceC3235g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final i f31265G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC3235g f31266H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public volatile int f31267I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public volatile C3233e f31268J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public volatile Object f31269K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public volatile C2.B f31270L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public volatile C3234f f31271M;

    public H(i iVar, InterfaceC3235g interfaceC3235g) {
        this.f31265G = iVar;
        this.f31266H = interfaceC3235g;
    }

    @Override // y2.InterfaceC3235g
    public final void a(p173w2.i iVar, Exception exc, com.bumptech.glide.load.data.e eVar, p173w2.a aVar) {
        this.f31266H.a(iVar, exc, eVar, this.f31270L.f1349c.d());
    }

    @Override // y2.InterfaceC3235g
    public final void b() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:33:0x007b  */
    /* JADX WARN: Code duplicated, block: B:42:0x008b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0032 A[SYNTHETIC] */
    @Override // y2.InterfaceC3236h
    public final boolean c() {
        if (this.f31269K != null) {
            Object obj = this.f31269K;
            this.f31269K = null;
            try {
                if (!e(obj)) {
                    return true;
                }
            } catch (IOException e8) {
                if (Log.isLoggable("SourceGenerator", 3)) {
                    Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e8);
                }
            }
        }
        if (this.f31268J != null && this.f31268J.c()) {
            return true;
        }
        this.f31268J = null;
        this.f31270L = null;
        boolean z7 = false;
        while (!z7 && this.f31267I < this.f31265G.b().size()) {
            ArrayList arrayListB = this.f31265G.b();
            int i8 = this.f31267I;
            this.f31267I = i8 + 1;
            this.f31270L = (C2.B) arrayListB.get(i8);
            if (this.f31270L != null) {
                o oVar = this.f31265G.f31307p;
                p173w2.a aVarD = this.f31270L.f1349c.d();
                switch (((n) oVar).f31350d) {
                    case 1:
                        if (this.f31265G.c(this.f31270L.f1349c.a()) != null) {
                            this.f31270L.f1349c.e(this.f31265G.f31306o, new p096m2.l(this, this.f31270L, 9));
                            z7 = true;
                        }
                        break;
                    case 2:
                        if (aVarD == p173w2.a.f30983I || aVarD == p173w2.a.f30985K) {
                            if (this.f31265G.c(this.f31270L.f1349c.a()) != null) {
                                break;
                            }
                        }
                        this.f31270L.f1349c.e(this.f31265G.f31306o, new p096m2.l(this, this.f31270L, 9));
                        z7 = true;
                        break;
                    default:
                        if (aVarD != p173w2.a.f30982H) {
                            if (this.f31265G.c(this.f31270L.f1349c.a()) != null) {
                                break;
                            }
                        }
                        this.f31270L.f1349c.e(this.f31265G.f31306o, new p096m2.l(this, this.f31270L, 9));
                        z7 = true;
                        break;
                }
            }
        }
        return z7;
    }

    @Override // y2.InterfaceC3236h
    public final void cancel() {
        C2.B b8 = this.f31270L;
        if (b8 != null) {
            b8.f1349c.cancel();
        }
    }

    @Override // y2.InterfaceC3235g
    public final void d(p173w2.i iVar, Object obj, com.bumptech.glide.load.data.e eVar, p173w2.a aVar, p173w2.i iVar2) {
        this.f31266H.d(iVar, obj, eVar, this.f31270L.f1349c.d(), iVar);
    }

    public final boolean e(Object obj) throws Throwable {
        int i8 = P2.i.f5894b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z7 = false;
        try {
            com.bumptech.glide.load.data.g gVarH = this.f31265G.f31294c.b().h(obj);
            Object objA = gVarH.a();
            p173w2.c cVarE = this.f31265G.e(objA);
            k kVar = new k(cVarE, objA, this.f31265G.f31300i);
            p173w2.i iVar = this.f31270L.f1347a;
            i iVar2 = this.f31265G;
            C3234f c3234f = new C3234f(iVar, iVar2.f31305n);
            A2.a aVarA = iVar2.f31299h.a();
            aVarA.c(c3234f, kVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + c3234f + ", data: " + obj + ", encoder: " + cVarE + ", duration: " + P2.i.a(jElapsedRealtimeNanos));
            }
            if (aVarA.a(c3234f) != null) {
                this.f31271M = c3234f;
                this.f31268J = new C3233e(Collections.singletonList(this.f31270L.f1347a), this.f31265G, this);
                this.f31270L.f1349c.c();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.f31271M + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f31266H.d(this.f31270L.f1347a, gVarH.a(), this.f31270L.f1349c, this.f31270L.f1349c.d(), this.f31270L.f1347a);
                return false;
            } catch (Throwable th) {
                th = th;
                z7 = true;
                if (!z7) {
                    this.f31270L.f1349c.c();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
