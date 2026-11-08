package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class V4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f16939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ExecutorService f16940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DexClassLoader f16941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public M4 f16942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f16943e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f16947i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public D4 f16950l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final HashMap f16953o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final R4 f16955q;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile p075j3.b f16944f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f16945g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Future f16946h = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile C1496j4 f16948j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Future f16949k = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f16951m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f16952n = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f16954p = false;

    public V4(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f16947i = applicationContext != null;
        context = applicationContext != null ? applicationContext : context;
        this.f16939a = context;
        this.f16953o = new HashMap();
        if (this.f16955q != null) {
            return;
        }
        this.f16955q = new R4(context, 0);
    }

    public static V4 b(Context context, boolean z7) throws Throwable {
        V4 v5 = new V4(context);
        try {
            v5.f16940b = Executors.newCachedThreadPool(new T4());
            v5.f16945g = z7;
            if (z7) {
                v5.f16946h = v5.f16940b.submit(new U4(v5, 0));
            }
            v5.f16940b.execute(new U4(v5, 1));
            try {
                J3.f fVar = J3.f.f4145b;
                Context context2 = v5.f16939a;
                fVar.getClass();
                v5.f16951m = J3.f.a(context2) > 0;
                v5.f16952n = fVar.c(v5.f16939a, J3.f.f4144a) == 0;
            } catch (Throwable unused) {
            }
            if (v5.f16952n) {
                v5.f16949k = v5.f16940b.submit(new androidx.leanback.widget.C(v5, 0, 4, 0));
            }
            char[] cArr = X4.f17380a;
            if (Looper.myLooper() == Looper.getMainLooper() && ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15790b3)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            v5.f16942d = new M4();
            try {
                try {
                    byte[] bArrDecode = Base64.decode("fY7ocyET9PuMHUXxIlKP/PpFa5xsSzhwfB8mpep5FSQ=", 2);
                    if (bArrDecode.length == 0) {
                        throw new IllegalArgumentException("Unable to decode ".concat("fY7ocyET9PuMHUXxIlKP/PpFa5xsSzhwfB8mpep5FSQ="));
                    }
                    if (bArrDecode.length != 32) {
                        throw new L4();
                    }
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArrDecode, 4, 16);
                    byte[] bArr = new byte[16];
                    byteBufferWrap.get(bArr);
                    for (int i8 = 0; i8 < 16; i8++) {
                        bArr[i8] = (byte) (bArr[i8] ^ 68);
                    }
                    v5.f16943e = bArr;
                    try {
                        try {
                            try {
                                File cacheDir = v5.f16939a.getCacheDir();
                                if (cacheDir == null && (cacheDir = v5.f16939a.getDir("dex", 0)) == null) {
                                    throw new Q4();
                                }
                                File file = new File(String.format("%s/%s.jar", cacheDir, "1722538982321"));
                                if (!file.exists()) {
                                    M4 m7 = v5.f16942d;
                                    byte[] bArr2 = v5.f16943e;
                                    m7.getClass();
                                    byte[] bArrB = M4.b(bArr2, "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");
                                    file.createNewFile();
                                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                                    if (Build.VERSION.SDK_INT >= 33) {
                                        file.setReadOnly();
                                    }
                                    fileOutputStream.write(bArrB, 0, bArrB.length);
                                    fileOutputStream.close();
                                }
                                v5.f(cacheDir);
                                try {
                                    try {
                                        v5.f16941c = new DexClassLoader(file.getAbsolutePath(), cacheDir.getAbsolutePath(), null, v5.f16939a.getClassLoader());
                                        g(file);
                                        v5.e(cacheDir);
                                        g(new File(String.format("%s/%s.dex", cacheDir, "1722538982321")));
                                        v5.f16950l = new D4(v5);
                                        v5.f16954p = true;
                                    } catch (SecurityException e8) {
                                        throw new Q4(e8);
                                    }
                                } catch (Throwable th) {
                                    g(file);
                                    v5.e(cacheDir);
                                    g(new File(String.format("%s/%s.dex", cacheDir, "1722538982321")));
                                    throw th;
                                }
                            } catch (L4 e9) {
                                throw new Q4(e9);
                            } catch (FileNotFoundException e10) {
                                throw new Q4(e10);
                            }
                        } catch (NullPointerException e11) {
                            throw new Q4(e11);
                        }
                    } catch (IOException e12) {
                        throw new Q4(e12);
                    }
                    return v5;
                } catch (IllegalArgumentException e13) {
                    throw new L4(e13);
                }
            } catch (L4 e14) {
                throw new Q4(e14);
            }
        } catch (Q4 unused2) {
        }
    }

    public static final void g(File file) {
        if (file.exists()) {
            file.delete();
            return;
        }
        Log.d("V4", "File " + file.getAbsolutePath() + " not found. No need for deletion");
    }

    public final int a() {
        if (this.f16950l == null) {
            return Integer.MIN_VALUE;
        }
        ConditionVariable conditionVariable = D4.f12773c;
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException unused) {
            if (D4.f12775e == null) {
                synchronized (D4.class) {
                    try {
                        if (D4.f12775e == null) {
                            D4.f12775e = new Random();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return D4.f12775e.nextInt();
        }
    }

    public final Method c(String str, String str2) {
        C1964s5 c1964s5 = (C1964s5) this.f16953o.get(new Pair(str, str2));
        if (c1964s5 == null) {
            return null;
        }
        if (c1964s5.f20863d != null) {
            return c1964s5.f20863d;
        }
        try {
            if (c1964s5.f20865f.await(2L, TimeUnit.SECONDS)) {
                return c1964s5.f20863d;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }

    public final void d(String str, String str2, Class... clsArr) {
        Pair pair = new Pair(str, str2);
        HashMap map = this.f16953o;
        if (map.containsKey(pair)) {
            return;
        }
        map.put(pair, new C1964s5(this, str, str2, clsArr));
    }

    public final void e(File file) throws Throwable {
        Throwable th;
        FileOutputStream fileOutputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, "1722538982321"));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, "1722538982321"));
        if (file3.exists()) {
            long length = file3.length();
            if (length > 0) {
                byte[] bArr = new byte[(int) length];
                FileInputStream fileInputStream = null;
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(file3);
                    try {
                        try {
                            if (fileInputStream2.read(bArr) <= 0) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException unused) {
                                }
                                g(file3);
                                return;
                            }
                            PrintStream printStream = System.out;
                            printStream.print("test");
                            printStream.print("test");
                            printStream.print("test");
                            C1600l4 c1600l4A = C1652m4.A();
                            byte[] bytes = Build.VERSION.SDK.getBytes();
                            VG vg = XG.f17401H;
                            c1600l4A.g(XG.y(0, bytes, bytes.length));
                            byte[] bytes2 = "1722538982321".getBytes();
                            c1600l4A.h(XG.y(0, bytes2, bytes2.length));
                            M4 m7 = this.f16942d;
                            byte[] bArr2 = this.f16943e;
                            m7.getClass();
                            byte[] bytes3 = M4.a(bArr2, bArr).getBytes();
                            c1600l4A.e(XG.y(0, bytes3, bytes3.length));
                            byte[] bArrC = AbstractC2223x4.c(bytes3);
                            c1600l4A.f(XG.y(0, bArrC, bArrC.length));
                            file2.createNewFile();
                            fileOutputStream = new FileOutputStream(file2);
                            try {
                                byte[] bArrD = ((C1652m4) c1600l4A.b()).d();
                                fileOutputStream.write(bArrD, 0, bArrD.length);
                                fileOutputStream.close();
                                try {
                                    fileInputStream2.close();
                                } catch (IOException unused2) {
                                }
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused3) {
                                }
                                g(file3);
                                return;
                            } catch (L4 | IOException | NoSuchAlgorithmException unused4) {
                                fileInputStream = fileInputStream2;
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException unused5) {
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException unused6) {
                                    }
                                }
                                g(file3);
                                return;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (L4 | IOException | NoSuchAlgorithmException unused7) {
                            fileOutputStream = null;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                    }
                    fileInputStream = fileInputStream2;
                } catch (L4 | IOException | NoSuchAlgorithmException unused8) {
                    fileOutputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                }
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused9) {
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused10) {
                    }
                }
                g(file3);
                throw th;
            }
        }
    }

    public final void f(File file) throws Throwable {
        FileOutputStream fileOutputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, "1722538982321"));
        if (!file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, "1722538982321"));
        if (file3.exists()) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            long length = file2.length();
            if (length <= 0) {
                g(file2);
                return;
            }
            byte[] bArr = new byte[(int) length];
            FileInputStream fileInputStream2 = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream2.read(bArr) <= 0) {
                        Log.d("V4", "Cannot read the cache data.");
                        g(file2);
                        try {
                            fileInputStream2.close();
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    try {
                        try {
                            C1509jH c1509jH = C1509jH.f19448b;
                            UH uh = UH.f16822c;
                            C1652m4 c1652m4B = C1652m4.B(bArr, C1509jH.f19449c);
                            if ("1722538982321".equals(new String(c1652m4B.F().b())) && Arrays.equals(c1652m4B.D().b(), AbstractC2223x4.c(c1652m4B.C().b())) && Arrays.equals(c1652m4B.E().b(), Build.VERSION.SDK.getBytes())) {
                                M4 m7 = this.f16942d;
                                byte[] bArr2 = this.f16943e;
                                String str = new String(c1652m4B.C().b());
                                m7.getClass();
                                byte[] bArrB = M4.b(bArr2, str);
                                file3.createNewFile();
                                fileOutputStream = new FileOutputStream(file3);
                                try {
                                    fileOutputStream.write(bArrB, 0, bArrB.length);
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException unused2) {
                                    }
                                    try {
                                        fileOutputStream.close();
                                        return;
                                    } catch (IOException unused3) {
                                        return;
                                    }
                                } catch (L4 | IOException | NoSuchAlgorithmException unused4) {
                                    fileInputStream = fileInputStream2;
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException unused5) {
                                        }
                                    }
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                            return;
                                        } catch (IOException unused6) {
                                            return;
                                        }
                                    }
                                    return;
                                } catch (Throwable th) {
                                    th = th;
                                    fileInputStream = fileInputStream2;
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException unused7) {
                                        }
                                    }
                                    if (fileOutputStream == null) {
                                        throw th;
                                    }
                                    try {
                                        fileOutputStream.close();
                                        throw th;
                                    } catch (IOException unused8) {
                                        throw th;
                                    }
                                }
                            }
                            g(file2);
                            try {
                                fileInputStream2.close();
                            } catch (IOException unused9) {
                            }
                        } catch (NullPointerException unused10) {
                            fileInputStream2.close();
                        }
                    } catch (IOException unused11) {
                    }
                } catch (L4 | IOException | NoSuchAlgorithmException unused12) {
                    fileOutputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (L4 | IOException | NoSuchAlgorithmException unused13) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }
}
