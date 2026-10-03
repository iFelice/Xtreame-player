package p015b6;

import com.google.protobuf.U2;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p086l.e1;
import p148t.a;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f9892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String[] f9893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f9894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f9895d;

    static {
        a[] aVarArr = {a.f9887U, a.f9888V, a.f9889W, a.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, a.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, a.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, a.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, a.f9886T, a.f9885S, a.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, a.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, a.TLS_RSA_WITH_AES_128_GCM_SHA256, a.TLS_RSA_WITH_AES_256_GCM_SHA384, a.TLS_RSA_WITH_AES_128_CBC_SHA, a.TLS_RSA_WITH_AES_256_CBC_SHA, a.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        e1 e1Var = new e1(true);
        e1Var.a(aVarArr);
        l lVar = l.TLS_1_3;
        l lVar2 = l.TLS_1_2;
        e1Var.h(lVar, lVar2);
        if (!e1Var.f26251b) {
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }
        e1Var.f26252c = true;
        e1 e1Var2 = new e1(new b(e1Var));
        e1Var2.h(lVar, lVar2, l.TLS_1_1, l.TLS_1_0);
        if (!e1Var2.f26251b) {
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }
        e1Var2.f26252c = true;
        new b(e1Var2);
        new b(new e1(false));
    }

    public b(e1 e1Var) {
        this.f9892a = e1Var.f26251b;
        this.f9893b = (String[]) e1Var.f26253d;
        this.f9894c = (String[]) e1Var.f26254e;
        this.f9895d = e1Var.f26252c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        b bVar = (b) obj;
        boolean z7 = bVar.f9892a;
        boolean z8 = this.f9892a;
        if (z8 != z7) {
            return false;
        }
        return !z8 || (Arrays.equals(this.f9893b, bVar.f9893b) && Arrays.equals(this.f9894c, bVar.f9894c) && this.f9895d == bVar.f9895d);
    }

    public final int hashCode() {
        if (this.f9892a) {
            return ((((527 + Arrays.hashCode(this.f9893b)) * 31) + Arrays.hashCode(this.f9894c)) * 31) + (!this.f9895d ? 1 : 0);
        }
        return 17;
    }

    public final String toString() {
        List listUnmodifiableList;
        l lVar;
        if (!this.f9892a) {
            return "ConnectionSpec()";
        }
        String[] strArr = this.f9893b;
        if (strArr == null) {
            listUnmodifiableList = null;
        } else {
            a[] aVarArr = new a[strArr.length];
            for (int i8 = 0; i8 < strArr.length; i8++) {
                String str = strArr[i8];
                aVarArr[i8] = str.startsWith("SSL_") ? a.valueOf("TLS_" + str.substring(4)) : a.valueOf(str);
            }
            String[] strArr2 = m.f9937a;
            listUnmodifiableList = Collections.unmodifiableList(Arrays.asList((Object[]) aVarArr.clone()));
        }
        StringBuilder sbP = U2.p("ConnectionSpec(cipherSuites=", listUnmodifiableList == null ? "[use default]" : listUnmodifiableList.toString(), ", tlsVersions=");
        String[] strArr3 = this.f9894c;
        l[] lVarArr = new l[strArr3.length];
        for (int i9 = 0; i9 < strArr3.length; i9++) {
            String str2 = strArr3[i9];
            if ("TLSv1.3".equals(str2)) {
                lVar = l.TLS_1_3;
            } else if ("TLSv1.2".equals(str2)) {
                lVar = l.TLS_1_2;
            } else if ("TLSv1.1".equals(str2)) {
                lVar = l.TLS_1_1;
            } else if ("TLSv1".equals(str2)) {
                lVar = l.TLS_1_0;
            } else {
                if (!"SSLv3".equals(str2)) {
                    throw new IllegalArgumentException(a.c("Unexpected TLS version: ", str2));
                }
                lVar = l.SSL_3_0;
            }
            lVarArr[i9] = lVar;
        }
        String[] strArr4 = m.f9937a;
        sbP.append(Collections.unmodifiableList(Arrays.asList((Object[]) lVarArr.clone())));
        sbP.append(", supportsTlsExtensions=");
        sbP.append(this.f9895d);
        sbP.append(")");
        return sbP.toString();
    }
}
