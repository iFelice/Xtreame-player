package P3;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f5910a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f5911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f5912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Boolean f5913d;

    public static void a(Context context, Throwable th) {
        try {
            com.bumptech.glide.c.h(context);
        } catch (Exception e8) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e8);
        }
    }

    public static String b(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i8 = 0;
        for (byte b8 : bArr) {
            char[] cArr2 = f5910a;
            cArr[i8] = cArr2[(b8 & 255) >>> 4];
            cArr[i8 + 1] = cArr2[b8 & 15];
            i8 += 2;
        }
        return new String(cArr);
    }

    public static String c() throws Throwable {
        BufferedReader bufferedReader;
        if (f5911b == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                f5911b = Application.getProcessName();
            } else {
                int iMyPid = f5912c;
                if (iMyPid == 0) {
                    iMyPid = Process.myPid();
                    f5912c = iMyPid;
                }
                String strTrim = null;
                strTrim = null;
                strTrim = null;
                BufferedReader bufferedReader2 = null;
                if (iMyPid > 0) {
                    try {
                        String str = "/proc/" + iMyPid + "/cmdline";
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bufferedReader = new BufferedReader(new FileReader(str));
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            try {
                                String line = bufferedReader.readLine();
                                com.bumptech.glide.c.h(line);
                                strTrim = line.trim();
                            } catch (IOException unused) {
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader2 = bufferedReader;
                                AbstractC2987b.e(bufferedReader2);
                                throw th;
                            }
                            AbstractC2987b.e(bufferedReader);
                        } catch (Throwable th2) {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            throw th2;
                        }
                    } catch (IOException unused2) {
                        bufferedReader = null;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                f5911b = strTrim;
            }
        }
        return f5911b;
    }

    public static byte[] d(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("Hex string has odd number of characters");
        }
        byte[] bArr = new byte[length / 2];
        int i8 = 0;
        while (i8 < length) {
            int i9 = i8 + 2;
            bArr[i8 / 2] = (byte) Integer.parseInt(str.substring(i8, i9), 16);
            i8 = i9;
        }
        return bArr;
    }
}
