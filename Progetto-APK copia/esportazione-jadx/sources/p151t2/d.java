package p151t2;

import B0.C0041c;
import android.os.Build;
import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import p019c2.h;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Closeable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final File f30276G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final File f30277H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final File f30278I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final File f30279J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long f30281L;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public BufferedWriter f30284O;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f30286Q;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f30283N = 0;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final LinkedHashMap f30285P = new LinkedHashMap(0, 0.75f, true);

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public long f30287R = 0;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final ThreadPoolExecutor f30288S = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a());

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final h f30289T = new h(this, 1);

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f30280K = 1;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f30282M = 1;

    public d(File file, long j8) {
        this.f30276G = file;
        this.f30277H = new File(file, "journal");
        this.f30278I = new File(file, "journal.tmp");
        this.f30279J = new File(file, "journal.bkp");
        this.f30281L = j8;
    }

    public static void E(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void N(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void a0(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static d d0(File file, long j8) throws IOException {
        if (j8 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                i0(file2, file3, false);
            }
        }
        d dVar = new d(file, j8);
        if (dVar.f30277H.exists()) {
            try {
                dVar.f0();
                dVar.e0();
                return dVar;
            } catch (IOException e8) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e8.getMessage() + ", removing");
                dVar.close();
                g.a(dVar.f30276G);
            }
        }
        file.mkdirs();
        d dVar2 = new d(file, j8);
        dVar2.h0();
        return dVar2;
    }

    public static void i0(File file, File file2, boolean z7) throws IOException {
        if (z7) {
            N(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public static void k(d dVar, C0041c c0041c, boolean z7) {
        synchronized (dVar) {
            b bVar = (b) c0041c.f914H;
            if (bVar.f30268f != c0041c) {
                throw new IllegalStateException();
            }
            if (z7 && !bVar.f30267e) {
                for (int i8 = 0; i8 < dVar.f30282M; i8++) {
                    if (!((boolean[]) c0041c.f915I)[i8]) {
                        c0041c.c();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i8);
                    }
                    if (!bVar.f30266d[i8].exists()) {
                        c0041c.c();
                        return;
                    }
                }
            }
            for (int i9 = 0; i9 < dVar.f30282M; i9++) {
                File file = bVar.f30266d[i9];
                if (!z7) {
                    N(file);
                } else if (file.exists()) {
                    File file2 = bVar.f30265c[i9];
                    file.renameTo(file2);
                    long j8 = bVar.f30264b[i9];
                    long length = file2.length();
                    bVar.f30264b[i9] = length;
                    dVar.f30283N = (dVar.f30283N - j8) + length;
                }
            }
            dVar.f30286Q++;
            bVar.f30268f = null;
            if (bVar.f30267e || z7) {
                bVar.f30267e = true;
                dVar.f30284O.append((CharSequence) "CLEAN");
                dVar.f30284O.append(' ');
                dVar.f30284O.append((CharSequence) bVar.f30263a);
                dVar.f30284O.append((CharSequence) bVar.a());
                dVar.f30284O.append('\n');
                if (z7) {
                    long j9 = dVar.f30287R;
                    dVar.f30287R = 1 + j9;
                    bVar.f30269g = j9;
                }
            } else {
                dVar.f30285P.remove(bVar.f30263a);
                dVar.f30284O.append((CharSequence) "REMOVE");
                dVar.f30284O.append(' ');
                dVar.f30284O.append((CharSequence) bVar.f30263a);
                dVar.f30284O.append('\n');
            }
            a0(dVar.f30284O);
            if (dVar.f30283N > dVar.f30281L || dVar.c0()) {
                dVar.f30288S.submit(dVar.f30289T);
            }
        }
    }

    public final C0041c O(String str) {
        synchronized (this) {
            try {
                if (this.f30284O == null) {
                    throw new IllegalStateException("cache is closed");
                }
                b bVar = (b) this.f30285P.get(str);
                if (bVar == null) {
                    bVar = new b(this, str);
                    this.f30285P.put(str, bVar);
                } else if (bVar.f30268f != null) {
                    return null;
                }
                C0041c c0041c = new C0041c(this, bVar);
                bVar.f30268f = c0041c;
                this.f30284O.append((CharSequence) "DIRTY");
                this.f30284O.append(' ');
                this.f30284O.append((CharSequence) str);
                this.f30284O.append('\n');
                a0(this.f30284O);
                return c0041c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Serializable, long[]] */
    public final synchronized c b0(String str) {
        if (this.f30284O == null) {
            throw new IllegalStateException("cache is closed");
        }
        b bVar = (b) this.f30285P.get(str);
        if (bVar == null) {
            return null;
        }
        if (!bVar.f30267e) {
            return null;
        }
        for (File file : bVar.f30265c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f30286Q++;
        this.f30284O.append((CharSequence) "READ");
        this.f30284O.append(' ');
        this.f30284O.append((CharSequence) str);
        this.f30284O.append('\n');
        if (c0()) {
            this.f30288S.submit(this.f30289T);
        }
        long j8 = bVar.f30269g;
        File[] fileArr = bVar.f30265c;
        ?? r7 = bVar.f30264b;
        c cVar = new c();
        cVar.f30272H = this;
        cVar.f30273I = str;
        cVar.f30271G = j8;
        cVar.f30275K = fileArr;
        cVar.f30274J = r7;
        return cVar;
    }

    public final boolean c0() {
        int i8 = this.f30286Q;
        return i8 >= 2000 && i8 >= this.f30285P.size();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f30284O == null) {
                return;
            }
            Iterator it = new ArrayList(this.f30285P.values()).iterator();
            while (it.hasNext()) {
                C0041c c0041c = ((b) it.next()).f30268f;
                if (c0041c != null) {
                    c0041c.c();
                }
            }
            j0();
            E(this.f30284O);
            this.f30284O = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void e0() throws IOException {
        N(this.f30278I);
        Iterator it = this.f30285P.values().iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            C0041c c0041c = bVar.f30268f;
            int i8 = this.f30282M;
            int i9 = 0;
            if (c0041c == null) {
                while (i9 < i8) {
                    this.f30283N += bVar.f30264b[i9];
                    i9++;
                }
            } else {
                bVar.f30268f = null;
                while (i9 < i8) {
                    N(bVar.f30265c[i9]);
                    N(bVar.f30266d[i9]);
                    i9++;
                }
                it.remove();
            }
        }
    }

    public final void f0() {
        File file = this.f30277H;
        f fVar = new f(new FileInputStream(file), g.f30296a);
        try {
            String strK = fVar.k();
            String strK2 = fVar.k();
            String strK3 = fVar.k();
            String strK4 = fVar.k();
            String strK5 = fVar.k();
            if (!"libcore.io.DiskLruCache".equals(strK) || !"1".equals(strK2) || !Integer.toString(this.f30280K).equals(strK3) || !Integer.toString(this.f30282M).equals(strK4) || !HttpUrl.FRAGMENT_ENCODE_SET.equals(strK5)) {
                throw new IOException("unexpected journal header: [" + strK + ", " + strK2 + ", " + strK4 + ", " + strK5 + "]");
            }
            int i8 = 0;
            while (true) {
                try {
                    g0(fVar.k());
                    i8++;
                } catch (EOFException unused) {
                    this.f30286Q = i8 - this.f30285P.size();
                    if (fVar.f30295K == -1) {
                        h0();
                    } else {
                        this.f30284O = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), g.f30296a));
                    }
                    try {
                        fVar.close();
                        return;
                    } catch (RuntimeException e8) {
                        throw e8;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                fVar.close();
            } catch (RuntimeException e9) {
                throw e9;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final void g0(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i8 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i8);
        LinkedHashMap linkedHashMap = this.f30285P;
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i8);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i8, iIndexOf2);
        }
        b bVar = (b) linkedHashMap.get(strSubstring);
        if (bVar == null) {
            bVar = new b(this, strSubstring);
            linkedHashMap.put(strSubstring, bVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                bVar.f30268f = new C0041c(this, bVar);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        bVar.f30267e = true;
        bVar.f30268f = null;
        if (strArrSplit.length != bVar.f30270h.f30282M) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
        }
        for (int i9 = 0; i9 < strArrSplit.length; i9++) {
            try {
                bVar.f30264b[i9] = Long.parseLong(strArrSplit[i9]);
            } catch (NumberFormatException unused) {
                throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
            }
        }
    }

    public final synchronized void h0() {
        try {
            BufferedWriter bufferedWriter = this.f30284O;
            if (bufferedWriter != null) {
                E(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f30278I), g.f30296a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f30280K));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f30282M));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (b bVar : this.f30285P.values()) {
                    if (bVar.f30268f != null) {
                        bufferedWriter2.write("DIRTY " + bVar.f30263a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + bVar.f30263a + bVar.a() + '\n');
                    }
                }
                E(bufferedWriter2);
                if (this.f30277H.exists()) {
                    i0(this.f30277H, this.f30279J, true);
                }
                i0(this.f30278I, this.f30277H, false);
                this.f30279J.delete();
                this.f30284O = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f30277H, true), g.f30296a));
            } catch (Throwable th) {
                E(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void j0() {
        while (this.f30283N > this.f30281L) {
            String str = (String) ((Map.Entry) this.f30285P.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.f30284O == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    b bVar = (b) this.f30285P.get(str);
                    if (bVar != null && bVar.f30268f == null) {
                        for (int i8 = 0; i8 < this.f30282M; i8++) {
                            File file = bVar.f30265c[i8];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j8 = this.f30283N;
                            long[] jArr = bVar.f30264b;
                            this.f30283N = j8 - jArr[i8];
                            jArr[i8] = 0;
                        }
                        this.f30286Q++;
                        this.f30284O.append((CharSequence) "REMOVE");
                        this.f30284O.append(' ');
                        this.f30284O.append((CharSequence) str);
                        this.f30284O.append('\n');
                        this.f30285P.remove(str);
                        if (c0()) {
                            this.f30288S.submit(this.f30289T);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
