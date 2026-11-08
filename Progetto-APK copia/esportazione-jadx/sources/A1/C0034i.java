package A1;

import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.util.Collections;
import java.util.List;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;

/* JADX INFO: renamed from: A1.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0034i implements InterfaceC0035j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f406d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f408f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f409g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f410h;

    public C0034i(List list) {
        this.f403a = 0;
        this.f409g = list;
        this.f404b = "video/mp2t";
        this.f410h = new L[list.size()];
        this.f406d = -9223372036854775807L;
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        switch (this.f403a) {
            case 0:
                this.f405c = false;
                this.f406d = -9223372036854775807L;
                break;
            default:
                this.f405c = false;
                this.f406d = -9223372036854775807L;
                break;
        }
    }

    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) {
        switch (this.f403a) {
            case 0:
                if (this.f405c) {
                    if (this.f407e == 2) {
                        if (e8.a() != 0) {
                            if (e8.z() != 32) {
                                this.f405c = false;
                            }
                            this.f407e--;
                            if (!this.f405c) {
                            }
                        }
                    }
                    if (this.f407e == 1) {
                        if (e8.a() != 0) {
                            if (e8.z() != 0) {
                                this.f405c = false;
                            }
                            this.f407e--;
                            if (!this.f405c) {
                            }
                        }
                    }
                    int i8 = e8.f28036b;
                    int iA = e8.a();
                    for (L l4 : (L[]) this.f410h) {
                        e8.L(i8);
                        l4.e(iA, e8);
                    }
                    this.f408f += iA;
                }
                break;
            default:
                H1.j((L) this.f410h);
                if (this.f405c) {
                    int iA2 = e8.a();
                    int i9 = this.f408f;
                    if (i9 < 10) {
                        int iMin = Math.min(iA2, 10 - i9);
                        System.arraycopy(e8.f28035a, e8.f28036b, ((p117p0.E) this.f409g).f28035a, this.f408f, iMin);
                        if (this.f408f + iMin == 10) {
                            ((p117p0.E) this.f409g).L(0);
                            if (73 == ((p117p0.E) this.f409g).z() && 68 == ((p117p0.E) this.f409g).z() && 51 == ((p117p0.E) this.f409g).z()) {
                                ((p117p0.E) this.f409g).M(3);
                                this.f407e = ((p117p0.E) this.f409g).y() + 10;
                            } else {
                                p117p0.x.f("Id3Reader", "Discarding invalid ID3 tag");
                                this.f405c = false;
                            }
                        }
                    }
                    int iMin2 = Math.min(iA2, this.f407e - this.f408f);
                    ((L) this.f410h).e(iMin2, e8);
                    this.f408f += iMin2;
                    break;
                }
                break;
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        switch (this.f403a) {
            case 0:
                for (int i9 = 0; i9 < ((L[]) this.f410h).length; i9++) {
                    G g8 = (G) ((List) this.f409g).get(i9);
                    i8.a();
                    i8.b();
                    L lT = uVar.t(i8.f309d, 3);
                    C3135s c3135s = new C3135s();
                    i8.b();
                    c3135s.f26983a = i8.f310e;
                    c3135s.f26995m = O.p(this.f404b);
                    c3135s.f26996n = O.p("application/dvbsubs");
                    c3135s.f26999q = Collections.singletonList(g8.f300b);
                    c3135s.f26986d = g8.f299a;
                    lT.b(new C3136t(c3135s));
                    ((L[]) this.f410h)[i9] = lT;
                }
                break;
            default:
                i8.a();
                i8.b();
                L lT2 = uVar.t(i8.f309d, 5);
                this.f410h = lT2;
                C3135s c3135s2 = new C3135s();
                i8.b();
                c3135s2.f26983a = i8.f310e;
                c3135s2.f26995m = O.p(this.f404b);
                c3135s2.f26996n = O.p("application/id3");
                lT2.b(new C3136t(c3135s2));
                break;
        }
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
        int i8;
        switch (this.f403a) {
            case 0:
                if (this.f405c) {
                    H1.i(this.f406d != -9223372036854775807L);
                    for (L l4 : (L[]) this.f410h) {
                        l4.d(this.f406d, 1, this.f408f, 0, null);
                    }
                    this.f405c = false;
                }
                break;
            default:
                H1.j((L) this.f410h);
                if (this.f405c && (i8 = this.f407e) != 0 && this.f408f == i8) {
                    H1.i(this.f406d != -9223372036854775807L);
                    ((L) this.f410h).d(this.f406d, 1, this.f407e, 0, null);
                    this.f405c = false;
                    break;
                }
                break;
        }
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        switch (this.f403a) {
            case 0:
                if ((i8 & 4) != 0) {
                    this.f405c = true;
                    this.f406d = j8;
                    this.f408f = 0;
                    this.f407e = 2;
                    break;
                }
                break;
            default:
                if ((i8 & 4) != 0) {
                    this.f405c = true;
                    this.f406d = j8;
                    this.f407e = 0;
                    this.f408f = 0;
                    break;
                }
                break;
        }
    }

    public C0034i() {
        this.f403a = 1;
        this.f404b = "video/mp2t";
        this.f409g = new p117p0.E(10);
        this.f406d = -9223372036854775807L;
    }
}
