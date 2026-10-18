package W0;

import N.C0260i;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.io.EOFException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p117p0.InterfaceC3172j;

/* JADX INFO: loaded from: classes.dex */
public final class C implements p126q1.m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p117p0.E f7320G;

    public C(int i8) {
        if (i8 != 1) {
            this.f7320G = new p117p0.E(10);
        } else {
            this.f7320G = new p117p0.E();
        }
    }

    @Override // p126q1.m
    public final void b(byte[] bArr, int i8, int i9, p126q1.l lVar, InterfaceC3172j interfaceC3172j) {
        p110o0.b bVarA;
        p117p0.E e8 = this.f7320G;
        e8.J(i8 + i9, bArr);
        e8.L(i8);
        ArrayList arrayList = new ArrayList();
        while (e8.a() > 0) {
            H1.c("Incomplete Mp4Webvtt Top Level box header found.", e8.a() >= 8);
            int iL = e8.l();
            if (e8.l() == 1987343459) {
                int i10 = iL - 8;
                CharSequence charSequenceF = null;
                p110o0.a aVarA = null;
                while (i10 > 0) {
                    H1.c("Incomplete vtt cue box header found.", i10 >= 8);
                    int iL2 = e8.l();
                    int iL3 = e8.l();
                    int i11 = iL2 - 8;
                    byte[] bArr2 = e8.f28035a;
                    int i12 = e8.f28036b;
                    String str = p117p0.M.f28050a;
                    String str2 = new String(bArr2, i12, i11, StandardCharsets.UTF_8);
                    e8.M(i11);
                    i10 = (i10 - 8) - i11;
                    if (iL3 == 1937011815) {
                        p195z1.g gVar = new p195z1.g();
                        p195z1.h.e(str2, gVar);
                        aVarA = gVar.a();
                    } else if (iL3 == 1885436268) {
                        charSequenceF = p195z1.h.f(null, str2.trim(), Collections.emptyList());
                    }
                }
                if (charSequenceF == null) {
                    charSequenceF = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                if (aVarA != null) {
                    aVarA.f27597a = charSequenceF;
                    aVarA.f27598b = null;
                    bVarA = aVarA.a();
                } else {
                    Pattern pattern = p195z1.h.f31745a;
                    p195z1.g gVar2 = new p195z1.g();
                    gVar2.f31736c = charSequenceF;
                    bVarA = gVar2.a().a();
                }
                arrayList.add(bVarA);
            } else {
                e8.M(iL - 8);
            }
        }
        interfaceC3172j.accept(new p126q1.a(arrayList, -9223372036854775807L, -9223372036854775807L));
    }

    @Override // p126q1.m
    public final /* synthetic */ p126q1.d c(int i8, byte[] bArr, int i9) {
        return U2.b(this, bArr, i8, i9);
    }

    public final p094m0.N d(t tVar, C0260i c0260i) {
        p117p0.E e8 = this.f7320G;
        p094m0.N nU = null;
        int i8 = 0;
        while (true) {
            try {
                tVar.c(0, e8.f28035a, 10);
                e8.L(0);
                if (e8.C() != 4801587) {
                    break;
                }
                e8.M(3);
                int iY = e8.y();
                int i9 = iY + 10;
                if (nU == null) {
                    byte[] bArr = new byte[i9];
                    System.arraycopy(e8.f28035a, 0, bArr, 0, 10);
                    tVar.c(10, bArr, iY);
                    nU = new p065i1.i(c0260i).u(i9, bArr);
                } else {
                    tVar.g(iY);
                }
                i8 += i9;
            } catch (EOFException unused) {
            }
        }
        tVar.m();
        tVar.g(i8);
        return nU;
    }

    @Override // p126q1.m
    public final int g() {
        return 2;
    }

    @Override // p126q1.m
    public final /* synthetic */ void a() {
    }
}
