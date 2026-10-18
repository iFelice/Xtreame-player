package F5;

import com.google.android.gms.internal.ads.C1093bD;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3249d;

    public c(p176w5.a aVar, String str, String str2) {
        super(aVar);
        this.f3248c = str2;
        this.f3249d = str;
    }

    @Override // p039f.H
    public final String i() throws p130q5.i {
        if (((p176w5.a) this.f24905a).f31090H != 84) {
            throw p130q5.i.f29623I;
        }
        StringBuilder sb = new StringBuilder();
        s(8, sb);
        w(sb, 48, 20);
        int iF = ((C1093bD) this.f24906b).f(68, 16);
        if (iF != 38400) {
            sb.append('(');
            sb.append(this.f3248c);
            sb.append(')');
            int i8 = iF % 32;
            int i9 = iF / 32;
            int i10 = (i9 % 12) + 1;
            int i11 = i9 / 12;
            if (i11 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i11);
            if (i10 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i10);
            if (i8 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i8);
        }
        return sb.toString();
    }

    @Override // F5.f
    public final void u(int i8, StringBuilder sb) {
        sb.append('(');
        sb.append(this.f3249d);
        sb.append(i8 / 100000);
        sb.append(')');
    }

    @Override // F5.f
    public final int v(int i8) {
        return i8 % 100000;
    }
}
