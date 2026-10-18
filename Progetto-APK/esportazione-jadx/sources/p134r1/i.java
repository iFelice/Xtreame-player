package p134r1;

import B0.C0073x;
import I2.c;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayDeque;
import p117p0.M;
import p126q1.e;
import p126q1.j;

/* JADX INFO: loaded from: classes.dex */
public abstract class i implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f29774a = new ArrayDeque();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f29775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f29776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public g f29777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f29778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f29779f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f29780g;

    public i() {
        for (int i8 = 0; i8 < 10; i8++) {
            this.f29774a.add(new g());
        }
        this.f29775b = new ArrayDeque();
        for (int i9 = 0; i9 < 2; i9++) {
            ArrayDeque arrayDeque = this.f29775b;
            C0073x c0073x = new C0073x(this, 24);
            h hVar = new h();
            hVar.f29773I = c0073x;
            arrayDeque.add(hVar);
        }
        this.f29776c = new ArrayDeque();
        this.f29780g = -9223372036854775807L;
    }

    @Override // p126q1.e
    public final void a(long j8) {
        this.f29778e = j8;
    }

    public abstract c b();

    public abstract void c(g gVar);

    @Override // p171w0.d
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public j dequeueOutputBuffer() {
        ArrayDeque arrayDeque = this.f29775b;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        while (true) {
            ArrayDeque arrayDeque2 = this.f29776c;
            if (!arrayDeque2.isEmpty()) {
                g gVar = (g) arrayDeque2.peek();
                String str = M.f28050a;
                if (gVar.f30906K > this.f29778e) {
                    break;
                }
                g gVar2 = (g) arrayDeque2.poll();
                boolean zIsEndOfStream = gVar2.isEndOfStream();
                ArrayDeque arrayDeque3 = this.f29774a;
                if (zIsEndOfStream) {
                    j jVar = (j) arrayDeque.pollFirst();
                    jVar.addFlag(4);
                    gVar2.clear();
                    arrayDeque3.add(gVar2);
                    return jVar;
                }
                c(gVar2);
                if (e()) {
                    c cVarB = b();
                    j jVar2 = (j) arrayDeque.pollFirst();
                    long j8 = gVar2.f30906K;
                    jVar2.timeUs = j8;
                    jVar2.f29553G = cVarB;
                    jVar2.f29554H = j8;
                    gVar2.clear();
                    arrayDeque3.add(gVar2);
                    return jVar2;
                }
                gVar2.clear();
                arrayDeque3.add(gVar2);
            } else {
                break;
            }
        }
        return null;
    }

    @Override // p171w0.d
    public final Object dequeueInputBuffer() {
        H1.i(this.f29777d == null);
        ArrayDeque arrayDeque = this.f29774a;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        g gVar = (g) arrayDeque.pollFirst();
        this.f29777d = gVar;
        return gVar;
    }

    public abstract boolean e();

    @Override // p171w0.d
    public void flush() {
        ArrayDeque arrayDeque;
        this.f29779f = 0L;
        this.f29778e = 0L;
        while (true) {
            ArrayDeque arrayDeque2 = this.f29776c;
            boolean zIsEmpty = arrayDeque2.isEmpty();
            arrayDeque = this.f29774a;
            if (zIsEmpty) {
                break;
            }
            g gVar = (g) arrayDeque2.poll();
            String str = M.f28050a;
            gVar.clear();
            arrayDeque.add(gVar);
        }
        g gVar2 = this.f29777d;
        if (gVar2 != null) {
            gVar2.clear();
            arrayDeque.add(gVar2);
            this.f29777d = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0034  */
    @Override // p171w0.d
    public final void queueInputBuffer(Object obj) {
        p126q1.i iVar = (p126q1.i) obj;
        H1.d(iVar == this.f29777d);
        g gVar = (g) iVar;
        if (gVar.isEndOfStream()) {
            long j8 = this.f29779f;
            this.f29779f = 1 + j8;
            gVar.f29772P = j8;
            this.f29776c.add(gVar);
        } else {
            long j9 = gVar.f30906K;
            if (j9 != Long.MIN_VALUE) {
                long j10 = this.f29780g;
                if (j10 == -9223372036854775807L || j9 >= j10) {
                    long j11 = this.f29779f;
                    this.f29779f = 1 + j11;
                    gVar.f29772P = j11;
                    this.f29776c.add(gVar);
                } else {
                    gVar.clear();
                    this.f29774a.add(gVar);
                }
            } else {
                long j12 = this.f29779f;
                this.f29779f = 1 + j12;
                gVar.f29772P = j12;
                this.f29776c.add(gVar);
            }
        }
        this.f29777d = null;
    }

    @Override // p171w0.d
    public final void setOutputStartTimeUs(long j8) {
        this.f29780g = j8;
    }

    @Override // p171w0.d
    public void release() {
    }
}
