package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class V implements W1 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1534jr f16929G;

    public V(int i8) {
        if (i8 != 1) {
            this.f16929G = new C1534jr(10);
        } else {
            this.f16929G = new C1534jr();
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:56:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:59:0x0105  */
    /* JADX WARN: Code duplicated, block: B:75:0x010d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00ff A[SYNTHETIC] */
    public final Q9 a(M m7, C1561kH c1561kH) {
        boolean z7;
        p065i1.h hVar;
        int i8;
        int i9;
        boolean z8;
        int iM;
        boolean z9;
        P0 p0V;
        int i10 = 10;
        C1534jr c1534jr = this.f16929G;
        Q9 q9 = null;
        int i11 = 0;
        while (true) {
            try {
                m7.g(0, c1534jr.f19515a, i10);
                c1534jr.j(0);
                if (c1534jr.y() != 4801587) {
                    break;
                }
                c1534jr.k(3);
                int iV = c1534jr.v();
                int i12 = iV + 10;
                if (q9 == null) {
                    byte[] bArr = new byte[i12];
                    System.arraycopy(c1534jr.f19515a, 0, bArr, 0, i10);
                    m7.g(i10, bArr, iV);
                    ArrayList arrayList = new ArrayList();
                    C1534jr c1534jr2 = new C1534jr(bArr, i12);
                    if (c1534jr2.o() < i10) {
                        Zo.f("Id3Decoder", "Data too short to be an ID3 tag");
                    } else {
                        int iY = c1534jr2.y();
                        if (iY != 4801587) {
                            Zo.f("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x".concat(String.format("%06X", Integer.valueOf(iY))));
                        } else {
                            int iW = c1534jr2.w();
                            c1534jr2.k(1);
                            int iW2 = c1534jr2.w();
                            int iV2 = c1534jr2.v();
                            if (iW != 2) {
                                if (iW == 3) {
                                    if ((iW2 & 64) != 0) {
                                        int iR = c1534jr2.r();
                                        c1534jr2.k(iR);
                                        iV2 -= iR + 4;
                                    }
                                } else if (iW == 4) {
                                    if ((iW2 & 64) != 0) {
                                        int iV3 = c1534jr2.v();
                                        c1534jr2.k(iV3 - 4);
                                        iV2 -= iV3;
                                    }
                                    if ((iW2 & 16) != 0) {
                                        iV2 -= 10;
                                    }
                                } else {
                                    p000a.r.p("Skipped ID3 tag with unsupported majorVersion=", iW, "Id3Decoder");
                                }
                                int i13 = iV2;
                                if (iW < 4) {
                                    z7 = false;
                                } else {
                                    z7 = false;
                                }
                                hVar = new p065i1.h(z7, iW, i13);
                            } else if ((iW2 & 64) != 0) {
                                Zo.f("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                            } else {
                                int i14 = iV2;
                                if (iW < 4 || (iW2 & 128) == 0) {
                                    z7 = false;
                                } else {
                                    z7 = true;
                                }
                                hVar = new p065i1.h(z7, iW, i14);
                            }
                            if (hVar == null) {
                                q9 = null;
                            } else {
                                int i15 = c1534jr2.f19516b;
                                i8 = hVar.f25532a;
                                if (i8 == 2) {
                                    i9 = 6;
                                } else {
                                    i9 = 10;
                                }
                                z8 = hVar.f25533b;
                                iM = hVar.f25534c;
                                if (z8) {
                                    iM = AbstractC1717nH.m(iM, c1534jr2);
                                }
                                c1534jr2.i(i15 + iM);
                                if (AbstractC1717nH.u(c1534jr2, i8, i9, false)) {
                                    z9 = false;
                                } else if (i8 == 4 || !AbstractC1717nH.u(c1534jr2, 4, i9, true)) {
                                    p000a.r.p("Failed to validate ID3 tag with majorVersion=", i8, "Id3Decoder");
                                    q9 = null;
                                } else {
                                    z9 = true;
                                }
                                while (c1534jr2.o() >= i9) {
                                    p0V = AbstractC1717nH.v(i8, c1534jr2, z9, i9, c1561kH);
                                    if (p0V != null) {
                                        arrayList.add(p0V);
                                    }
                                }
                                q9 = new Q9(arrayList);
                            }
                        }
                    }
                    hVar = null;
                    if (hVar == null) {
                        q9 = null;
                    } else {
                        int i16 = c1534jr2.f19516b;
                        i8 = hVar.f25532a;
                        if (i8 == 2) {
                            i9 = 6;
                        } else {
                            i9 = 10;
                        }
                        z8 = hVar.f25533b;
                        iM = hVar.f25534c;
                        if (z8) {
                            iM = AbstractC1717nH.m(iM, c1534jr2);
                        }
                        c1534jr2.i(i16 + iM);
                        if (AbstractC1717nH.u(c1534jr2, i8, i9, false)) {
                            if (i8 == 4) {
                            }
                            p000a.r.p("Failed to validate ID3 tag with majorVersion=", i8, "Id3Decoder");
                            q9 = null;
                        } else {
                            z9 = false;
                        }
                        while (c1534jr2.o() >= i9) {
                            p0V = AbstractC1717nH.v(i8, c1534jr2, z9, i9, c1561kH);
                            if (p0V != null) {
                                arrayList.add(p0V);
                            }
                        }
                        q9 = new Q9(arrayList);
                    }
                } else {
                    m7.zzg(iV);
                }
                i11 += i12;
                i10 = 10;
            } catch (EOFException unused) {
            }
        }
        m7.zzj();
        m7.zzg(i11);
        return q9;
    }

    @Override // com.google.android.gms.internal.ads.W1
    public final void d(byte[] bArr, int i8, int i9, p149t0.d dVar) {
        C1063ak c1063akA;
        C1534jr c1534jr = this.f16929G;
        c1534jr.h(i8 + i9, bArr);
        c1534jr.j(i8);
        ArrayList arrayList = new ArrayList();
        while (c1534jr.o() > 0) {
            p113o3.r.L(c1534jr.o() >= 8, "Incomplete Mp4Webvtt Top Level box header found.");
            int iR = c1534jr.r() - 8;
            if (c1534jr.r() == 1987343459) {
                CharSequence charSequenceA = null;
                C0704Dj c0704DjB = null;
                while (iR > 0) {
                    p113o3.r.L(iR >= 8, "Incomplete vtt cue box header found.");
                    int iR2 = c1534jr.r();
                    int iR3 = c1534jr.r();
                    int i10 = iR - 8;
                    int i11 = iR2 - 8;
                    byte[] bArr2 = c1534jr.f19515a;
                    int i12 = c1534jr.f19516b;
                    int i13 = Et.f13234a;
                    String str = new String(bArr2, i12, i11, StandardCharsets.UTF_8);
                    c1534jr.k(i11);
                    if (iR3 == 1937011815) {
                        p195z1.g gVar = new p195z1.g();
                        AbstractC2273y2.f(str, gVar);
                        c0704DjB = gVar.b();
                    } else if (iR3 == 1885436268) {
                        charSequenceA = AbstractC2273y2.a(null, str.trim(), Collections.emptyList());
                    }
                    iR = i10 - i11;
                }
                if (charSequenceA == null) {
                    charSequenceA = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                if (c0704DjB != null) {
                    c0704DjB.f12852a = charSequenceA;
                    c1063akA = c0704DjB.a();
                } else {
                    p195z1.g gVar2 = new p195z1.g();
                    gVar2.f31736c = charSequenceA;
                    c1063akA = gVar2.b().a();
                }
                arrayList.add(c1063akA);
            } else {
                c1534jr.k(iR);
            }
        }
        dVar.mo4zza(new S1(arrayList, -9223372036854775807L, -9223372036854775807L));
    }
}
