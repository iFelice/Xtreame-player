package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1574kf extends AbstractC1522jf {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Set f19621L = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final DecimalFormat f19622M = new DecimalFormat("#,###");

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public File f19623J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f19624K;

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final void l() {
        this.f19624K = true;
    }

    /* JADX WARN: Code duplicated, block: B:127:0x0376  */
    /* JADX WARN: Code duplicated, block: B:133:0x0388  */
    /* JADX WARN: Code duplicated, block: B:134:0x039f  */
    /* JADX WARN: Code duplicated, block: B:137:0x03bb  */
    /* JADX WARN: Instruction removed from duplicated block: B:133:0x0388, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:134:0x039f, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final boolean r(String str) {
        int i8;
        String str2;
        FileOutputStream fileOutputStream;
        String str3;
        FileOutputStream fileOutputStream2;
        boolean zDelete;
        if (this.f19623J == null) {
            m(str, null, "noCacheDir", null);
            return false;
        }
        do {
            File file = this.f19623J;
            if (file == null) {
                i8 = 0;
            } else {
                i8 = 0;
                for (File file2 : file.listFiles()) {
                    if (!file2.getName().endsWith(".done")) {
                        i8++;
                    }
                }
            }
            J7 j8 = Q7.f15899o;
            C3099q c3099q = C3099q.f26624d;
            if (i8 > ((Integer) c3099q.f26627c.a(j8)).intValue()) {
                File file3 = this.f19623J;
                if (file3 == null) {
                    break;
                }
                long j9 = Long.MAX_VALUE;
                File file4 = null;
                for (File file5 : file3.listFiles()) {
                    if (!file5.getName().endsWith(".done")) {
                        long jLastModified = file5.lastModified();
                        if (jLastModified < j9) {
                            file4 = file5;
                            j9 = jLastModified;
                        }
                    }
                }
                if (file4 == null) {
                    break;
                }
                zDelete = file4.delete();
                File fileU = u(file4);
                if (fileU.isFile()) {
                    zDelete &= fileU.delete();
                }
            } else {
                String strA = p120p3.d.a(str, "MD5");
                File file6 = this.f19623J;
                int i9 = Ly.f14592d;
                File file7 = new File(new File(file6, strA).getPath());
                File fileU2 = u(file7);
                if (file7.isFile() && fileU2.isFile()) {
                    int length = (int) file7.length();
                    p120p3.h.b("Stream cache hit at ".concat(String.valueOf(str)));
                    p120p3.d.f28202b.post(new RunnableC1368gf(this, str, file7.getAbsolutePath(), length));
                    return true;
                }
                String strValueOf = String.valueOf(this.f19623J.getAbsolutePath());
                String strValueOf2 = String.valueOf(str);
                Set set = f19621L;
                String strConcat = strValueOf.concat(strValueOf2);
                synchronized (set) {
                    try {
                        if (set.contains(strConcat)) {
                            p120p3.h.g("Stream cache already in progress at " + str);
                            m(str, file7.getAbsolutePath(), "inProgress", null);
                            return false;
                        }
                        set.add(strConcat);
                        String str4 = "error";
                        try {
                            HttpURLConnection httpURLConnectionE = Py.k().E(new J(str, 3, 0));
                            int responseCode = httpURLConnectionE.getResponseCode();
                            if (responseCode >= 400) {
                                str4 = "badUrl";
                                str2 = "HTTP request failed. Code: " + Integer.toString(responseCode);
                                try {
                                    throw new IOException("HTTP status code " + responseCode + " at " + str);
                                } catch (IOException e8) {
                                    e = e8;
                                    fileOutputStream = null;
                                    str3 = str2;
                                    if (e instanceof RuntimeException) {
                                        p083k3.l.f25980A.f25987g.i("VideoStreamFullFileCache.preload", e);
                                    }
                                    fileOutputStream.close();
                                    if (this.f19624K) {
                                        p120p3.h.f("Preload aborted for URL \"" + str + "\"");
                                    } else {
                                        p120p3.h.h("Preload failed for URL \"" + str + "\"", e);
                                    }
                                    if (file7.exists()) {
                                        p120p3.h.g("Could not delete partial cache file at ".concat(String.valueOf(file7.getAbsolutePath())));
                                    }
                                    m(str, file7.getAbsolutePath(), str4, str3);
                                    f19621L.remove(strConcat);
                                    return false;
                                } catch (RuntimeException e9) {
                                    e = e9;
                                    fileOutputStream = null;
                                    str3 = str2;
                                    if (e instanceof RuntimeException) {
                                        p083k3.l.f25980A.f25987g.i("VideoStreamFullFileCache.preload", e);
                                    }
                                    fileOutputStream.close();
                                    if (this.f19624K) {
                                        p120p3.h.f("Preload aborted for URL \"" + str + "\"");
                                    } else {
                                        p120p3.h.h("Preload failed for URL \"" + str + "\"", e);
                                    }
                                    if (file7.exists()) {
                                        p120p3.h.g("Could not delete partial cache file at ".concat(String.valueOf(file7.getAbsolutePath())));
                                    }
                                    m(str, file7.getAbsolutePath(), str4, str3);
                                    f19621L.remove(strConcat);
                                    return false;
                                }
                            }
                            int contentLength = httpURLConnectionE.getContentLength();
                            if (contentLength < 0) {
                                p120p3.h.g("Stream cache aborted, missing content-length header at " + str);
                                m(str, file7.getAbsolutePath(), "contentLengthMissing", null);
                                set.remove(strConcat);
                                return false;
                            }
                            String str5 = f19622M.format(contentLength);
                            int iIntValue = ((Integer) c3099q.f26627c.a(Q7.f15906p)).intValue();
                            if (contentLength > iIntValue) {
                                p120p3.h.g("Content length " + str5 + " exceeds limit at " + str);
                                StringBuilder sb = new StringBuilder();
                                sb.append("File too big for full file cache. Size: ");
                                sb.append(str5);
                                m(str, file7.getAbsolutePath(), "sizeExceeded", sb.toString());
                                set.remove(strConcat);
                                return false;
                            }
                            p120p3.h.b("Caching " + str5 + " bytes from " + str);
                            ReadableByteChannel readableByteChannelNewChannel = Channels.newChannel(httpURLConnectionE.getInputStream());
                            FileOutputStream fileOutputStream3 = new FileOutputStream(file7);
                            try {
                                FileChannel channel = fileOutputStream3.getChannel();
                                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1048576);
                                p083k3.l.f25980A.f25990j.getClass();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                fileOutputStream2 = fileOutputStream3;
                                try {
                                    try {
                                        p113o3.z zVar = new p113o3.z(((Long) c3099q.f26627c.a(Q7.f15961w)).longValue());
                                        long jLongValue = ((Long) c3099q.f26627c.a(Q7.f15954v)).longValue();
                                        int i10 = 0;
                                        while (true) {
                                            int i11 = readableByteChannelNewChannel.read(byteBufferAllocate);
                                            if (i11 < 0) {
                                                fileOutputStream2.close();
                                                if (p120p3.h.j(3)) {
                                                    p120p3.h.b("Preloaded " + f19622M.format(i10) + " bytes from " + str);
                                                }
                                                file7.setReadable(true, false);
                                                if (fileU2.isFile()) {
                                                    fileU2.setLastModified(System.currentTimeMillis());
                                                } else {
                                                    try {
                                                        fileU2.createNewFile();
                                                    } catch (IOException unused) {
                                                    }
                                                }
                                                p120p3.d.f28202b.post(new RunnableC1368gf(this, str, file7.getAbsolutePath(), i10));
                                                f19621L.remove(strConcat);
                                                return true;
                                            }
                                            int i12 = i10 + i11;
                                            try {
                                                if (i12 > iIntValue) {
                                                    String str6 = "File too big for full file cache. Size: " + Integer.toString(i12);
                                                    throw new IOException("stream cache file size limit exceeded");
                                                }
                                                byteBufferAllocate.flip();
                                                while (channel.write(byteBufferAllocate) > 0) {
                                                }
                                                byteBufferAllocate.clear();
                                                if (System.currentTimeMillis() - jCurrentTimeMillis > 1000 * jLongValue) {
                                                    String str7 = "Timeout exceeded. Limit: " + Long.toString(jLongValue) + " sec";
                                                    throw new IOException("stream cache time limit exceeded");
                                                }
                                                if (this.f19624K) {
                                                    throw new IOException("abort requested");
                                                }
                                                if (zVar.b()) {
                                                    p120p3.d.f28202b.post(new RunnableC1213df(this, str, file7.getAbsolutePath(), i12, contentLength));
                                                }
                                                iIntValue = iIntValue;
                                                zVar = zVar;
                                                byteBufferAllocate = byteBufferAllocate;
                                                channel = channel;
                                                i10 = i12;
                                            } catch (IOException | RuntimeException e10) {
                                                e = e10;
                                                str3 = readableByteChannelNewChannel;
                                                fileOutputStream = fileOutputStream2;
                                                if (e instanceof RuntimeException) {
                                                    p083k3.l.f25980A.f25987g.i("VideoStreamFullFileCache.preload", e);
                                                }
                                                try {
                                                    fileOutputStream.close();
                                                } catch (IOException | NullPointerException unused2) {
                                                }
                                                if (this.f19624K) {
                                                    p120p3.h.f("Preload aborted for URL \"" + str + "\"");
                                                } else {
                                                    p120p3.h.h("Preload failed for URL \"" + str + "\"", e);
                                                }
                                                if (file7.exists()) {
                                                    p120p3.h.g("Could not delete partial cache file at ".concat(String.valueOf(file7.getAbsolutePath())));
                                                }
                                                m(str, file7.getAbsolutePath(), str4, str3);
                                                f19621L.remove(strConcat);
                                                return false;
                                            }
                                        }
                                    } catch (IOException e11) {
                                        e = e11;
                                        fileOutputStream = fileOutputStream2;
                                        str3 = 0;
                                        if (e instanceof RuntimeException) {
                                            p083k3.l.f25980A.f25987g.i("VideoStreamFullFileCache.preload", e);
                                        }
                                        fileOutputStream.close();
                                        if (this.f19624K) {
                                            p120p3.h.f("Preload aborted for URL \"" + str + "\"");
                                        } else {
                                            p120p3.h.h("Preload failed for URL \"" + str + "\"", e);
                                        }
                                        if (file7.exists()) {
                                            p120p3.h.g("Could not delete partial cache file at ".concat(String.valueOf(file7.getAbsolutePath())));
                                        }
                                        m(str, file7.getAbsolutePath(), str4, str3);
                                        f19621L.remove(strConcat);
                                        return false;
                                    }
                                } catch (RuntimeException e12) {
                                    e = e12;
                                    fileOutputStream = fileOutputStream2;
                                    str3 = 0;
                                    if (e instanceof RuntimeException) {
                                        p083k3.l.f25980A.f25987g.i("VideoStreamFullFileCache.preload", e);
                                    }
                                    fileOutputStream.close();
                                    if (this.f19624K) {
                                        p120p3.h.f("Preload aborted for URL \"" + str + "\"");
                                    } else {
                                        p120p3.h.h("Preload failed for URL \"" + str + "\"", e);
                                    }
                                    if (file7.exists() && !file7.delete()) {
                                        p120p3.h.g("Could not delete partial cache file at ".concat(String.valueOf(file7.getAbsolutePath())));
                                    }
                                    m(str, file7.getAbsolutePath(), str4, str3);
                                    f19621L.remove(strConcat);
                                    return false;
                                }
                            } catch (IOException | RuntimeException e13) {
                                e = e13;
                                fileOutputStream2 = fileOutputStream3;
                            }
                        } catch (IOException | RuntimeException e14) {
                            e = e14;
                            str2 = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } while (zDelete);
        p120p3.h.g("Unable to expire stream cache");
        m(str, null, "expireFailed", null);
        return false;
    }

    public final File u(File file) {
        File file2 = this.f19623J;
        String strConcat = String.valueOf(file.getName()).concat(".done");
        int i8 = Ly.f14592d;
        return new File(new File(file2, strConcat).getPath());
    }
}
