package p011b2;

import com.google.protobuf.U2;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9831b;

    public c(String str) {
        this.f9830a = str;
        this.f9831b = 0;
    }

    public final String a() {
        String str;
        int i8 = this.f9831b;
        if (i8 == 0) {
            return this.f9830a;
        }
        StringBuilder sb = new StringBuilder("Wrong data accessor type detected. ");
        if (i8 != 0) {
            str = i8 != 1 ? "Unknown" : "ArrayBuffer";
        } else {
            str = "String";
        }
        throw new IllegalStateException(U2.n(sb, str, " expected, but got ", "String"));
    }

    public c(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f9830a = null;
        this.f9831b = 1;
    }
}
