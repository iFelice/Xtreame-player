package F5;

import com.google.android.gms.internal.ads.C1093bD;
import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3247c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(int i8, p176w5.a aVar) {
        super(aVar);
        this.f3247c = i8;
    }

    @Override // p039f.H
    public final String i() throws p130q5.i {
        switch (this.f3247c) {
            case 0:
                if (((p176w5.a) this.f24905a).f31090H < 48) {
                    throw p130q5.i.f29623I;
                }
                StringBuilder sb = new StringBuilder();
                s(8, sb);
                int iF = ((C1093bD) this.f24906b).f(48, 2);
                sb.append("(392");
                sb.append(iF);
                sb.append(')');
                sb.append(((C1093bD) this.f24906b).d(50, null).f3255c);
                return sb.toString();
            case 1:
                if (((p176w5.a) this.f24905a).f31090H < 48) {
                    throw p130q5.i.f29623I;
                }
                StringBuilder sb2 = new StringBuilder();
                s(8, sb2);
                int iF2 = ((C1093bD) this.f24906b).f(48, 2);
                sb2.append("(393");
                sb2.append(iF2);
                sb2.append(')');
                int iF3 = ((C1093bD) this.f24906b).f(50, 10);
                if (iF3 / 100 == 0) {
                    sb2.append('0');
                }
                if (iF3 / 10 == 0) {
                    sb2.append('0');
                }
                sb2.append(iF3);
                sb2.append(((C1093bD) this.f24906b).d(60, null).f3255c);
                return sb2.toString();
            default:
                StringBuilder sbO = U2.o("(01)");
                int length = sbO.length();
                sbO.append(((C1093bD) this.f24906b).f(4, 4));
                t(sbO, 8, length);
                return ((C1093bD) this.f24906b).c(48, sbO);
        }
    }
}
