package U2;

import F2.G;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.C1180cy;
import com.google.android.gms.internal.ads.C1294f8;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C1555kB;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.InterfaceC1746nv;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Yv;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import p090l3.C3099q;
import p090l3.L;
import p090l3.b1;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final G f6963a = new G(0);

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static double c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((double) (((((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680)) | (65280 & (bArr[2] << 8))) | (bArr[3] & 255))) / 1.073741824E9d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:38:0x0082  */
    public static int d(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle2 != null) {
            bundle = bundle2;
        }
        String string = bundle.getString("query_info_type");
        if (TextUtils.isEmpty(string)) {
            return 2;
        }
        switch (string) {
            case "requester_type_0":
                return 1;
            case "requester_type_1":
                return 3;
            case "requester_type_2":
                return 4;
            case "requester_type_3":
                return 5;
            case "requester_type_4":
                return 6;
            case "requester_type_5":
                return 7;
            case "requester_type_6":
                return 8;
            case "requester_type_7":
                return 9;
            case "requester_type_8":
                return 10;
            default:
                return 2;
        }
    }

    public static Bundle e(Pair... pairArr) {
        Bundle bundle = new Bundle();
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue()) {
            for (int i8 = 0; i8 < 2; i8++) {
                Pair pair = pairArr[i8];
                if (!TextUtils.isEmpty((CharSequence) pair.first) && ((Long) pair.second).longValue() > 0) {
                    bundle.putLong((String) pair.first, ((Long) pair.second).longValue());
                }
            }
        }
        return bundle;
    }

    public static void f(AtomicReference atomicReference, InterfaceC1746nv interfaceC1746nv) {
        Object obj = atomicReference.get();
        if (obj == null) {
            return;
        }
        try {
            interfaceC1746nv.mo8zza(obj);
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        } catch (NullPointerException e9) {
            p120p3.h.h("NullPointerException occurs when invoking a method from a delegating listener.", e9);
        }
    }

    public static double g(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((double) (((((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680)) | (65280 & (bArr[2] << 8))) | (bArr[3] & 255))) / 65536.0d;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0188 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:101:0x018a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x018c  */
    /* JADX WARN: Code duplicated, block: B:104:0x018f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0193  */
    /* JADX WARN: Code duplicated, block: B:108:0x0197  */
    /* JADX WARN: Code duplicated, block: B:109:0x019a  */
    /* JADX WARN: Code duplicated, block: B:110:0x019d  */
    /* JADX WARN: Code duplicated, block: B:111:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:112:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:113:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:56:0x0107  */
    /* JADX WARN: Code duplicated, block: B:59:0x011b A[Catch: IllegalAccessException -> 0x0121, NoSuchFieldException -> 0x0123, TryCatch #5 {IllegalAccessException -> 0x0121, NoSuchFieldException -> 0x0123, blocks: (B:57:0x010b, B:59:0x011b, B:61:0x011e), top: B:120:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:69:0x012c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0131  */
    /* JADX WARN: Code duplicated, block: B:75:0x0139  */
    /* JADX WARN: Code duplicated, block: B:77:0x0140  */
    /* JADX WARN: Code duplicated, block: B:81:0x014e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0183  */
    /* JADX WARN: Code duplicated, block: B:99:0x0186 A[DONT_INVERT] */
    public static final int h(Context context, C1180cy c1180cy) {
        byte[] bArr;
        int i8;
        int i9;
        int i10;
        String str;
        String property;
        String[] strArr;
        File file = new File(new File(context.getApplicationInfo().dataDir), "lib");
        if (file.exists()) {
            bArr = null;
            i8 = 1;
            File[] fileArrListFiles = file.listFiles(new C1555kB(Pattern.compile(".*\\.so$", 2)));
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                c1180cy.d(5017, 0L, null, null, "No .so");
            } else {
                try {
                    FileInputStream fileInputStream = new FileInputStream(fileArrListFiles[0]);
                    try {
                        byte[] bArr2 = new byte[20];
                        if (fileInputStream.read(bArr2) == 20) {
                            byte[] bArr3 = {0, 0};
                            if (bArr2[5] == 2) {
                                n(bArr2, null, c1180cy);
                            } else {
                                bArr3[0] = bArr2[19];
                                bArr3[1] = bArr2[18];
                                short s7 = ByteBuffer.wrap(bArr3).getShort();
                                if (s7 == 3) {
                                    fileInputStream.close();
                                    i9 = 5;
                                } else if (s7 == 40) {
                                    fileInputStream.close();
                                    i9 = 3;
                                } else if (s7 == 62) {
                                    fileInputStream.close();
                                    i9 = 7;
                                } else if (s7 == 183) {
                                    fileInputStream.close();
                                    i9 = 6;
                                } else if (s7 != 243) {
                                    n(bArr2, null, c1180cy);
                                } else {
                                    fileInputStream.close();
                                    i9 = 8;
                                }
                            }
                        }
                        fileInputStream.close();
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (IOException e8) {
                    n(null, e8.toString(), c1180cy);
                }
                i9 = 1;
            }
            if (i9 == 1000) {
                HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
                property = System.getProperty("os.arch");
                if (TextUtils.isEmpty(property) || !hashSet.contains(property)) {
                    try {
                        strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(bArr);
                        if (strArr != null || strArr.length <= 0) {
                            property = Build.CPU_ABI;
                            if (property == null) {
                                property = Build.CPU_ABI2;
                            }
                        } else {
                            property = strArr[0];
                        }
                    } catch (IllegalAccessException e9) {
                        c1180cy.b(2024, 0L, e9);
                    } catch (NoSuchFieldException e10) {
                        c1180cy.b(2024, 0L, e10);
                    }
                }
                if (TextUtils.isEmpty(property)) {
                    n(bArr, "Empty dev arch", c1180cy);
                } else if (!property.equalsIgnoreCase("i686") || property.equalsIgnoreCase("x86")) {
                    i10 = 5;
                } else if (property.equalsIgnoreCase("x86_64")) {
                    i10 = 7;
                } else if (property.equalsIgnoreCase("arm64-v8a")) {
                    i10 = 6;
                } else if (property.equalsIgnoreCase("armeabi-v7a") || property.equalsIgnoreCase("armv71")) {
                    i10 = 3;
                } else if (property.equalsIgnoreCase("riscv64")) {
                    i10 = 8;
                } else {
                    n(bArr, property, c1180cy);
                }
                i10 = 1;
            } else {
                i10 = i9;
            }
            if (i10 != i8) {
                str = "UNSUPPORTED";
            } else if (i10 != 3) {
                str = "ARM7";
            } else if (i10 != 5) {
                str = "X86";
            } else if (i10 != 6) {
                str = "ARM64";
            } else if (i10 != 7) {
                str = "X86_64";
            } else if (i10 != 8) {
                str = "null";
            } else {
                str = "RISCV64";
            }
            c1180cy.d(5018, 0L, null, null, str);
            return i10;
        }
        i8 = 1;
        bArr = null;
        c1180cy.d(5017, 0L, null, null, "No lib/");
        i9 = 1000;
        if (i9 == 1000) {
            HashSet hashSet2 = new HashSet(Arrays.asList("i686", "armv71"));
            property = System.getProperty("os.arch");
            if (TextUtils.isEmpty(property)) {
                strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(bArr);
                if (strArr != null) {
                    property = Build.CPU_ABI;
                    if (property == null) {
                        property = Build.CPU_ABI2;
                    }
                } else {
                    property = Build.CPU_ABI;
                    if (property == null) {
                        property = Build.CPU_ABI2;
                    }
                }
            } else {
                strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(bArr);
                if (strArr != null) {
                    property = Build.CPU_ABI;
                    if (property == null) {
                        property = Build.CPU_ABI2;
                    }
                } else {
                    property = Build.CPU_ABI;
                    if (property == null) {
                        property = Build.CPU_ABI2;
                    }
                }
            }
            if (TextUtils.isEmpty(property)) {
                n(bArr, "Empty dev arch", c1180cy);
            } else if (property.equalsIgnoreCase("i686")) {
                i10 = 5;
            } else {
                i10 = 5;
            }
            i10 = 1;
        } else {
            i10 = i9;
        }
        if (i10 != i8) {
            str = "UNSUPPORTED";
        } else if (i10 != 3) {
            str = "ARM7";
        } else if (i10 != 5) {
            str = "X86";
        } else if (i10 != 6) {
            str = "ARM64";
        } else if (i10 != 7) {
            str = "X86_64";
        } else if (i10 != 8) {
            str = "null";
        } else {
            str = "RISCV64";
        }
        c1180cy.d(5018, 0L, null, null, str);
        return i10;
    }

    public static C2218x i(C1534jr c1534jr) {
        int i8;
        c1534jr.k(1);
        int iY = c1534jr.y();
        long j8 = c1534jr.f19516b;
        long j9 = iY;
        int i9 = iY / 18;
        long[] jArrCopyOf = new long[i9];
        long[] jArrCopyOf2 = new long[i9];
        int i10 = 0;
        while (true) {
            i8 = 2;
            if (i10 >= i9) {
                break;
            }
            long jD = c1534jr.D();
            if (jD == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i10);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i10);
                break;
            }
            jArrCopyOf[i10] = jD;
            jArrCopyOf2[i10] = c1534jr.D();
            c1534jr.k(2);
            i10++;
        }
        c1534jr.k((int) ((j8 + j9) - ((long) c1534jr.f19516b)));
        return new C2218x(i8, jArrCopyOf, jArrCopyOf2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x006c  */
    public static String j(String str) {
        if (TextUtils.isEmpty(str)) {
            return "unspecified";
        }
        switch (str) {
            case "requester_type_0":
                return "0";
            case "requester_type_1":
                return "1";
            case "requester_type_2":
                return "2";
            case "requester_type_3":
                return "3";
            case "requester_type_4":
                return "4";
            case "requester_type_5":
                return "5";
            case "requester_type_6":
                return "6";
            case "requester_type_7":
                return "7";
            case "requester_type_8":
                return "8";
            default:
                return str;
        }
    }

    public static String k(b1 b1Var) {
        Bundle bundle;
        return (b1Var == null || (bundle = b1Var.f26519I) == null) ? "unspecified" : bundle.getString("query_info_type");
    }

    public static void l(ArrayList arrayList, C1294f8 c1294f8) {
        String str = (String) c1294f8.l();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        arrayList.add(str);
    }

    public static void m(C0783In c0783In, String str, Pair... pairArr) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15968w6)).booleanValue()) {
            AbstractC1988se.f20906a.execute(new K.a(c0783In, str, pairArr));
        }
    }

    public static final void n(byte[] bArr, String str, C1180cy c1180cy) {
        StringBuilder sb = new StringBuilder("os.arch:");
        sb.append(System.getProperty("os.arch"));
        sb.append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sb.append("supported_abis:");
                sb.append(Arrays.toString(strArr));
                sb.append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        sb.append("CPU_ABI:");
        sb.append(Build.CPU_ABI);
        sb.append(";CPU_ABI2:");
        sb.append(Build.CPU_ABI2);
        sb.append(";");
        if (bArr != null) {
            sb.append("ELF:");
            sb.append(Arrays.toString(bArr));
            sb.append(";");
        }
        if (str != null) {
            sb.append("dbg:");
            sb.append(str);
            sb.append(";");
        }
        c1180cy.d(4007, 0L, null, null, sb.toString());
    }

    public static long o(ByteBuffer byteBuffer) {
        long j8 = byteBuffer.getInt();
        return j8 < 0 ? j8 + 4294967296L : j8;
    }

    public static int p(Yv yv) {
        if (yv.f17691r) {
            return 2;
        }
        b1 b1Var = yv.f17677d;
        L l4 = b1Var.f26535Y;
        String str = b1Var.f26540d0;
        if (l4 == null && str == null) {
            return 1;
        }
        if (l4 == null || str == null) {
            return l4 != null ? 3 : 4;
        }
        return 5;
    }

    public static long q(ByteBuffer byteBuffer) {
        long jO = o(byteBuffer) << 32;
        if (jO >= 0) {
            return o(byteBuffer) + jO;
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }
}
