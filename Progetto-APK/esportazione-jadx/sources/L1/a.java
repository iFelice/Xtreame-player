package L1;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Objects;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f4614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f4616c;

    public a(String str, byte[] bArr, byte[] bArr2) {
        this.f4614a = bArr;
        this.f4615b = str;
        this.f4616c = bArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Arrays.equals(this.f4614a, aVar.f4614a) && this.f4615b.contentEquals(aVar.f4615b) && Arrays.equals(this.f4616c, aVar.f4616c);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(Arrays.hashCode(this.f4614a)), this.f4615b, Integer.valueOf(Arrays.hashCode(this.f4616c)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EncryptedTopic=");
        byte[] bArr = this.f4614a;
        q0.h(bArr, "<this>");
        Charset charset = I6.a.f4021a;
        sb.append(new String(bArr, charset));
        sb.append(", KeyIdentifier=");
        sb.append(this.f4615b);
        sb.append(", EncapsulatedKey=");
        byte[] bArr2 = this.f4616c;
        q0.h(bArr2, "<this>");
        sb.append(new String(bArr2, charset));
        sb.append(" }");
        return p148t.a.c("EncryptedTopic { ", sb.toString());
    }
}
