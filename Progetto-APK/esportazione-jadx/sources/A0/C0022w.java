package A0;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.B3;
import com.google.android.gms.internal.ads.C1453iB;
import com.google.android.gms.internal.ads.C1859q3;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.D3;
import com.google.android.gms.internal.ads.E3;
import com.google.android.gms.internal.ads.K4;
import com.google.android.gms.internal.pal.C2851x;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.HttpUrl;
import p094m0.C3136t;

/* JADX INFO: renamed from: A0.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0022w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f221c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f222d;

    public C0022w(long j8, int i8, String str, String str2) {
        this.f219a = j8;
        this.f221c = str;
        this.f222d = str2;
        this.f220b = i8;
    }

    public static int d(InputStream inputStream) {
        return (m(inputStream) << 24) | m(inputStream) | (m(inputStream) << 8) | (m(inputStream) << 16);
    }

    public static long e(InputStream inputStream) {
        return (((long) m(inputStream)) & 255) | ((((long) m(inputStream)) & 255) << 8) | ((((long) m(inputStream)) & 255) << 16) | ((((long) m(inputStream)) & 255) << 24) | ((((long) m(inputStream)) & 255) << 32) | ((((long) m(inputStream)) & 255) << 40) | ((((long) m(inputStream)) & 255) << 48) | ((((long) m(inputStream)) & 255) << 56);
    }

    public static String g(C1453iB c1453iB) {
        return new String(l(c1453iB, e(c1453iB)), "UTF-8");
    }

    public static void i(BufferedOutputStream bufferedOutputStream, int i8) throws IOException {
        bufferedOutputStream.write(i8 & 255);
        bufferedOutputStream.write((i8 >> 8) & 255);
        bufferedOutputStream.write((i8 >> 16) & 255);
        bufferedOutputStream.write((i8 >> 24) & 255);
    }

    public static void j(BufferedOutputStream bufferedOutputStream, long j8) throws IOException {
        bufferedOutputStream.write((byte) j8);
        bufferedOutputStream.write((byte) (j8 >>> 8));
        bufferedOutputStream.write((byte) (j8 >>> 16));
        bufferedOutputStream.write((byte) (j8 >>> 24));
        bufferedOutputStream.write((byte) (j8 >>> 32));
        bufferedOutputStream.write((byte) (j8 >>> 40));
        bufferedOutputStream.write((byte) (j8 >>> 48));
        bufferedOutputStream.write((byte) (j8 >>> 56));
    }

    public static void k(BufferedOutputStream bufferedOutputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        j(bufferedOutputStream, length);
        bufferedOutputStream.write(bytes, 0, length);
    }

    public static byte[] l(C1453iB c1453iB, long j8) throws IOException {
        long j9 = c1453iB.f19272H - c1453iB.f19273I;
        if (j8 >= 0 && j8 <= j9) {
            int i8 = (int) j8;
            if (i8 == j8) {
                byte[] bArr = new byte[i8];
                new DataInputStream(c1453iB).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sbD = p148t.a.d("streamToBytes length=", j8, ", maxLength=");
        sbD.append(j9);
        throw new IOException(sbD.toString());
    }

    public static int m(InputStream inputStream) throws IOException {
        int i8 = inputStream.read();
        if (i8 != -1) {
            return i8;
        }
        throw new EOFException();
    }

    public static final String o(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    public final synchronized p135r2.b a(String str) {
        D3 d6 = (D3) ((Map) this.f221c).get(str);
        if (d6 == null) {
            return null;
        }
        File fileF = f(str);
        try {
            C1453iB c1453iB = new C1453iB(new BufferedInputStream(new FileInputStream(fileF)), fileF.length(), 1);
            try {
                D3 d3A = D3.a(c1453iB);
                if (!TextUtils.equals(str, d3A.f12766b)) {
                    B3.a("%s: key=%s, found=%s", fileF.getAbsolutePath(), str, d3A.f12766b);
                    D3 d8 = (D3) ((Map) this.f221c).remove(str);
                    if (d8 != null) {
                        this.f219a -= d8.f12765a;
                    }
                    c1453iB.close();
                    return null;
                }
                byte[] bArrL = l(c1453iB, c1453iB.f19272H - c1453iB.f19273I);
                p135r2.b bVar = new p135r2.b(1);
                bVar.f29781a = bArrL;
                bVar.f29782b = d6.f12767c;
                bVar.f29783c = d6.f12768d;
                bVar.f29784d = d6.f12769e;
                bVar.f29785e = d6.f12770f;
                bVar.f29786f = d6.f12771g;
                List<C1859q3> list = d6.f12772h;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (C1859q3 c1859q3 : list) {
                    treeMap.put(c1859q3.f20528a, c1859q3.f20529b);
                }
                bVar.f29787g = treeMap;
                bVar.f29788h = Collections.unmodifiableList(d6.f12772h);
                c1453iB.close();
                return bVar;
            } catch (Throwable th) {
                c1453iB.close();
                throw th;
            }
        } catch (IOException e8) {
            B3.a("%s: %s", fileF.getAbsolutePath(), e8.toString());
            h(str);
            return null;
        }
    }

    public final synchronized void b() {
        try {
            File fileMo6zza = ((E3) this.f222d).mo6zza();
            if (fileMo6zza.exists()) {
                File[] fileArrListFiles = fileMo6zza.listFiles();
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        try {
                            long length = file.length();
                            C1453iB c1453iB = new C1453iB(new BufferedInputStream(new FileInputStream(file)), length, 1);
                            try {
                                D3 d3A = D3.a(c1453iB);
                                d3A.f12765a = length;
                                n(d3A.f12766b, d3A);
                                c1453iB.close();
                            } catch (Throwable th) {
                                c1453iB.close();
                                throw th;
                            }
                        } catch (IOException unused) {
                            file.delete();
                        }
                    }
                }
            } else if (!fileMo6zza.mkdirs()) {
                B3.b("Unable to create cache dir %s", fileMo6zza.getAbsolutePath());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void c(String str, p135r2.b bVar) {
        try {
            long j8 = this.f219a;
            int length = bVar.f29781a.length;
            long j9 = j8 + ((long) length);
            int i8 = this.f220b;
            if (j9 <= i8 || length <= i8 * 0.9f) {
                File fileF = f(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileF));
                    D3 d6 = new D3(str, bVar);
                    try {
                        i(bufferedOutputStream, 538247942);
                        k(bufferedOutputStream, str);
                        String str2 = d6.f12767c;
                        if (str2 == null) {
                            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                        }
                        k(bufferedOutputStream, str2);
                        j(bufferedOutputStream, d6.f12768d);
                        j(bufferedOutputStream, d6.f12769e);
                        j(bufferedOutputStream, d6.f12770f);
                        j(bufferedOutputStream, d6.f12771g);
                        List<C1859q3> list = d6.f12772h;
                        if (list != null) {
                            i(bufferedOutputStream, list.size());
                            for (C1859q3 c1859q3 : list) {
                                k(bufferedOutputStream, c1859q3.f20528a);
                                k(bufferedOutputStream, c1859q3.f20529b);
                            }
                        } else {
                            i(bufferedOutputStream, 0);
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.write(bVar.f29781a);
                        bufferedOutputStream.close();
                        d6.f12765a = fileF.length();
                        n(str, d6);
                        if (this.f219a >= this.f220b) {
                            if (B3.f12095a) {
                                B3.c("Pruning old cache entries.", new Object[0]);
                            }
                            long j10 = this.f219a;
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator it = ((Map) this.f221c).entrySet().iterator();
                            int i9 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    jElapsedRealtime = jElapsedRealtime;
                                    break;
                                }
                                D3 d8 = (D3) ((Map.Entry) it.next()).getValue();
                                if (f(d8.f12766b).delete()) {
                                    this.f219a -= d8.f12765a;
                                } else {
                                    String str3 = d8.f12766b;
                                    B3.a("Could not delete cache entry for key=%s, filename=%s", str3, o(str3));
                                }
                                it.remove();
                                i9++;
                                if (this.f219a < this.f220b * 0.9f) {
                                    break;
                                } else {
                                    jElapsedRealtime = jElapsedRealtime;
                                }
                            }
                            if (B3.f12095a) {
                                B3.c("pruned %d files, %d bytes, %d ms", Integer.valueOf(i9), Long.valueOf(this.f219a - j10), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
                            }
                        }
                    } catch (IOException e8) {
                        B3.a("%s", e8.toString());
                        bufferedOutputStream.close();
                        B3.a("Failed to write header for %s", fileF.getAbsolutePath());
                        throw new IOException();
                    }
                } catch (IOException unused) {
                    if (!fileF.delete()) {
                        B3.a("Could not clean up file %s", fileF.getAbsolutePath());
                    }
                    if (!((E3) this.f222d).mo6zza().exists()) {
                        B3.a("Re-initializing cache after external clearing.", new Object[0]);
                        ((Map) this.f221c).clear();
                        this.f219a = 0L;
                        b();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final File f(String str) {
        return new File(((E3) this.f222d).mo6zza(), o(str));
    }

    public final synchronized void h(String str) {
        boolean zDelete = f(str).delete();
        D3 d6 = (D3) ((Map) this.f221c).remove(str);
        if (d6 != null) {
            this.f219a -= d6.f12765a;
        }
        if (zDelete) {
            return;
        }
        B3.a("Could not delete cache entry for key=%s, filename=%s", str, o(str));
    }

    public final void n(String str, D3 d6) {
        if (((Map) this.f221c).containsKey(str)) {
            this.f219a = (d6.f12765a - ((D3) ((Map) this.f221c).get(str)).f12765a) + this.f219a;
        } else {
            this.f219a += d6.f12765a;
        }
        ((Map) this.f221c).put(str, d6);
    }

    public C0022w(C2218x c2218x) {
        this.f221c = new LinkedHashMap(16, 0.75f, true);
        this.f219a = 0L;
        this.f222d = c2218x;
        this.f220b = 5242880;
    }

    public C0022w(File file) {
        this.f221c = new LinkedHashMap(16, 0.75f, true);
        this.f219a = 0L;
        this.f222d = new K4(11, file);
        this.f220b = 20971520;
    }

    public C0022w(C2851x c2851x) {
        c2851x.getClass();
        this.f222d = c2851x;
    }

    public C0022w(int i8, C3136t c3136t, z4.d0 d0Var) {
        this.f220b = i8;
        this.f221c = c3136t;
        this.f222d = d0Var;
        this.f219a = 0L;
    }
}
