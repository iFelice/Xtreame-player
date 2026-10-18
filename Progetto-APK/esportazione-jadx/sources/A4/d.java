package A4;

import E3.f;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Objects;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f652c = new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Character f654b;

    static {
        new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        new b(new a("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public d(String str, String str2) {
        this(new a(str, str2.toCharArray()), (Character) '=');
    }

    public final String a(byte[] bArr) {
        int length = bArr.length;
        k.u(0, length, bArr.length);
        a aVar = this.f653a;
        StringBuilder sb = new StringBuilder(f.j(length, aVar.f648f, RoundingMode.CEILING) * aVar.f647e);
        try {
            c(sb, bArr, length);
            return sb.toString();
        } catch (IOException e8) {
            throw new AssertionError(e8);
        }
    }

    public final void b(StringBuilder sb, byte[] bArr, int i8, int i9) {
        k.u(i8, i8 + i9, bArr.length);
        a aVar = this.f653a;
        int i10 = 0;
        k.p(i9 <= aVar.f648f);
        long j8 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            j8 = (j8 | ((long) (bArr[i8 + i11] & 255))) << 8;
        }
        int i12 = aVar.f646d;
        int i13 = ((i9 + 1) * 8) - i12;
        while (i10 < i9 * 8) {
            sb.append(aVar.f644b[((int) (j8 >>> (i13 - i10))) & aVar.f645c]);
            i10 += i12;
        }
        Character ch = this.f654b;
        if (ch != null) {
            while (i10 < aVar.f648f * 8) {
                sb.append(ch.charValue());
                i10 += i12;
            }
        }
    }

    public void c(StringBuilder sb, byte[] bArr, int i8) {
        int i9 = 0;
        k.u(0, i8, bArr.length);
        while (i9 < i8) {
            a aVar = this.f653a;
            b(sb, bArr, i9, Math.min(aVar.f648f, i8 - i9));
            i9 += aVar.f648f;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f653a.equals(dVar.f653a) && Objects.equals(this.f654b, dVar.f654b);
    }

    public final int hashCode() {
        return this.f653a.hashCode() ^ Objects.hashCode(this.f654b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        a aVar = this.f653a;
        sb.append(aVar);
        if (8 % aVar.f646d != 0) {
            Character ch = this.f654b;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    public d(a aVar, Character ch) {
        boolean z7;
        aVar.getClass();
        this.f653a = aVar;
        if (ch != null) {
            char cCharValue = ch.charValue();
            byte[] bArr = aVar.f649g;
            if (cCharValue >= bArr.length || bArr[cCharValue] == -1) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            z7 = true;
        }
        k.q(z7, "Padding character %s was already in alphabet", ch);
        this.f654b = ch;
    }
}
