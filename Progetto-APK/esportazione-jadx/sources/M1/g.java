package M1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.os.Build;
import java.io.File;
import java.io.IOException;
import p148t.m;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f4772a = new m();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f4773b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static f f4774c = null;

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? O.e.a(context, packageManager).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static f b(int i8, boolean z7, boolean z8, boolean z9) {
        f fVar = new f();
        fVar.f4768a = i8;
        fVar.f4770c = z8;
        fVar.f4769b = z7;
        fVar.f4771d = z9;
        f4774c = fVar;
        f4772a.i(fVar);
        return f4774c;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x002b  */
    /* JADX WARN: Code duplicated, block: B:21:0x002d  */
    /* JADX WARN: Code duplicated, block: B:44:0x006f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0092  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ca A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00d0  */
    public static void c(Context context, boolean z7) {
        int i8;
        boolean z8;
        int i9;
        File file;
        boolean z9;
        File file2;
        long length;
        boolean z10;
        File file3;
        e eVarA;
        e eVar;
        int i10;
        AssetFileDescriptor assetFileDescriptorOpenFd;
        if (z7 || f4774c == null) {
            synchronized (f4773b) {
                if (z7) {
                    i8 = 0;
                    assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                    if (assetFileDescriptorOpenFd.getLength() > 0) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    assetFileDescriptorOpenFd.close();
                    i9 = Build.VERSION.SDK_INT;
                    if (i9 >= 28) {
                        file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                        long length2 = file.length();
                        if (file.exists()) {
                            z9 = false;
                        } else {
                            z9 = false;
                        }
                        file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                        length = file2.length();
                        if (file2.exists()) {
                            z10 = false;
                        } else {
                            z10 = false;
                        }
                        long jA = a(context);
                        file3 = new File(context.getFilesDir(), "profileInstalled");
                        if (file3.exists()) {
                            eVarA = e.a(file3);
                        } else {
                            eVarA = null;
                        }
                        if (eVarA == null) {
                            if (!z8) {
                                i8 = 327680;
                            } else if (z9) {
                                i8 = 1;
                            } else if (z10) {
                                i8 = 2;
                            }
                        } else if (!z8) {
                            i8 = 327680;
                        } else if (z9) {
                            i8 = 1;
                        } else if (z10) {
                            i8 = 2;
                        }
                        if (z7) {
                            i8 = 2;
                        }
                        if (eVarA != null) {
                            i8 = 3;
                        }
                        eVar = new e(1, i8, jA, length);
                        if (eVarA != null) {
                            eVar.b(file3);
                        } else {
                            eVar.b(file3);
                        }
                        b(i8, z9, z10, z8);
                        return;
                    }
                    b(262144, false, false, z8);
                    return;
                }
                if (f4774c != null) {
                    return;
                }
                i8 = 0;
                try {
                    assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                    try {
                        if (assetFileDescriptorOpenFd.getLength() > 0) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        assetFileDescriptorOpenFd.close();
                        i9 = Build.VERSION.SDK_INT;
                        if (i9 >= 28 && i9 != 30) {
                            file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                            long length3 = file.length();
                            if (file.exists() || length3 <= 0) {
                                z9 = false;
                            } else {
                                z9 = true;
                            }
                            file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                            length = file2.length();
                            if (file2.exists() || length <= 0) {
                                z10 = false;
                            } else {
                                z10 = true;
                            }
                            try {
                                long jA2 = a(context);
                                file3 = new File(context.getFilesDir(), "profileInstalled");
                                if (file3.exists()) {
                                    try {
                                        eVarA = e.a(file3);
                                    } catch (IOException unused) {
                                        b(131072, z9, z10, z8);
                                        return;
                                    }
                                } else {
                                    eVarA = null;
                                }
                                if (eVarA == null && eVarA.f4766c == jA2 && (i10 = eVarA.f4765b) != 2) {
                                    i8 = i10;
                                } else if (!z8) {
                                    i8 = 327680;
                                } else if (z9) {
                                    i8 = 1;
                                } else if (z10) {
                                    i8 = 2;
                                }
                                if (z7 && z10 && i8 != 1) {
                                    i8 = 2;
                                }
                                if (eVarA != null && eVarA.f4765b == 2 && i8 == 1 && length3 < eVarA.f4767d) {
                                    i8 = 3;
                                }
                                eVar = new e(1, i8, jA2, length);
                                if (eVarA != null || !eVarA.equals(eVar)) {
                                    try {
                                        eVar.b(file3);
                                    } catch (IOException unused2) {
                                        i8 = 196608;
                                    }
                                }
                                b(i8, z9, z10, z8);
                                return;
                            } catch (PackageManager.NameNotFoundException unused3) {
                                b(65536, z9, z10, z8);
                                return;
                            }
                        }
                        b(262144, false, false, z8);
                        return;
                    } catch (Throwable th) {
                        if (assetFileDescriptorOpenFd == null) {
                            throw th;
                        }
                        try {
                            assetFileDescriptorOpenFd.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (IOException unused4) {
                    z8 = false;
                }
                throw th;
            }
        }
    }
}
