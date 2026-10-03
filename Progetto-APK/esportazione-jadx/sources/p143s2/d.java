package p143s2;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.protobuf.U2;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import p096m2.c;
import p135r2.b;
import p135r2.r;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f30079c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f30077a = new LinkedHashMap(16, 0.75f, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f30078b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f30080d = 5242880;

    public d(c cVar) {
        this.f30079c = cVar;
    }

    public static String c(String str) {
        int length = str.length() / 2;
        StringBuilder sbO = U2.o(String.valueOf(str.substring(0, length).hashCode()));
        sbO.append(String.valueOf(str.substring(length).hashCode()));
        return sbO.toString();
    }

    public static int h(InputStream inputStream) throws IOException {
        int i8 = inputStream.read();
        if (i8 != -1) {
            return i8;
        }
        throw new EOFException();
    }

    public static int i(InputStream inputStream) {
        return (h(inputStream) << 24) | h(inputStream) | (h(inputStream) << 8) | (h(inputStream) << 16);
    }

    public static long j(InputStream inputStream) {
        return (((long) h(inputStream)) & 255) | ((((long) h(inputStream)) & 255) << 8) | ((((long) h(inputStream)) & 255) << 16) | ((((long) h(inputStream)) & 255) << 24) | ((((long) h(inputStream)) & 255) << 32) | ((((long) h(inputStream)) & 255) << 40) | ((((long) h(inputStream)) & 255) << 48) | ((255 & ((long) h(inputStream))) << 56);
    }

    public static String k(c cVar) {
        return new String(m(cVar, j(cVar)), "UTF-8");
    }

    public static byte[] m(c cVar, long j8) throws IOException {
        long j9 = cVar.f30075G - cVar.f30076H;
        if (j8 >= 0 && j8 <= j9) {
            int i8 = (int) j8;
            if (i8 == j8) {
                byte[] bArr = new byte[i8];
                new DataInputStream(cVar).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sbD = a.d("streamToBytes length=", j8, ", maxLength=");
        sbD.append(j9);
        throw new IOException(sbD.toString());
    }

    public static void n(BufferedOutputStream bufferedOutputStream, int i8) throws IOException {
        bufferedOutputStream.write(i8 & 255);
        bufferedOutputStream.write((i8 >> 8) & 255);
        bufferedOutputStream.write((i8 >> 16) & 255);
        bufferedOutputStream.write((i8 >> 24) & 255);
    }

    public static void o(BufferedOutputStream bufferedOutputStream, long j8) throws IOException {
        bufferedOutputStream.write((byte) j8);
        bufferedOutputStream.write((byte) (j8 >>> 8));
        bufferedOutputStream.write((byte) (j8 >>> 16));
        bufferedOutputStream.write((byte) (j8 >>> 24));
        bufferedOutputStream.write((byte) (j8 >>> 32));
        bufferedOutputStream.write((byte) (j8 >>> 40));
        bufferedOutputStream.write((byte) (j8 >>> 48));
        bufferedOutputStream.write((byte) (j8 >>> 56));
    }

    public static void p(BufferedOutputStream bufferedOutputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        o(bufferedOutputStream, bytes.length);
        bufferedOutputStream.write(bytes, 0, bytes.length);
    }

    public final synchronized b a(String str) {
        b bVar = (b) this.f30077a.get(str);
        if (bVar == null) {
            return null;
        }
        File fileB = b(str);
        try {
            c cVar = new c(new BufferedInputStream(new FileInputStream(fileB)), fileB.length());
            try {
                b bVarA = b.a(cVar);
                if (TextUtils.equals(str, bVarA.f30068b)) {
                    b bVarB = bVar.b(m(cVar, cVar.f30075G - cVar.f30076H));
                    cVar.close();
                    return bVarB;
                }
                r.b("%s: key=%s, found=%s", fileB.getAbsolutePath(), str, bVarA.f30068b);
                b bVar2 = (b) this.f30077a.remove(str);
                if (bVar2 != null) {
                    this.f30078b -= bVar2.f30067a;
                }
                cVar.close();
                return null;
            } catch (Throwable th) {
                cVar.close();
                throw th;
            }
        } catch (IOException e8) {
            r.b("%s: %s", fileB.getAbsolutePath(), e8.toString());
            l(str);
            return null;
        }
    }

    public final File b(String str) {
        return new File(this.f30079c.g(), c(str));
    }

    public final synchronized void d() {
        File fileG = this.f30079c.g();
        if (!fileG.exists()) {
            if (!fileG.mkdirs()) {
                r.c("Unable to create cache dir %s", fileG.getAbsolutePath());
            }
            return;
        }
        File[] fileArrListFiles = fileG.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            try {
                long length = file.length();
                c cVar = new c(new BufferedInputStream(new FileInputStream(file)), length);
                try {
                    b bVarA = b.a(cVar);
                    bVarA.f30067a = length;
                    g(bVarA.f30068b, bVarA);
                    cVar.close();
                } catch (Throwable th) {
                    cVar.close();
                    throw th;
                }
            } catch (IOException unused) {
                file.delete();
            }
        }
    }

    public final void e() {
        long j8 = this.f30078b;
        int i8 = this.f30080d;
        if (j8 < i8) {
            return;
        }
        if (r.f29844a) {
            r.d("Pruning old cache entries.", new Object[0]);
        }
        long j9 = this.f30078b;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Iterator it = this.f30077a.entrySet().iterator();
        int i9 = 0;
        while (it.hasNext()) {
            b bVar = (b) ((Map.Entry) it.next()).getValue();
            if (b(bVar.f30068b).delete()) {
                this.f30078b -= bVar.f30067a;
            } else {
                String str = bVar.f30068b;
                r.b("Could not delete cache entry for key=%s, filename=%s", str, c(str));
            }
            it.remove();
            i9++;
            if (this.f30078b < i8 * 0.9f) {
                break;
            }
        }
        if (r.f29844a) {
            r.d("pruned %d files, %d bytes, %d ms", Integer.valueOf(i9), Long.valueOf(this.f30078b - j9), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
        }
    }

    public final synchronized void f(String str, b bVar) {
        long j8 = this.f30078b;
        byte[] bArr = bVar.f29781a;
        long length = j8 + ((long) bArr.length);
        int i8 = this.f30080d;
        if (length > i8 && bArr.length > i8 * 0.9f) {
            return;
        }
        File fileB = b(str);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileB));
            b bVar2 = new b(str, bVar);
            if (!bVar2.c(bufferedOutputStream)) {
                bufferedOutputStream.close();
                r.b("Failed to write header for %s", fileB.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(bVar.f29781a);
            bufferedOutputStream.close();
            bVar2.f30067a = fileB.length();
            g(str, bVar2);
            e();
        } catch (IOException unused) {
            if (!fileB.delete()) {
                r.b("Could not clean up file %s", fileB.getAbsolutePath());
            }
            if (!this.f30079c.g().exists()) {
                r.b("Re-initializing cache after external clearing.", new Object[0]);
                this.f30077a.clear();
                this.f30078b = 0L;
                d();
            }
        }
    }

    public final void g(String str, b bVar) {
        LinkedHashMap linkedHashMap = this.f30077a;
        if (linkedHashMap.containsKey(str)) {
            this.f30078b = (bVar.f30067a - ((b) linkedHashMap.get(str)).f30067a) + this.f30078b;
        } else {
            this.f30078b += bVar.f30067a;
        }
        linkedHashMap.put(str, bVar);
    }

    public final synchronized void l(String str) {
        boolean zDelete = b(str).delete();
        b bVar = (b) this.f30077a.remove(str);
        if (bVar != null) {
            this.f30078b -= bVar.f30067a;
        }
        if (!zDelete) {
            r.b("Could not delete cache entry for key=%s, filename=%s", str, c(str));
        }
    }
}
