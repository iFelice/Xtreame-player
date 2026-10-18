package W0;

import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7456c;

    public /* synthetic */ r(int i8, int i9, String str) {
        this.f7455b = i8;
        this.f7456c = i9;
        this.f7454a = str;
    }

    public static r a(p117p0.E e8) {
        String str;
        e8.M(2);
        int iZ = e8.z();
        int i8 = iZ >> 1;
        int iZ2 = ((e8.z() >> 3) & 31) | ((iZ & 1) << 5);
        if (i8 == 4 || i8 == 5 || i8 == 7 || i8 == 8) {
            str = "dvhe";
        } else if (i8 == 9) {
            str = "dvav";
        } else {
            if (i8 != 10) {
                return null;
            }
            str = "dav1";
        }
        StringBuilder sbO = U2.o(str);
        sbO.append(i8 < 10 ? ".0" : ".");
        sbO.append(i8);
        sbO.append(iZ2 < 10 ? ".0" : ".");
        sbO.append(iZ2);
        return new r(i8, iZ2, sbO.toString());
    }

    public /* synthetic */ r(int i8, int i9, String str, int i10) {
        this.f7455b = i8;
        this.f7456c = i9;
        this.f7454a = str;
    }

    public /* synthetic */ r(String str, int i8, int i9, int i10, long j8) {
        this.f7454a = str;
        this.f7456c = i8;
        this.f7455b = i9;
    }
}
