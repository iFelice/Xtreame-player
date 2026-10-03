package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zzol {
    public static boolean zza(int i8) {
        int i9 = i8 - 1;
        return i9 == 2 || i9 == 4 || i9 == 5 || i9 == 6 || i9 == 7;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00da  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:76:0x0123 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x0125 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x0127 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x0129 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x012b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x012d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0130  */
    /* JADX WARN: Code duplicated, block: B:83:0x0133  */
    /* JADX WARN: Code duplicated, block: B:84:0x0136  */
    /* JADX WARN: Code duplicated, block: B:85:0x0139  */
    /* JADX WARN: Code duplicated, block: B:86:0x013c  */
    /* JADX WARN: Code duplicated, block: B:87:0x013f  */
    public static final int zzb(Context context, zznt zzntVar) {
        int i8;
        String str;
        String strZzc;
        File file = new File(new File(context.getApplicationInfo().dataDir), "lib");
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles(new zzta(Pattern.compile(".*\\.so$", 2)));
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                zzntVar.zzb(5017, "No .so");
            } else {
                try {
                    FileInputStream fileInputStream = new FileInputStream(fileArrListFiles[0]);
                    try {
                        byte[] bArr = new byte[20];
                        if (fileInputStream.read(bArr) == 20) {
                            byte[] bArr2 = {0, 0};
                            if (bArr[5] == 2) {
                                zzd(bArr, null, context, zzntVar);
                            } else {
                                bArr2[0] = bArr[19];
                                bArr2[1] = bArr[18];
                                short s7 = ByteBuffer.wrap(bArr2).getShort();
                                if (s7 == 3) {
                                    fileInputStream.close();
                                    i8 = 5;
                                } else if (s7 == 40) {
                                    fileInputStream.close();
                                    i8 = 3;
                                } else if (s7 == 62) {
                                    fileInputStream.close();
                                    i8 = 7;
                                } else if (s7 == 183) {
                                    fileInputStream.close();
                                    i8 = 6;
                                } else if (s7 != 243) {
                                    zzd(bArr, null, context, zzntVar);
                                } else {
                                    fileInputStream.close();
                                    i8 = 8;
                                }
                            }
                        }
                        fileInputStream.close();
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException e8) {
                    zzd(null, e8.toString(), context, zzntVar);
                }
                i8 = 1;
            }
            if (i8 == 1000) {
                strZzc = zzc(context, zzntVar);
                if (TextUtils.isEmpty(strZzc)) {
                    zzd(null, "Empty dev arch", context, zzntVar);
                } else if (!strZzc.equalsIgnoreCase("i686") || strZzc.equalsIgnoreCase("x86")) {
                    i8 = 5;
                } else if (strZzc.equalsIgnoreCase("x86_64")) {
                    i8 = 7;
                } else if (strZzc.equalsIgnoreCase("arm64-v8a")) {
                    i8 = 6;
                } else if (strZzc.equalsIgnoreCase("armeabi-v7a") || strZzc.equalsIgnoreCase("armv71")) {
                    i8 = 3;
                } else if (strZzc.equalsIgnoreCase("riscv64")) {
                    i8 = 8;
                } else {
                    zzd(null, strZzc, context, zzntVar);
                }
                i8 = 1;
            }
            if (i8 != 1) {
                str = "UNSUPPORTED";
            } else if (i8 != 3) {
                str = "ARM7";
            } else if (i8 != 5) {
                str = "X86";
            } else if (i8 != 6) {
                str = "ARM64";
            } else if (i8 != 7) {
                str = "X86_64";
            } else if (i8 != 8) {
                str = "null";
            } else {
                str = "RISCV64";
            }
            zzntVar.zzb(5018, str);
            return i8;
        }
        zzntVar.zzb(5017, "No lib/");
        i8 = 1000;
        if (i8 == 1000) {
            strZzc = zzc(context, zzntVar);
            if (TextUtils.isEmpty(strZzc)) {
                zzd(null, "Empty dev arch", context, zzntVar);
            } else if (strZzc.equalsIgnoreCase("i686")) {
                i8 = 5;
            } else {
                i8 = 5;
            }
            i8 = 1;
        }
        if (i8 != 1) {
            str = "UNSUPPORTED";
        } else if (i8 != 3) {
            str = "ARM7";
        } else if (i8 != 5) {
            str = "X86";
        } else if (i8 != 6) {
            str = "ARM64";
        } else if (i8 != 7) {
            str = "X86_64";
        } else if (i8 != 8) {
            str = "null";
        } else {
            str = "RISCV64";
        }
        zzntVar.zzb(5018, str);
        return i8;
    }

    private static final String zzc(Context context, zznt zzntVar) {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String strZza = zzql.OS_ARCH.zza();
        if (!TextUtils.isEmpty(strZza) && hashSet.contains(strZza)) {
            return strZza;
        }
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null && strArr.length > 0) {
                return strArr[0];
            }
        } catch (IllegalAccessException e8) {
            zzntVar.zzc(2024, 0L, e8);
        } catch (NoSuchFieldException e9) {
            zzntVar.zzc(2024, 0L, e9);
        }
        String str = Build.CPU_ABI;
        return str != null ? str : Build.CPU_ABI2;
    }

    private static final void zzd(byte[] bArr, String str, Context context, zznt zzntVar) {
        StringBuilder sb = new StringBuilder("os.arch:");
        sb.append(zzql.OS_ARCH.zza());
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
        zzntVar.zzb(4007, sb.toString());
    }
}
