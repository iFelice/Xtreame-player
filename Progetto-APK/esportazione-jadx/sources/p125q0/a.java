package p125q0;

import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Arrays;
import p027d2.v;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;
import p117p0.E;
import p120p3.e;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class a implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f29438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f29439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f29441d;

    public a(String str, byte[] bArr, int i8, int i9) {
        byte b8;
        str.getClass();
        boolean z7 = false;
        switch (str) {
            case "com.android.capture.fps":
                if (i9 == 23 && bArr.length == 4) {
                    z7 = true;
                }
                H1.d(z7);
                break;
            case "auxiliary.tracks.interleaved":
                if (i9 == 75 && bArr.length == 1 && ((b8 = bArr[0]) == 0 || b8 == 1)) {
                    z7 = true;
                }
                H1.d(z7);
                break;
            case "auxiliary.tracks.length":
            case "auxiliary.tracks.offset":
                if (i9 == 78 && bArr.length == 8) {
                    z7 = true;
                }
                H1.d(z7);
                break;
            case "auxiliary.tracks.map":
                H1.d(i9 == 0);
                break;
        }
        this.f29438a = str;
        this.f29439b = bArr;
        this.f29440c = i8;
        this.f29441d = i9;
    }

    public final ArrayList a() {
        H1.h("Metadata is not an auxiliary tracks map", this.f29438a.equals("auxiliary.tracks.map"));
        byte[] bArr = this.f29439b;
        byte b8 = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < b8; i8++) {
            arrayList.add(Integer.valueOf(bArr[i8 + 2]));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f29438a.equals(aVar.f29438a) && Arrays.equals(this.f29439b, aVar.f29439b) && this.f29440c == aVar.f29440c && this.f29441d == aVar.f29441d;
    }

    @Override // p094m0.M
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // p094m0.M
    public final /* synthetic */ C3136t getWrappedMetadataFormat() {
        return null;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f29439b) + U2.e(this.f29438a, 527, 31)) * 31) + this.f29440c) * 31) + this.f29441d;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00e0 A[LOOP:0: B:39:0x00dd->B:41:0x00e0, LOOP_END] */
    public final String toString() {
        String string;
        StringBuilder sb;
        String str = this.f29438a;
        byte[] bArr = this.f29439b;
        int i8 = this.f29441d;
        if (i8 != 0) {
            if (i8 == 1) {
                string = p117p0.M.o(bArr);
            } else if (i8 == 23) {
                boolean z7 = bArr.length >= 4;
                int length = bArr.length;
                if (!z7) {
                    throw new IllegalArgumentException(v.n("array too small: %s < %s", Integer.valueOf(length), 4));
                }
                string = String.valueOf(Float.intBitsToFloat(k.C(bArr[0], bArr[1], bArr[2], bArr[3])));
            } else if (i8 == 67) {
                boolean z8 = bArr.length >= 4;
                int length2 = bArr.length;
                if (!z8) {
                    throw new IllegalArgumentException(v.n("array too small: %s < %s", Integer.valueOf(length2), 4));
                }
                string = String.valueOf(k.C(bArr[0], bArr[1], bArr[2], bArr[3]));
            } else if (i8 == 75) {
                string = String.valueOf(bArr[0] & 255);
            } else if (i8 != 78) {
                String str2 = p117p0.M.f28050a;
                sb = new StringBuilder(bArr.length * 2);
                for (int i9 = 0; i9 < bArr.length; i9++) {
                    sb.append(Character.forDigit((bArr[i9] >> 4) & 15, 16));
                    sb.append(Character.forDigit(bArr[i9] & 15, 16));
                }
                string = sb.toString();
            } else {
                string = String.valueOf(new E(bArr).E());
            }
        } else if (str.equals("auxiliary.tracks.map")) {
            ArrayList arrayListA = a();
            StringBuilder sbO = U2.o("track types = ");
            new e(String.valueOf(',')).a(sbO, arrayListA.iterator());
            string = sbO.toString();
        } else {
            String str3 = p117p0.M.f28050a;
            sb = new StringBuilder(bArr.length * 2);
            while (i9 < bArr.length) {
                sb.append(Character.forDigit((bArr[i9] >> 4) & 15, 16));
                sb.append(Character.forDigit(bArr[i9] & 15, 16));
            }
            string = sb.toString();
        }
        return U2.m("mdta: key=", str, ", value=", string);
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
