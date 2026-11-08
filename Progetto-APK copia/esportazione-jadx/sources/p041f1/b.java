package p041f1;

import com.bumptech.glide.d;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import p049g1.a;
import p094m0.N;
import p117p0.D;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class b extends d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f25136e;

    public b(int i8) {
        this.f25136e = i8;
    }

    public static a u(E e8) {
        String strU = e8.u();
        strU.getClass();
        String strU2 = e8.u();
        strU2.getClass();
        return new a(strU, strU2, e8.t(), e8.t(), Arrays.copyOfRange(e8.f28035a, e8.f28036b, e8.f28037c));
    }

    @Override // com.bumptech.glide.d
    public final N h(p033e1.a aVar, ByteBuffer byteBuffer) {
        switch (this.f25136e) {
            case 0:
                if (byteBuffer.get() == 116) {
                    D d6 = new D(byteBuffer.array(), byteBuffer.limit());
                    int i8 = 12;
                    d6.u(12);
                    int iF = (d6.f() + d6.i(12)) - 4;
                    d6.u(44);
                    d6.v(d6.i(12));
                    d6.u(16);
                    ArrayList arrayList = new ArrayList();
                    while (d6.f() < iF) {
                        d6.u(48);
                        int i9 = d6.i(8);
                        d6.u(4);
                        int iF2 = d6.f() + d6.i(i8);
                        String str = null;
                        String str2 = null;
                        while (d6.f() < iF2) {
                            int i10 = d6.i(8);
                            int i11 = d6.i(8);
                            int iF3 = d6.f() + i11;
                            if (i10 == 2) {
                                int i12 = d6.i(16);
                                d6.u(8);
                                if (i12 == 3) {
                                    while (d6.f() < iF3) {
                                        int i13 = d6.i(8);
                                        Charset charset = StandardCharsets.US_ASCII;
                                        byte[] bArr = new byte[i13];
                                        d6.l(bArr, i13);
                                        String str3 = new String(bArr, charset);
                                        int i14 = d6.i(8);
                                        for (int i15 = 0; i15 < i14; i15++) {
                                            d6.v(d6.i(8));
                                        }
                                        str = str3;
                                    }
                                }
                            } else if (i10 == 21) {
                                Charset charset2 = StandardCharsets.US_ASCII;
                                byte[] bArr2 = new byte[i11];
                                d6.l(bArr2, i11);
                                str2 = new String(bArr2, charset2);
                            }
                            d6.r(iF3 * 8);
                        }
                        d6.r(iF2 * 8);
                        if (str != null && str2 != null) {
                            arrayList.add(new a(i9, str.concat(str2)));
                        }
                        i8 = 12;
                    }
                    if (!arrayList.isEmpty()) {
                        return new N(arrayList);
                    }
                }
                return null;
            default:
                return new N(u(new E(byteBuffer.array(), byteBuffer.limit())));
        }
    }
}
