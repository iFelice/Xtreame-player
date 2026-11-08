package p021c4;

import Y.Y;
import com.bumptech.glide.c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import p018c1.d;
import p059h3.a;

/* JADX INFO: loaded from: classes.dex */
public final class V implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11055G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final URL f11056H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f11057I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f11058J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Map f11059K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Object f11060L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ d f11061M;

    public V(W w7, String str, URL url, byte[] bArr, Map map, U u7) {
        this.f11061M = w7;
        c.e(str);
        c.h(url);
        this.f11056H = url;
        this.f11057I = bArr;
        this.f11060L = u7;
        this.f11058J = str;
        this.f11059K = map;
    }

    public final void a(int i8, IOException iOException, byte[] bArr, Map map) {
        C0591j0 c0591j0 = ((C0597l0) ((N0) this.f11061M).f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new a(this, i8, iOException, bArr, map));
    }

    /* JADX WARN: Code duplicated, block: B:165:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:175:0x032e  */
    /* JADX WARN: Code duplicated, block: B:183:0x0178 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x0314 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x02d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x0150 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x016a  */
    /* JADX WARN: Code duplicated, block: B:90:0x0192  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v0, types: [c4.V] */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.Map] */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Throwable th;
        HttpURLConnection httpURLConnection;
        OutputStream outputStream;
        int responseCode;
        Map map;
        IOException iOException;
        OutputStream outputStream2;
        Y y7;
        C0591j0 c0591j0;
        InputStream inputStream;
        Throwable th2;
        OutputStream outputStream3;
        HttpURLConnection httpURLConnection2;
        ?? r7;
        IOException iOException2;
        OutputStream outputStream4;
        ?? r8;
        String str;
        Object obj;
        String str2;
        InputStream inputStream2;
        int i8 = this.f11055G;
        String str3 = "Content-Encoding";
        byte[] bArr = this.f11057I;
        Map map2 = this.f11059K;
        URL url = this.f11056H;
        int responseCode2 = 0;
        d dVar = this.f11061M;
        String str4 = this.f11058J;
        switch (i8) {
            case 0:
                Object obj2 = this.f11060L;
                W w7 = (W) dVar;
                C0591j0 c0591j1 = ((C0597l0) w7.f10616G).f11259P;
                C0597l0.k(c0591j1);
                c0591j1.q();
                try {
                    URLConnection uRLConnectionOpenConnection = url.openConnection();
                    if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                        throw new IOException("Failed to obtain HTTP connection");
                    }
                    httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    httpURLConnection.setDefaultUseCaches(false);
                    C0597l0 c0597l0 = (C0597l0) w7.f10616G;
                    c0597l0.getClass();
                    httpURLConnection.setConnectTimeout(60000);
                    httpURLConnection.setReadTimeout(61000);
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setDoInput(true);
                    if (map2 != null) {
                        try {
                            for (Map.Entry entry : map2.entrySet()) {
                                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                            }
                        } catch (IOException e8) {
                            iOException = e8;
                            outputStream2 = null;
                            responseCode = 0;
                            Map map3 = null;
                            if (outputStream2 != null) {
                                try {
                                    outputStream2.close();
                                } catch (IOException e9) {
                                    T t7 = ((C0597l0) w7.f10616G).f11258O;
                                    C0597l0.k(t7);
                                    t7.f11039L.c(T.t(str4), e9, "Error closing HTTP compressed POST connection output stream. appId");
                                }
                                break;
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            c0591j0 = ((C0597l0) w7.f10616G).f11259P;
                            C0597l0.k(c0591j0);
                            y7 = new Y(this.f11058J, (U) obj2, responseCode, iOException, null, map3);
                            c0591j0.x(y7);
                            return;
                        } catch (Throwable th3) {
                            th = th3;
                            outputStream = null;
                            responseCode = 0;
                            map = null;
                            th = th;
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (IOException e10) {
                                    T t8 = ((C0597l0) w7.f10616G).f11258O;
                                    C0597l0.k(t8);
                                    t8.f11039L.c(T.t(str4), e10, "Error closing HTTP compressed POST connection output stream. appId");
                                }
                                break;
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            C0591j0 c0591j2 = ((C0597l0) w7.f10616G).f11259P;
                            C0597l0.k(c0591j2);
                            c0591j2.x(new Y(this.f11058J, (U) obj2, responseCode, null, null, map));
                            throw th;
                        }
                    }
                    if (bArr != null) {
                        E1 e11 = w7.f11343H.f10658M;
                        A1.I(e11);
                        byte[] bArrR = e11.r(bArr);
                        T t9 = c0597l0.f11258O;
                        C0597l0.k(t9);
                        Q q7 = t9.f11047T;
                        int length = bArrR.length;
                        q7.b(Integer.valueOf(length), "Uploading data. size");
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
                        httpURLConnection.setFixedLengthStreamingMode(length);
                        httpURLConnection.connect();
                        OutputStream outputStream5 = httpURLConnection.getOutputStream();
                        try {
                            outputStream5.write(bArrR);
                            outputStream5.close();
                        } catch (IOException e12) {
                            iOException = e12;
                            outputStream2 = outputStream5;
                            responseCode = 0;
                            Map map4 = null;
                            if (outputStream2 != null) {
                                outputStream2.close();
                                break;
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            c0591j0 = ((C0597l0) w7.f10616G).f11259P;
                            C0597l0.k(c0591j0);
                            y7 = new Y(this.f11058J, (U) obj2, responseCode, iOException, null, map4);
                            c0591j0.x(y7);
                            return;
                        } catch (Throwable th4) {
                            th = th4;
                            outputStream = outputStream5;
                            responseCode = 0;
                            map = null;
                            httpURLConnection = httpURLConnection;
                            th = th;
                            if (outputStream != null) {
                                outputStream.close();
                                break;
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            C0591j0 c0591j3 = ((C0597l0) w7.f10616G).f11259P;
                            C0597l0.k(c0591j3);
                            c0591j3.x(new Y(this.f11058J, (U) obj2, responseCode, null, null, map));
                            throw th;
                        }
                    }
                    responseCode = httpURLConnection.getResponseCode();
                    try {
                        try {
                            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                            try {
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                inputStream = httpURLConnection.getInputStream();
                                try {
                                    byte[] bArr2 = new byte[1024];
                                    while (true) {
                                        int i9 = inputStream.read(bArr2);
                                        if (i9 <= 0) {
                                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                                            inputStream.close();
                                            httpURLConnection.disconnect();
                                            c0591j0 = ((C0597l0) w7.f10616G).f11259P;
                                            C0597l0.k(c0591j0);
                                            y7 = new Y(this.f11058J, (U) obj2, responseCode, null, byteArray, headerFields);
                                            c0591j0.x(y7);
                                            return;
                                        }
                                        byteArrayOutputStream.write(bArr2, 0, i9);
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                inputStream = null;
                            }
                        } catch (IOException e13) {
                            iOException = e13;
                            outputStream2 = null;
                            if (outputStream2 != null) {
                                outputStream2.close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            c0591j0 = ((C0597l0) w7.f10616G).f11259P;
                            C0597l0.k(c0591j0);
                            y7 = new Y(this.f11058J, (U) obj2, responseCode, iOException, null, map4);
                            break;
                        } catch (Throwable th7) {
                            th = th7;
                            httpURLConnection = httpURLConnection;
                            outputStream = null;
                            th = th;
                            if (outputStream != null) {
                                outputStream.close();
                                break;
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            C0591j0 c0591j4 = ((C0597l0) w7.f10616G).f11259P;
                            C0597l0.k(c0591j4);
                            c0591j4.x(new Y(this.f11058J, (U) obj2, responseCode, null, null, map));
                            throw th;
                        }
                    } catch (IOException e14) {
                        iOException = e14;
                        outputStream2 = null;
                        Map map5 = null;
                        if (outputStream2 != null) {
                            outputStream2.close();
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        c0591j0 = ((C0597l0) w7.f10616G).f11259P;
                        C0597l0.k(c0591j0);
                        y7 = new Y(this.f11058J, (U) obj2, responseCode, iOException, null, map5);
                        break;
                    } catch (Throwable th8) {
                        th = th8;
                        outputStream = null;
                        map = null;
                        th = th;
                        if (outputStream != null) {
                            outputStream.close();
                            break;
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        C0591j0 c0591j5 = ((C0597l0) w7.f10616G).f11259P;
                        C0597l0.k(c0591j5);
                        c0591j5.x(new Y(this.f11058J, (U) obj2, responseCode, null, null, map));
                        throw th;
                    }
                } catch (IOException e15) {
                    iOException = e15;
                    httpURLConnection = null;
                } catch (Throwable th9) {
                    th = th9;
                    httpURLConnection = null;
                    outputStream = null;
                    responseCode = 0;
                    map = null;
                }
                break;
            default:
                N0 n7 = (N0) dVar;
                C0591j0 c0591j6 = ((C0597l0) n7.f10616G).f11259P;
                C0597l0.k(c0591j6);
                c0591j6.q();
                try {
                    URLConnection uRLConnectionOpenConnection2 = url.openConnection();
                    if (!(uRLConnectionOpenConnection2 instanceof HttpURLConnection)) {
                        throw new IOException("Failed to obtain HTTP connection");
                    }
                    httpURLConnection2 = (HttpURLConnection) uRLConnectionOpenConnection2;
                    httpURLConnection2.setDefaultUseCaches(false);
                    ((C0597l0) n7.f10616G).getClass();
                    httpURLConnection2.setConnectTimeout(60000);
                    httpURLConnection2.setReadTimeout(61000);
                    httpURLConnection2.setInstanceFollowRedirects(false);
                    httpURLConnection2.setDoInput(true);
                    if (map2 != null) {
                        try {
                            try {
                                for (Map.Entry entry2 : map2.entrySet()) {
                                    httpURLConnection2.addRequestProperty((String) entry2.getKey(), (String) entry2.getValue());
                                }
                            } catch (IOException e16) {
                                e = e16;
                                str = null;
                                iOException2 = e;
                                outputStream4 = null;
                                r8 = str;
                                if (outputStream4 != null) {
                                    try {
                                        outputStream4.close();
                                    } catch (IOException e17) {
                                        T t10 = ((C0597l0) n7.f10616G).f11258O;
                                        C0597l0.k(t10);
                                        t10.f11039L.c(T.t(str4), e17, "Error closing HTTP compressed POST connection output stream. appId");
                                    }
                                    break;
                                }
                                if (httpURLConnection2 != null) {
                                    httpURLConnection2.disconnect();
                                }
                                a(responseCode2, iOException2, null, r8);
                                return;
                            }
                        } catch (Throwable th10) {
                            th = th10;
                            outputStream3 = null;
                            obj = null;
                            th2 = th;
                            r7 = obj;
                            if (outputStream3 != null) {
                                try {
                                    outputStream3.close();
                                } catch (IOException e18) {
                                    T t11 = ((C0597l0) n7.f10616G).f11258O;
                                    C0597l0.k(t11);
                                    t11.f11039L.c(T.t(str4), e18, "Error closing HTTP compressed POST connection output stream. appId");
                                }
                                break;
                            }
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            a(responseCode2, null, null, r7);
                            throw th2;
                        }
                    }
                    if (bArr != null) {
                        try {
                            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                            gZIPOutputStream.write(bArr);
                            gZIPOutputStream.close();
                            byteArrayOutputStream2.close();
                            byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
                            T t12 = ((C0597l0) ((N0) dVar).f10616G).f11258O;
                            C0597l0.k(t12);
                            Q q8 = t12.f11047T;
                            int length2 = byteArray2.length;
                            q8.b(Integer.valueOf(length2), "Uploading data. size");
                            httpURLConnection2.setDoOutput(true);
                            httpURLConnection2.addRequestProperty("Content-Encoding", "gzip");
                            httpURLConnection2.setFixedLengthStreamingMode(length2);
                            httpURLConnection2.connect();
                            outputStream3 = httpURLConnection2.getOutputStream();
                            try {
                                outputStream3.write(byteArray2);
                                outputStream3.close();
                            } catch (IOException e19) {
                                r8 = 0;
                                iOException2 = e19;
                                outputStream4 = outputStream3;
                                httpURLConnection2 = httpURLConnection2;
                                if (outputStream4 != null) {
                                    outputStream4.close();
                                    break;
                                }
                                if (httpURLConnection2 != null) {
                                    httpURLConnection2.disconnect();
                                }
                                a(responseCode2, iOException2, null, r8);
                                return;
                            } catch (Throwable th11) {
                                th = th11;
                                httpURLConnection2 = httpURLConnection2;
                                obj = null;
                                th2 = th;
                                r7 = obj;
                                if (outputStream3 != null) {
                                    outputStream3.close();
                                    break;
                                }
                                if (httpURLConnection2 != null) {
                                    httpURLConnection2.disconnect();
                                }
                                a(responseCode2, null, null, r7);
                                throw th2;
                            }
                        } catch (IOException e20) {
                            T t13 = ((C0597l0) ((N0) dVar).f10616G).f11258O;
                            C0597l0.k(t13);
                            t13.f11039L.b(e20, "Failed to gzip post request content");
                            throw e20;
                        }
                    }
                    responseCode2 = httpURLConnection2.getResponseCode();
                    try {
                        try {
                            Map<String, List<String>> headerFields2 = httpURLConnection2.getHeaderFields();
                            try {
                                ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                                inputStream2 = httpURLConnection2.getInputStream();
                                try {
                                    byte[] bArr3 = new byte[1024];
                                    while (true) {
                                        int i10 = inputStream2.read(bArr3);
                                        if (i10 <= 0) {
                                            byte[] byteArray3 = byteArrayOutputStream3.toByteArray();
                                            inputStream2.close();
                                            httpURLConnection2.disconnect();
                                            a(responseCode2, null, byteArray3, headerFields2);
                                            return;
                                        }
                                        byteArrayOutputStream3.write(bArr3, 0, i10);
                                    }
                                } catch (Throwable th12) {
                                    th = th12;
                                    if (inputStream2 != null) {
                                        inputStream2.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th13) {
                                th = th13;
                                inputStream2 = null;
                            }
                        } catch (IOException e21) {
                            e = e21;
                            str2 = str3;
                            str = str2;
                            iOException2 = e;
                            outputStream4 = null;
                            r8 = str;
                            if (outputStream4 != null) {
                                outputStream4.close();
                                break;
                            }
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            a(responseCode2, iOException2, null, r8);
                            return;
                        } catch (Throwable th14) {
                            th = th14;
                            responseCode2 = responseCode2;
                            obj = "Content-Encoding";
                            outputStream3 = null;
                            httpURLConnection2 = httpURLConnection2;
                            th2 = th;
                            r7 = obj;
                            if (outputStream3 != null) {
                                outputStream3.close();
                                break;
                            }
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            a(responseCode2, null, null, r7);
                            throw th2;
                        }
                    } catch (IOException e22) {
                        e = e22;
                        str2 = null;
                        str = str2;
                        iOException2 = e;
                        outputStream4 = null;
                        r8 = str;
                        if (outputStream4 != null) {
                            outputStream4.close();
                            break;
                        }
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        a(responseCode2, iOException2, null, r8);
                        return;
                    } catch (Throwable th15) {
                        th = th15;
                        responseCode2 = responseCode2;
                        outputStream3 = null;
                        obj = null;
                        th2 = th;
                        r7 = obj;
                        if (outputStream3 != null) {
                            outputStream3.close();
                            break;
                        }
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        a(responseCode2, null, null, r7);
                        throw th2;
                    }
                } catch (IOException e23) {
                    iOException2 = e23;
                    outputStream4 = null;
                    httpURLConnection2 = null;
                    r8 = 0;
                } catch (Throwable th16) {
                    th2 = th16;
                    outputStream3 = null;
                    httpURLConnection2 = null;
                    r7 = 0;
                }
                break;
        }
    }

    public V(N0 n7, String str, URL url, byte[] bArr, HashMap map, M0 m7) {
        this.f11061M = n7;
        c.e(str);
        this.f11056H = url;
        this.f11057I = bArr;
        this.f11060L = m7;
        this.f11058J = str;
        this.f11059K = map;
    }
}
