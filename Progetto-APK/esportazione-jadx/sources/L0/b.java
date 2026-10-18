package L0;

import B0.AbstractC0051h;
import B0.C0073x;
import B0.L;
import B0.O;
import B0.Z;
import O0.C0300y;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.d;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;
import p094m0.N;
import p178x.e;

/* JADX INFO: loaded from: classes.dex */
public final class b extends AbstractC0051h implements Handler.Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final a f4604G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final L f4605H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Handler f4606I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p033e1.a f4607J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public d f4608K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f4609L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f4610M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f4611N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public N f4612O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public long f4613P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(L l4, Looper looper) {
        super(5);
        U4.b bVar = a.f4603h;
        this.f4605H = l4;
        this.f4606I = looper == null ? null : new Handler(looper, this);
        this.f4604G = bVar;
        this.f4607J = new p033e1.a();
        this.f4613P = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    public final void a(N n7, ArrayList arrayList) {
        int i8 = 0;
        while (true) {
            M[] mArr = n7.f26777a;
            if (i8 >= mArr.length) {
                return;
            }
            C3136t wrappedMetadataFormat = mArr[i8].getWrappedMetadataFormat();
            if (wrappedMetadataFormat != null) {
                U4.b bVar = (U4.b) this.f4604G;
                if (bVar.i0(wrappedMetadataFormat)) {
                    d dVarP = bVar.P(wrappedMetadataFormat);
                    byte[] wrappedMetadataBytes = mArr[i8].getWrappedMetadataBytes();
                    wrappedMetadataBytes.getClass();
                    p033e1.a aVar = this.f4607J;
                    aVar.clear();
                    aVar.f(wrappedMetadataBytes.length);
                    aVar.f30904I.put(wrappedMetadataBytes);
                    aVar.g();
                    N nG = dVarP.g(aVar);
                    if (nG != null) {
                        a(nG, arrayList);
                    }
                } else {
                    arrayList.add(mArr[i8]);
                }
            } else {
                arrayList.add(mArr[i8]);
            }
            i8++;
        }
    }

    public final long b(long j8) {
        H1.i(j8 != -9223372036854775807L);
        H1.i(this.f4613P != -9223372036854775807L);
        return j8 - this.f4613P;
    }

    public final void c(N n7) {
        L l4 = this.f4605H;
        O o4 = l4.f743G;
        K kA = o4.f776M0.a();
        int i8 = 0;
        while (true) {
            M[] mArr = n7.f26777a;
            if (i8 >= mArr.length) {
                break;
            }
            mArr[i8].populateMediaMetadata(kA);
            i8++;
        }
        o4.f776M0 = new p094m0.L(kA);
        p094m0.L lN = o4.n();
        boolean zEquals = lN.equals(o4.f813u0);
        e eVar = o4.f785S;
        if (!zEquals) {
            o4.f813u0 = lN;
            eVar.j(14, new C0073x(l4, 10));
        }
        eVar.j(28, new C0073x(n7, 11));
        eVar.g();
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        c((N) message.obj);
        return true;
    }

    @Override // B0.AbstractC0051h
    public final boolean isEnded() {
        return this.f4610M;
    }

    @Override // B0.AbstractC0051h
    public final boolean isReady() {
        return true;
    }

    @Override // B0.AbstractC0051h
    public final void onDisabled() {
        this.f4612O = null;
        this.f4608K = null;
        this.f4613P = -9223372036854775807L;
    }

    @Override // B0.AbstractC0051h
    public final void onPositionReset(long j8, boolean z7) {
        this.f4612O = null;
        this.f4609L = false;
        this.f4610M = false;
    }

    @Override // B0.AbstractC0051h
    public final void onStreamChanged(C3136t[] c3136tArr, long j8, long j9, C0300y c0300y) {
        this.f4608K = ((U4.b) this.f4604G).P(c3136tArr[0]);
        N n7 = this.f4612O;
        if (n7 != null) {
            long j10 = n7.f26778b;
            long j11 = (this.f4613P + j10) - j9;
            if (j10 != j11) {
                n7 = new N(j11, n7.f26777a);
            }
            this.f4612O = n7;
        }
        this.f4613P = j9;
    }

    @Override // B0.AbstractC0051h
    public final void render(long j8, long j9) {
        boolean z7;
        do {
            z7 = false;
            if (!this.f4609L && this.f4612O == null) {
                p033e1.a aVar = this.f4607J;
                aVar.clear();
                Z formatHolder = getFormatHolder();
                int source = readSource(formatHolder, aVar, 0);
                if (source == -4) {
                    if (aVar.isEndOfStream()) {
                        this.f4609L = true;
                    } else if (aVar.f30906K >= getLastResetPositionUs()) {
                        aVar.f24777O = this.f4611N;
                        aVar.g();
                        d dVar = this.f4608K;
                        String str = p117p0.M.f28050a;
                        N nG = dVar.g(aVar);
                        if (nG != null) {
                            ArrayList arrayList = new ArrayList(nG.f26777a.length);
                            a(nG, arrayList);
                            if (!arrayList.isEmpty()) {
                                this.f4612O = new N(b(aVar.f30906K), (M[]) arrayList.toArray(new M[0]));
                            }
                        }
                    }
                } else if (source == -5) {
                    C3136t c3136t = formatHolder.f904b;
                    c3136t.getClass();
                    this.f4611N = c3136t.f27046t;
                }
            }
            N n7 = this.f4612O;
            if (n7 != null && n7.f26778b <= b(j8)) {
                N n8 = this.f4612O;
                Handler handler = this.f4606I;
                if (handler != null) {
                    handler.obtainMessage(1, n8).sendToTarget();
                } else {
                    c(n8);
                }
                this.f4612O = null;
                z7 = true;
            }
            if (this.f4609L && this.f4612O == null) {
                this.f4610M = true;
            }
        } while (z7);
    }

    @Override // B0.D0
    public final int supportsFormat(C3136t c3136t) {
        if (((U4.b) this.f4604G).i0(c3136t)) {
            return A0.O.o(c3136t.f27025P == 0 ? 4 : 2, 0, 0, 0);
        }
        return A0.O.o(0, 0, 0, 0);
    }
}
