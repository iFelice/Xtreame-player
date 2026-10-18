package com.google.android.gms.internal.measurement;

import K3.C0234g;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import com.bumptech.glide.integration.okhttp3.OkHttpGlideModule;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class U1 implements p190y4.t {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Context f23010G;

    public /* synthetic */ U1(Context context) {
        this.f23010G = context;
    }

    public static OkHttpGlideModule e(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object objNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                if (objNewInstance instanceof OkHttpGlideModule) {
                    return (OkHttpGlideModule) objNewInstance;
                }
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + objNewInstance);
            } catch (IllegalAccessException e8) {
                f(cls, e8);
                throw null;
            } catch (InstantiationException e9) {
                f(cls, e9);
                throw null;
            } catch (NoSuchMethodException e10) {
                f(cls, e10);
                throw null;
            } catch (InvocationTargetException e11) {
                f(cls, e11);
                throw null;
            }
        } catch (ClassNotFoundException e12) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e12);
        }
    }

    public static void f(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, reflectiveOperationException);
    }

    public U2.j a() {
        Context context = this.f23010G;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        U2.j jVar = new U2.j();
        jVar.f6955G = W2.a.a(U2.m.f6963a);
        C0234g c0234g = new C0234g(context);
        jVar.f6956H = c0234g;
        F2.G g8 = p028d3.b.f24654a;
        F2.G g9 = p028d3.b.f24655b;
        int i8 = 0;
        jVar.f6957I = W2.a.a(new V2.g(c0234g, new V2.e(c0234g, g8, g9, i8)));
        C0234g c0234g2 = jVar.f6956H;
        int i9 = 1;
        jVar.f6958J = new V2.e(c0234g2, p012b3.e.f9842a, p012b3.e.f9843b, i9);
        p147s6.a aVarA = W2.a.a(new U2.r(g8, g9, p012b3.e.f9844c, jVar.f6958J, W2.a.a(new Z2.c(c0234g2, i9)), 2));
        jVar.f6959K = aVarA;
        Z2.c cVar = new Z2.c(g8, i8);
        C0234g c0234g3 = jVar.f6956H;
        Z2.d dVar = new Z2.d(c0234g3, aVarA, cVar, g9, 0);
        p147s6.a aVar = jVar.f6955G;
        p147s6.a aVar2 = jVar.f6957I;
        jVar.f6960L = W2.a.a(new U2.r(g8, g9, new U2.r(aVar, aVar2, dVar, aVarA, aVarA, 1), new p004a3.k(c0234g3, aVar2, aVarA, dVar, aVar, aVarA, aVarA), new Z2.d(aVar, aVarA, dVar, aVarA, 1), 0));
        return jVar;
    }

    public ApplicationInfo b(int i8, String str) {
        return this.f23010G.getPackageManager().getApplicationInfo(str, i8);
    }

    public PackageInfo c(int i8, String str) {
        return this.f23010G.getPackageManager().getPackageInfo(str, i8);
    }

    public boolean d() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return Q3.b.p(this.f23010G);
        }
        if (!U2.m.a() || (nameForUid = this.f23010G.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f23010G.getPackageManager().isInstantApp(nameForUid);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003a A[Catch: all -> 0x0026, TryCatch #3 {all -> 0x0026, blocks: (B:6:0x000b, B:8:0x000f, B:10:0x001d, B:20:0x003a, B:75:0x0163, B:15:0x0029, B:17:0x0031, B:21:0x003e, B:23:0x0044, B:25:0x004a, B:26:0x004e, B:74:0x0160, B:76:0x0167, B:77:0x016a, B:78:0x016b, B:27:0x0052, B:29:0x0056, B:30:0x0063, B:32:0x0069, B:38:0x007f, B:40:0x0085, B:41:0x008b, B:61:0x0143, B:62:0x0146, B:70:0x0157, B:69:0x0154, B:71:0x0158, B:72:0x015d, B:73:0x015e, B:33:0x006f, B:37:0x0076), top: B:88:0x000b, inners: #1 }] */
    @Override // p190y4.t
    public Object get() {
        p190y4.j nVar;
        p190y4.j nVar2;
        Object obj = X1.f23041f;
        Context contextCreateDeviceProtectedStorageContext = this.f23010G;
        p190y4.j jVar = Q1.f22984a;
        if (jVar == null) {
            synchronized (Q1.class) {
                try {
                    jVar = Q1.f22984a;
                    if (jVar == null) {
                        String str = Build.TYPE;
                        String str2 = Build.TAGS;
                        p132r.f fVar = S1.f23001a;
                        if (!str.equals("eng") && !str.equals("userdebug")) {
                            nVar2 = p190y4.a.f31418G;
                        } else if (str2.contains("dev-keys") || str2.contains("test-keys")) {
                            if (K1.a() && !contextCreateDeviceProtectedStorageContext.isDeviceProtectedStorage()) {
                                contextCreateDeviceProtectedStorageContext = contextCreateDeviceProtectedStorageContext.createDeviceProtectedStorageContext();
                            }
                            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                            try {
                                StrictMode.allowThreadDiskWrites();
                                try {
                                    File file = new File(contextCreateDeviceProtectedStorageContext.getDir("phenotype_hermetic", 0), "overrides.txt");
                                    nVar = file.exists() ? new p190y4.n(file) : p190y4.a.f31418G;
                                } catch (RuntimeException e8) {
                                    Log.e("HermeticFileOverrides", "no data dir", e8);
                                    nVar = p190y4.a.f31418G;
                                }
                                if (nVar.b()) {
                                    File file2 = (File) nVar.a();
                                    try {
                                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                                        try {
                                            p132r.m mVar = new p132r.m(0);
                                            HashMap map = new HashMap();
                                            while (true) {
                                                String line = bufferedReader.readLine();
                                                if (line == null) {
                                                    break;
                                                }
                                                String[] strArrSplit = line.split(" ", 3);
                                                if (strArrSplit.length != 3) {
                                                    Log.e("HermeticFileOverrides", "Invalid: " + line);
                                                } else {
                                                    String str3 = new String(strArrSplit[0]);
                                                    String strDecode = Uri.decode(new String(strArrSplit[1]));
                                                    String strDecode2 = (String) map.get(strArrSplit[2]);
                                                    if (strDecode2 == null) {
                                                        String str4 = new String(strArrSplit[2]);
                                                        strDecode2 = Uri.decode(str4);
                                                        if (strDecode2.length() < 1024 || strDecode2 == str4) {
                                                            map.put(str4, strDecode2);
                                                        }
                                                    }
                                                    p132r.m mVar2 = (p132r.m) mVar.get(str3);
                                                    if (mVar2 == null) {
                                                        mVar2 = new p132r.m(0);
                                                        mVar.put(str3, mVar2);
                                                    }
                                                    mVar2.put(strDecode, strDecode2);
                                                }
                                            }
                                            Log.w("HermeticFileOverrides", "Parsed " + file2.toString() + " for Android package " + contextCreateDeviceProtectedStorageContext.getPackageName());
                                            N1 n7 = new N1(mVar);
                                            bufferedReader.close();
                                            nVar2 = new p190y4.n(n7);
                                        } catch (Throwable th) {
                                            try {
                                                bufferedReader.close();
                                            } catch (Throwable th2) {
                                                th.addSuppressed(th2);
                                            }
                                            throw th;
                                        }
                                    } catch (IOException e9) {
                                        throw new RuntimeException(e9);
                                    }
                                } else {
                                    nVar2 = p190y4.a.f31418G;
                                }
                                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            } catch (Throwable th3) {
                                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                                throw th3;
                            }
                        } else {
                            nVar2 = p190y4.a.f31418G;
                        }
                        Q1.f22984a = nVar2;
                        jVar = nVar2;
                    }
                } catch (Throwable th4) {
                    throw th4;
                }
            }
        }
        return jVar;
    }
}
