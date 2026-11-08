package com.google.android.gms.internal.pal;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.q3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2800q3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f23988b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputStream f23989a;

    public C2800q3(InputStream inputStream) {
        this.f23989a = inputStream;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:48:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:61:0x011f  */
    public final C2771m6 a() {
        byte b8;
        int i8;
        int i9;
        String str = "status";
        InputStream inputStream = this.f23989a;
        try {
            try {
                V6 v6I = AbstractC2864y4.k(new C2708f(new StringReader(new String(G3.a(inputStream), f23988b)))).i();
                d7 d7Var = v6I.f23678G;
                if (!d7Var.containsKey("key") || ((R6) d7Var.get("key")).f23645G.size() == 0) {
                    throw new W6("invalid keyset");
                }
                C2739i6 c2739i6O = C2771m6.o();
                if (d7Var.containsKey("primaryKeyId")) {
                    c2739i6O.h(v6I.l("primaryKeyId").b());
                }
                R6 r7 = (R6) d7Var.get("key");
                int i10 = 0;
                while (i10 < r7.f23645G.size()) {
                    V6 v6I2 = ((S6) r7.f23645G.get(i10)).i();
                    d7 d7Var2 = v6I2.f23678G;
                    if (!d7Var2.containsKey("keyData") || !d7Var2.containsKey(str) || !d7Var2.containsKey("keyId") || !d7Var2.containsKey("outputPrefixType")) {
                        throw new W6("invalid key");
                    }
                    C2747j6 c2747j6O = C2763l6.o();
                    String strC = v6I2.l(str).c();
                    String str2 = str;
                    int iHashCode = strC.hashCode();
                    R6 r8 = r7;
                    int i11 = 2;
                    if (iHashCode != -891611359) {
                        if (iHashCode != 478389753) {
                            if (iHashCode == 1053567612 && strC.equals("DISABLED")) {
                                b8 = 1;
                            } else {
                                b8 = -1;
                            }
                        } else if (strC.equals("DESTROYED")) {
                            b8 = 2;
                        } else {
                            b8 = -1;
                        }
                    } else if (strC.equals("ENABLED")) {
                        b8 = 0;
                    } else {
                        b8 = -1;
                    }
                    if (b8 == 0) {
                        i8 = 3;
                    } else if (b8 == 1) {
                        i8 = 4;
                    } else {
                        if (b8 != 2) {
                            throw new W6("unknown status: ".concat(strC));
                        }
                        i8 = 5;
                    }
                    c2747j6O.j(i8);
                    c2747j6O.h(v6I2.l("keyId").b());
                    String strC2 = v6I2.l("outputPrefixType").c();
                    strC2.getClass();
                    switch (strC2) {
                        case "LEGACY":
                            i9 = 4;
                            break;
                        case "RAW":
                            i9 = 5;
                            break;
                        case "TINK":
                            i9 = 3;
                            break;
                        case "CRUNCHY":
                            i9 = 6;
                            break;
                        default:
                            throw new W6("unknown output prefix type: ".concat(strC2));
                    }
                    c2747j6O.i(i9);
                    V6 v7 = (V6) d7Var2.get("keyData");
                    d7 d7Var3 = v7.f23678G;
                    if (!d7Var3.containsKey("typeUrl") || !d7Var3.containsKey("value") || !d7Var3.containsKey("keyMaterialType")) {
                        throw new W6("invalid keyData");
                    }
                    byte[] bArrA = G6.a(v7.l("value").c());
                    C2699d6 c2699d6M = C2707e6.m();
                    String strC3 = v7.l("typeUrl").c();
                    if (c2699d6M.f23476I) {
                        c2699d6M.f();
                        c2699d6M.f23476I = false;
                    }
                    C2707e6.r((C2707e6) c2699d6M.f23475H, strC3);
                    C2796q c2796qO = r.o(0, bArrA, bArrA.length);
                    if (c2699d6M.f23476I) {
                        c2699d6M.f();
                        c2699d6M.f23476I = false;
                    }
                    ((C2707e6) c2699d6M.f23475H).zzf = c2796qO;
                    String strC4 = v7.l("keyMaterialType").c();
                    strC4.getClass();
                    switch (strC4) {
                        case "REMOTE":
                            i11 = 5;
                            break;
                        case "SYMMETRIC":
                            break;
                        case "ASYMMETRIC_PRIVATE":
                            i11 = 3;
                            break;
                        case "ASYMMETRIC_PUBLIC":
                            i11 = 4;
                            break;
                        default:
                            throw new W6("unknown key material type: ".concat(strC4));
                    }
                    if (c2699d6M.f23476I) {
                        c2699d6M.f();
                        c2699d6M.f23476I = false;
                    }
                    C2707e6.t((C2707e6) c2699d6M.f23475H, i11);
                    c2747j6O.g((C2707e6) c2699d6M.d());
                    c2739i6O.g((C2763l6) c2747j6O.d());
                    i10++;
                    str = str2;
                    r7 = r8;
                }
                C2771m6 c2771m6 = (C2771m6) c2739i6O.d();
                inputStream.close();
                return c2771m6;
            } catch (W6 e8) {
                e = e8;
                throw new IOException(e);
            } catch (IllegalStateException e9) {
                e = e9;
                throw new IOException(e);
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }
}
