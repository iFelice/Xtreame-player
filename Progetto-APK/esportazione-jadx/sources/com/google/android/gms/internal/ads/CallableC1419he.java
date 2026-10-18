package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.concurrent.Callable;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.he, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CallableC1419he implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19111b;

    public /* synthetic */ CallableC1419he(Object obj, int i8) {
        this.f19110a = i8;
        this.f19111b = obj;
    }

    private final Long a() {
        long j8;
        C1937rf c1937rf = (C1937rf) this.f19111b;
        c1937rf.getClass();
        C1950rs c1950rs = p083k3.l.f25980A.f25989i;
        C1758o6 c1758o6 = c1937rf.f20756m;
        synchronized (c1950rs.f20798J) {
            try {
                j8 = -2;
                if (((C1810p6) c1950rs.f20800L) != null) {
                    if (((C1706n6) c1950rs.f20799K).d()) {
                        try {
                            C1810p6 c1810p6 = (C1810p6) c1950rs.f20800L;
                            Parcel parcelJ0 = c1810p6.j0();
                            A5.c(parcelJ0, c1758o6);
                            Parcel parcelN2 = c1810p6.n2(3, parcelJ0);
                            long j9 = parcelN2.readLong();
                            parcelN2.recycle();
                            j8 = j9;
                        } catch (RemoteException e8) {
                            p120p3.h.e("Unable to call into cache service.", e8);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return Long.valueOf(j8);
    }

    private final Cs b() {
        byte[] byteArray;
        Bs bs = (Bs) this.f19111b;
        bs.getClass();
        int i8 = 0;
        String strEncodeToString = null;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15604D6)).booleanValue() && "requester_type_2".equals(U2.m.k(bs.f12508b.f17677d))) {
            try {
                GC gcA = C1870qE.f20561b.a();
                if (gcA == null) {
                    try {
                        gcA = Cw.C(((GE) C1973sE.f20878b.d(null)).f13494b.d());
                    } catch (GeneralSecurityException e8) {
                        throw new Y.r("Parsing parameters failed in getProto(). You probably want to call some Tink register function for ".concat("null"), 5, e8);
                    }
                }
                p004a3.b bVarN = p004a3.b.n(gcA);
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    Cw.J0(bVarN, new Xu(byteArrayOutputStream, 20));
                    byteArray = byteArrayOutputStream.toByteArray();
                } catch (IOException unused) {
                    throw new GeneralSecurityException("Serialize keyset failed");
                }
            } catch (GeneralSecurityException e9) {
                p113o3.I.k("Failed to generate key".concat(e9.toString()));
                p083k3.l.f25980A.f25987g.i("CryptoUtils.generateKey", e9);
                byteArray = new byte[0];
            }
            strEncodeToString = Base64.encodeToString(byteArray, 11);
        }
        return new Cs(strEncodeToString, i8);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0056  */
    private final Pt c() {
        C3099q c3099q;
        String str;
        Ot ot = (Ot) this.f19111b;
        C1895qo c1895qo = ot.f15217b;
        synchronized (c1895qo) {
            J7 j8 = Q7.h8;
            c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && c1895qo.f()) {
                long j9 = c1895qo.f20633q;
                p083k3.l.f25980A.f25990j.getClass();
                if (j9 < System.currentTimeMillis() / 1000) {
                    c1895qo.f20631o = "{}";
                    c1895qo.f20633q = Long.MAX_VALUE;
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                } else if (c1895qo.f20631o.equals("{}")) {
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                } else {
                    str = c1895qo.f20631o;
                }
            } else {
                str = HttpUrl.FRAGMENT_ENCODE_SET;
            }
        }
        String str2 = str;
        boolean zG = c1895qo.g();
        boolean zH = p083k3.l.f25980A.f25993m.h();
        C1895qo c1895qo2 = ot.f15217b;
        return new Pt(str2, zG, zH, c1895qo2.f20632p != null, c1895qo2.f20639w < ((Long) c3099q.f26627c.a(Q7.C8)).longValue());
    }

    /* JADX WARN: Code duplicated, block: B:136:0x0361 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:137:0x0363 A[Catch: IOException -> 0x034a, TryCatch #2 {IOException -> 0x034a, blocks: (B:126:0x031a, B:128:0x0330, B:130:0x0342, B:134:0x034f, B:139:0x0375, B:140:0x039a, B:148:0x03a7, B:150:0x03b9, B:152:0x03cd, B:154:0x03d6, B:159:0x03f8, B:161:0x0410, B:163:0x043b, B:165:0x044c, B:157:0x03e8, B:147:0x03a6, B:137:0x0363, B:142:0x039d, B:143:0x03a1), top: B:421:0x031a, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0375 A[Catch: IOException -> 0x034a, TryCatch #2 {IOException -> 0x034a, blocks: (B:126:0x031a, B:128:0x0330, B:130:0x0342, B:134:0x034f, B:139:0x0375, B:140:0x039a, B:148:0x03a7, B:150:0x03b9, B:152:0x03cd, B:154:0x03d6, B:159:0x03f8, B:161:0x0410, B:163:0x043b, B:165:0x044c, B:157:0x03e8, B:147:0x03a6, B:137:0x0363, B:142:0x039d, B:143:0x03a1), top: B:421:0x031a, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x039b  */
    /* JADX WARN: Code duplicated, block: B:156:0x03e6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:157:0x03e8 A[Catch: IOException -> 0x034a, TryCatch #2 {IOException -> 0x034a, blocks: (B:126:0x031a, B:128:0x0330, B:130:0x0342, B:134:0x034f, B:139:0x0375, B:140:0x039a, B:148:0x03a7, B:150:0x03b9, B:152:0x03cd, B:154:0x03d6, B:159:0x03f8, B:161:0x0410, B:163:0x043b, B:165:0x044c, B:157:0x03e8, B:147:0x03a6, B:137:0x0363, B:142:0x039d, B:143:0x03a1), top: B:421:0x031a, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x03f8 A[Catch: IOException -> 0x034a, TryCatch #2 {IOException -> 0x034a, blocks: (B:126:0x031a, B:128:0x0330, B:130:0x0342, B:134:0x034f, B:139:0x0375, B:140:0x039a, B:148:0x03a7, B:150:0x03b9, B:152:0x03cd, B:154:0x03d6, B:159:0x03f8, B:161:0x0410, B:163:0x043b, B:165:0x044c, B:157:0x03e8, B:147:0x03a6, B:137:0x0363, B:142:0x039d, B:143:0x03a1), top: B:421:0x031a, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x0410 A[Catch: IOException -> 0x034a, TryCatch #2 {IOException -> 0x034a, blocks: (B:126:0x031a, B:128:0x0330, B:130:0x0342, B:134:0x034f, B:139:0x0375, B:140:0x039a, B:148:0x03a7, B:150:0x03b9, B:152:0x03cd, B:154:0x03d6, B:159:0x03f8, B:161:0x0410, B:163:0x043b, B:165:0x044c, B:157:0x03e8, B:147:0x03a6, B:137:0x0363, B:142:0x039d, B:143:0x03a1), top: B:421:0x031a, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:162:0x043a  */
    /* JADX WARN: Code duplicated, block: B:282:0x06fc  */
    /* JADX WARN: Code duplicated, block: B:70:0x0211  */
    /* JADX WARN: Code duplicated, block: B:71:0x0213  */
    /* JADX WARN: Code duplicated, block: B:73:0x0216  */
    /* JADX WARN: Code duplicated, block: B:74:0x0218  */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x04b3, code lost:
    
        if (r0.contains("banner") == false) goto L189;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:341:0x084b -> B:343:0x0857). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object call() {
        /*
            Method dump skipped, instruction units count: 2584
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.CallableC1419he.call():java.lang.Object");
    }
}
