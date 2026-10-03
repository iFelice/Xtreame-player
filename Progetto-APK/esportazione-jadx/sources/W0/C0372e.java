package W0;

import com.google.android.gms.internal.ads.AbstractC1270el;
import com.google.android.gms.internal.ads.AbstractC2008sy;
import com.google.android.gms.internal.ads.C0800Ka;
import com.google.android.gms.internal.ads.C1231dy;
import com.google.android.gms.internal.ads.C1534jr;
import java.util.ArrayList;
import java.util.List;
import p094m0.P;
import p117p0.AbstractC3169g;

/* JADX INFO: renamed from: W0.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0372e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f7393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7395c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f7396d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f7397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f7398f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f7399g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f7400h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f7401i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f7402j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f7403k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f7404l;

    public /* synthetic */ C0372e(ArrayList arrayList, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, float f8, String str) {
        this.f7393a = arrayList;
        this.f7394b = i8;
        this.f7395c = i9;
        this.f7396d = i10;
        this.f7397e = i11;
        this.f7398f = i12;
        this.f7399g = i13;
        this.f7400h = i14;
        this.f7401i = i15;
        this.f7402j = i16;
        this.f7403k = f8;
        this.f7404l = str;
    }

    public static C0372e a(p117p0.E e8) {
        String str;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        float f8;
        try {
            e8.M(4);
            int iZ = (e8.z() & 3) + 1;
            if (iZ == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iZ2 = e8.z() & 31;
            for (int i16 = 0; i16 < iZ2; i16++) {
                int iF = e8.F();
                int i17 = e8.f28036b;
                e8.M(iF);
                byte[] bArr = e8.f28035a;
                byte[] bArr2 = AbstractC3169g.f28081a;
                byte[] bArr3 = new byte[iF + 4];
                System.arraycopy(AbstractC3169g.f28081a, 0, bArr3, 0, 4);
                System.arraycopy(bArr, i17, bArr3, 4, iF);
                arrayList.add(bArr3);
            }
            int iZ3 = e8.z();
            for (int i18 = 0; i18 < iZ3; i18++) {
                int iF2 = e8.F();
                int i19 = e8.f28036b;
                e8.M(iF2);
                byte[] bArr4 = e8.f28035a;
                byte[] bArr5 = AbstractC3169g.f28081a;
                byte[] bArr6 = new byte[iF2 + 4];
                System.arraycopy(AbstractC3169g.f28081a, 0, bArr6, 0, 4);
                System.arraycopy(bArr4, i19, bArr6, 4, iF2);
                arrayList.add(bArr6);
            }
            if (iZ2 > 0) {
                byte[] bArr7 = (byte[]) arrayList.get(0);
                byte[] bArr8 = (byte[]) arrayList.get(0);
                byte[] bArr9 = p125q0.p.f29508a;
                p125q0.o oVarK = p125q0.p.k(4, bArr8, bArr7.length);
                int i20 = oVarK.f29493e;
                int i21 = oVarK.f29494f;
                int i22 = oVarK.f29496h + 8;
                int i23 = oVarK.f29497i + 8;
                int i24 = oVarK.f29504p;
                int i25 = oVarK.f29505q;
                int i26 = oVarK.f29506r;
                int i27 = oVarK.f29507s;
                float f9 = oVarK.f29495g;
                int i28 = oVarK.f29489a;
                int i29 = oVarK.f29490b;
                int i30 = oVarK.f29491c;
                byte[] bArr10 = AbstractC3169g.f28081a;
                str = String.format("avc1.%02X%02X%02X", Integer.valueOf(i28), Integer.valueOf(i29), Integer.valueOf(i30));
                i14 = i26;
                i15 = i27;
                f8 = f9;
                i11 = i23;
                i12 = i24;
                i13 = i25;
                i8 = i20;
                i9 = i21;
                i10 = i22;
            } else {
                str = null;
                i8 = -1;
                i9 = -1;
                i10 = -1;
                i11 = -1;
                i12 = -1;
                i13 = -1;
                i14 = -1;
                i15 = 16;
                f8 = 1.0f;
            }
            return new C0372e(arrayList, iZ, i8, i9, i10, i11, i12, i13, i14, i15, f8, str);
        } catch (ArrayIndexOutOfBoundsException e9) {
            throw P.a("Error parsing AVC config", e9);
        }
    }

    public static C0372e b(C1534jr c1534jr) {
        byte[] bArr;
        String str;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        float f8;
        try {
            c1534jr.k(4);
            int iW = c1534jr.w() & 3;
            int i16 = iW + 1;
            if (i16 == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iW2 = c1534jr.w() & 31;
            int i17 = 0;
            while (true) {
                bArr = AbstractC1270el.f18559d;
                if (i17 >= iW2) {
                    break;
                }
                int iA = c1534jr.A();
                int i18 = c1534jr.f19516b;
                c1534jr.k(iA);
                byte[] bArr2 = c1534jr.f19515a;
                byte[] bArr3 = new byte[iA + 4];
                System.arraycopy(bArr, 0, bArr3, 0, 4);
                System.arraycopy(bArr2, i18, bArr3, 4, iA);
                arrayList.add(bArr3);
                i17++;
            }
            int iW3 = c1534jr.w();
            for (int i19 = 0; i19 < iW3; i19++) {
                int iA2 = c1534jr.A();
                int i20 = c1534jr.f19516b;
                c1534jr.k(iA2);
                byte[] bArr4 = c1534jr.f19515a;
                byte[] bArr5 = new byte[iA2 + 4];
                System.arraycopy(bArr, 0, bArr5, 0, 4);
                System.arraycopy(bArr4, i20, bArr5, 4, iA2);
                arrayList.add(bArr5);
            }
            if (iW2 > 0) {
                C1231dy c1231dyE = AbstractC2008sy.e(iW + 2, (byte[]) arrayList.get(0), ((byte[]) arrayList.get(0)).length);
                int i21 = c1231dyE.f18394e;
                int i22 = c1231dyE.f18395f;
                int i23 = c1231dyE.f18397h + 8;
                int i24 = c1231dyE.f18398i + 8;
                int i25 = c1231dyE.f18399j;
                int i26 = c1231dyE.f18400k;
                int i27 = c1231dyE.f18401l;
                int i28 = c1231dyE.f18402m;
                float f9 = c1231dyE.f18396g;
                str = String.format("avc1.%02X%02X%02X", Integer.valueOf(c1231dyE.f18390a), Integer.valueOf(c1231dyE.f18391b), Integer.valueOf(c1231dyE.f18392c));
                i13 = i26;
                i14 = i27;
                i15 = i28;
                f8 = f9;
                i9 = i22;
                i10 = i23;
                i11 = i24;
                i12 = i25;
                i8 = i21;
            } else {
                str = null;
                i8 = -1;
                i9 = -1;
                i10 = -1;
                i11 = -1;
                i12 = -1;
                i13 = -1;
                i14 = -1;
                i15 = 16;
                f8 = 1.0f;
            }
            return new C0372e(arrayList, i16, i8, i9, i10, i11, i12, i13, i14, i15, f8, str);
        } catch (ArrayIndexOutOfBoundsException e8) {
            throw C0800Ka.a("Error parsing AVC config", e8);
        }
    }
}
