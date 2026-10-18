package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class E2 implements F2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f12930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f12931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12933e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f12934f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f12935g;

    public E2() {
        this.f12929a = 1;
        this.f12934f = new C1534jr(10);
        this.f12931c = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) {
        switch (this.f12929a) {
            case 0:
                if (this.f12930b) {
                    if (this.f12932d == 2) {
                        if (c1534jr.o() != 0) {
                            if (c1534jr.w() != 32) {
                                this.f12930b = false;
                            }
                            this.f12932d--;
                            if (!this.f12930b) {
                            }
                        }
                    }
                    if (this.f12932d == 1) {
                        if (c1534jr.o() != 0) {
                            if (c1534jr.w() != 0) {
                                this.f12930b = false;
                            }
                            this.f12932d--;
                            if (!this.f12930b) {
                            }
                        }
                    }
                    int i8 = c1534jr.f19516b;
                    int iO = c1534jr.o();
                    for (InterfaceC1234e0 interfaceC1234e0 : (InterfaceC1234e0[]) this.f12935g) {
                        c1534jr.j(i8);
                        interfaceC1234e0.f(iO, c1534jr);
                    }
                    this.f12933e += iO;
                }
                break;
            default:
                p113o3.r.x((InterfaceC1234e0) this.f12935g);
                if (this.f12930b) {
                    int iO2 = c1534jr.o();
                    int i9 = this.f12933e;
                    if (i9 < 10) {
                        int iMin = Math.min(iO2, 10 - i9);
                        byte[] bArr = c1534jr.f19515a;
                        int i10 = c1534jr.f19516b;
                        C1534jr c1534jr2 = (C1534jr) this.f12934f;
                        System.arraycopy(bArr, i10, c1534jr2.f19515a, this.f12933e, iMin);
                        if (this.f12933e + iMin == 10) {
                            c1534jr2.j(0);
                            if (c1534jr2.w() == 73 && c1534jr2.w() == 68 && c1534jr2.w() == 51) {
                                c1534jr2.k(3);
                                this.f12932d = c1534jr2.v() + 10;
                            } else {
                                Zo.f("Id3Reader", "Discarding invalid ID3 tag");
                                this.f12930b = false;
                            }
                        }
                    }
                    int iMin2 = Math.min(iO2, this.f12932d - this.f12933e);
                    ((InterfaceC1234e0) this.f12935g).f(iMin2, c1534jr);
                    this.f12933e += iMin2;
                    break;
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        switch (this.f12929a) {
            case 0:
                for (int i9 = 0; i9 < ((InterfaceC1234e0[]) this.f12935g).length; i9++) {
                    Y2 y7 = (Y2) ((List) this.f12934f).get(i9);
                    i8.c();
                    i8.d();
                    InterfaceC1234e0 interfaceC1234e0H = n7.h(i8.f309d, 3);
                    K k8 = new K();
                    i8.d();
                    k8.f14260a = i8.f310e;
                    k8.f("application/dvbsubs");
                    k8.f14274o = Collections.singletonList(y7.f17567b);
                    k8.f14263d = y7.f17566a;
                    interfaceC1234e0H.d(new C1804p0(k8));
                    ((InterfaceC1234e0[]) this.f12935g)[i9] = interfaceC1234e0H;
                }
                break;
            default:
                i8.c();
                i8.d();
                InterfaceC1234e0 interfaceC1234e0H2 = n7.h(i8.f309d, 5);
                this.f12935g = interfaceC1234e0H2;
                K k9 = new K();
                i8.d();
                k9.f14260a = i8.f310e;
                k9.f("application/id3");
                interfaceC1234e0H2.d(new C1804p0(k9));
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        switch (this.f12929a) {
            case 0:
                if ((i8 & 4) != 0) {
                    this.f12930b = true;
                    this.f12931c = j8;
                    this.f12933e = 0;
                    this.f12932d = 2;
                    break;
                }
                break;
            default:
                if ((i8 & 4) != 0) {
                    this.f12930b = true;
                    this.f12931c = j8;
                    this.f12932d = 0;
                    this.f12933e = 0;
                    break;
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
        int i8;
        switch (this.f12929a) {
            case 0:
                if (this.f12930b) {
                    p113o3.r.M(this.f12931c != -9223372036854775807L);
                    for (InterfaceC1234e0 interfaceC1234e0 : (InterfaceC1234e0[]) this.f12935g) {
                        interfaceC1234e0.b(this.f12931c, 1, this.f12933e, 0, null);
                    }
                    this.f12930b = false;
                }
                break;
            default:
                p113o3.r.x((InterfaceC1234e0) this.f12935g);
                if (this.f12930b && (i8 = this.f12932d) != 0 && this.f12933e == i8) {
                    p113o3.r.M(this.f12931c != -9223372036854775807L);
                    ((InterfaceC1234e0) this.f12935g).b(this.f12931c, 1, this.f12932d, 0, null);
                    this.f12930b = false;
                    break;
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        switch (this.f12929a) {
            case 0:
                this.f12930b = false;
                this.f12931c = -9223372036854775807L;
                break;
            default:
                this.f12930b = false;
                this.f12931c = -9223372036854775807L;
                break;
        }
    }

    public E2(List list) {
        this.f12929a = 0;
        this.f12934f = list;
        this.f12935g = new InterfaceC1234e0[list.size()];
        this.f12931c = -9223372036854775807L;
    }
}
