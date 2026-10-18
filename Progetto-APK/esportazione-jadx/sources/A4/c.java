package A4;

import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class c extends d {
    public c(String str, String str2) {
        this(new a(str, str2.toCharArray()), (Character) '=');
    }

    @Override // A4.d
    public final void c(StringBuilder sb, byte[] bArr, int i8) {
        int i9 = 0;
        k.u(0, i8, bArr.length);
        for (int i10 = i8; i10 >= 3; i10 -= 3) {
            int i11 = i9 + 2;
            int i12 = ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9] & 255) << 16);
            i9 += 3;
            int i13 = i12 | (bArr[i11] & 255);
            a aVar = this.f653a;
            sb.append(aVar.f644b[i13 >>> 18]);
            char[] cArr = aVar.f644b;
            sb.append(cArr[(i13 >>> 12) & 63]);
            sb.append(cArr[(i13 >>> 6) & 63]);
            sb.append(cArr[i13 & 63]);
        }
        if (i9 < i8) {
            b(sb, bArr, i9, i8 - i9);
        }
    }

    public c(a aVar, Character ch) {
        super(aVar, ch);
        k.p(aVar.f644b.length == 64);
    }
}
